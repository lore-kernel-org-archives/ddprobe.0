Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F3FF38C
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734930354; cv=none; b=bI7/5YKwETFRb3tznvVjulGMZRinMxPj629tFRkT0L3ZYVk3KPFJOLNZtodxWfPPk92XS1NGH9zwV2q9qbUmGZmjphgzx8JwdJMaWE1JERl0Suy88mVQWH8e9cve9YI47M4LCTmCdVLEwypzzmztj8R8VNWYf/8J548Ke75dKLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734930354; c=relaxed/simple;
	bh=DyoaTTEuxHw2yxFAJq8+UacoKlmR4ktflAgm+fMBVzw=;
	h=To:Subject:From:Message-Id:Date; b=Psi7/55Uy/HP99+LLC/hiHWDOtrDODlyLGMD7Ghb2fVjLAb524mjeoMQ0zFmWyP1heY6NLJwS6AacPy/aJMZxGRJ0xAk7NnhZEW/x/uw0TtQefeZqhO2/+TND6DoMjpvhiJClR3KmyOmupjQ/IBmlGRY+FN04NfEjiwZCMjSdUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSFviy+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSFviy+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCC8C4CED4
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734930353;
	bh=DyoaTTEuxHw2yxFAJq8+UacoKlmR4ktflAgm+fMBVzw=;
	h=To:Subject:From:Date:From;
	b=uSFviy+m42pZxEGjWgX6QZpWIOtOU7up8iUs7RxqO7gkkKvQBjtw6YecqyWTvbcyV
	 JmwZMyGvX1EoIXxJEuw03vSHmKiX+X72dv5yCoz55gYtM6oeAWr6jezmGbMt4DUX4i
	 4q48QxfEkSYWS4MaVJmF+cYOdEPUZ8TZ6DOwKTzb/Qq9Um18hg0+6WBr44M+AxmbJZ
	 eMRk9lHLKGBE9Gmz5ciiQSKg6DMwTNEjzhom0X7a03stvOypQ7FdXLWFjcc0bYctLo
	 w+7NnFFWlI5DKeupIpsfLnOtS//v4kaiAKQA3uvNpGUYX3n88AIaVg0kNqrFHvmdCz
	 CtEyBmIAn1oyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24A1E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173493035367.19729.1671539996537219524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2cf6bf443b682a48c80c4b12208886e41ffb2eb7f745b9b607b7de31c97807d
Date: Mon, 23 Dec 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734930353
