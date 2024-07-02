Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D2F1BD03C
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 16:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719936923; cv=none; b=h+m2QUt2JfLvdQwUMQgUKVoQlhzkiflTkDlom+QQqRQakGGGqWuf1GOK1L57xE8NhfM77MFAHWJfu6QG0e1Bkz+UzksEbYPoHbMlTQnSk5YVxSmlxCRqi0g47JyaNJb65CPs7B+1+3QrybYvyOyJkQeUJJRDAmgVIfAvHn5UPyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719936923; c=relaxed/simple;
	bh=itT2jpU+VjyMN8nF84qFGB2Vm3ndFxaiHeN5kiFGDhs=;
	h=To:Subject:From:Message-Id:Date; b=FrIuVH6aALdk/yp5AQsOw5colsgrTDbfOVcSUox0TJcxkLF0QnyTucHkYltG+I34mwLt4McU6TtT4DjI5biAkjNoAcH0+ptVjWGPZ+hjISSqrPVAJ3fOspSQddjTi7IxMd0HVvxgUp4G7l79xsK76ihZKOm4cdeoofVUxh9w6zI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=op9v1YVl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="op9v1YVl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5467C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 16:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719936922;
	bh=itT2jpU+VjyMN8nF84qFGB2Vm3ndFxaiHeN5kiFGDhs=;
	h=To:Subject:From:Date:From;
	b=op9v1YVlMiLk0gY5iPDUgw/a5wx9WL/CMtKnkT5HB88MvDasJ2OfTyd9nuNu0tKc5
	 3Bfjxp3j1gT40c2mRJ5kFz4Wu/O0mJnshJp0Gn7Z7VSO2bpUDIbbIPjcjMFMN57id6
	 EUGZj87IX/u1oPJSL4DiQY7Hl8Kyl4ScinlkFESGKIeVU7/bRyBqVyg4axpaHP+Uge
	 +rgZybwAHgTOkg9RNybswkwETCoN98agrP4B/+Cr4f8FIeThB4UNT13Zcq7Q99WwEm
	 6ICisz2twELiK9utoaO0Rj6JcFLB3wmIFjqq32BZhChTEqXiqNdjCVPa2DUMqYoLiy
	 wNbPzAh81FsoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2338C3065C
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 16:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171993692284.24110.16772871591927672852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7efa24acdd4bfd49c312f88d977df82954cf5cf9fa054e5b93af3c2e2be2120d
Date: Tue, 02 Jul 2024 16:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719936922
