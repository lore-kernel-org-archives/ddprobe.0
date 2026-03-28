Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410F7386578
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774693494; cv=none; b=m9Z8SQyJn9Cc3RdN9GwLrekgUxW0QNUE3JAVrZuPzZ3oMHtsFwZWiI7ooUA2f4yRjIi8yYIYogXe0tqoYt226sqr/+RK3hLI+zZzpG3BK/kAJBOPgawxMIoyNrtiCzDIM6U9BmvpzeW1lw8oZlDNrh4QS/6yuERKlTov2JF3T+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774693494; c=relaxed/simple;
	bh=yfXd9uoSFBfvsWxVDfqHOjTlehCrv+xVH4cImnRggpc=;
	h=To:Subject:From:Message-Id:Date; b=uSRzSC4OE0vA+m8QV1MDDwlFJ5cf0XBR8/8ScX9b6C1psw4olCyIcf3mU22gdB6FRWYbyJDoFd/RhVr6Qj6VepM3hH8sGoP6fP8PyMsxSFgj81pBhMKh6dIGvbSHDx1P8TKVG2xRfbWHM9KzCP9hDzVEazYHrVTV1MsQkDvt6Rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JEDbcPbv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JEDbcPbv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED7CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774693493;
	bh=yfXd9uoSFBfvsWxVDfqHOjTlehCrv+xVH4cImnRggpc=;
	h=To:Subject:From:Date:From;
	b=JEDbcPbvBZRWZ84aSfG7I7ec55nGr5WYkN53qImc3IxWJFlnJKpjofR4nYuIeSshp
	 FjR7HT1XJSqjbdXQ0hvYeCR7rC2PCbqJb+mB6HwYpbJu8d1OIQxPtUt23s/eQsEiLh
	 mmDC1PxJzLqDV5NC5Wn7UzdfKGBvQTOdDw3lI410Krmy9+qTQdM6k/gq5fZ4ntBTM0
	 1l4I4Zsv6HcFSrVfr2X/GqEHB0nAJFHaGXLcsZZWXOr8hkjctEqAhXY6pQggm48DaW
	 Qe5zQ4Yst7JjHiuBw7Pod2RNDaQfXs/JNAeV5ffiGgp5yk8qC+dc2qudM8KRcid6O3
	 opEijbVCMYYBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C8410F3DD9
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177469349359.14059.7585286221639099886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daf92265d68a2392345262941ed66352df3d0a8a1194f914e4a574b5ac009dcb
Date: Sat, 28 Mar 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774693493
