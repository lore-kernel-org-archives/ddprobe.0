Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FB71FECCA
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733949354; cv=none; b=NnXICMTLa4HrnYCd7bo5n1rUo8UV8V6+kaH8CFQ+yOqUdcUZpRNfyiXsmX1oJGs7gOjkpgpUgaDOVSiAljvBl2F9DaZwS3w5UY9W/CtnMmuvrGgZhTm794vPErnoMNwDrO+IwWhtdPMXvOVbo+5NaJjd6Wp2+b/JSeQyZZ7bD04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733949354; c=relaxed/simple;
	bh=rncBG5gUX+Ukw0YaKBCiJqI4HB4uEYsRXd2e1pzSm5k=;
	h=To:Subject:From:Message-Id:Date; b=dwluF5xN2bAxQjps9Amo5IHMoMAtQt8KxgTJR1mrxoxV/TFKCnjkvk4wwqNZy9NkFV43YxbDfG3MJSXVericFhXnQYBfFH7f50O+CjG4yJ1Xc53Uto0JXNWW1VObXwyAdrq+9r1CyHxsmYJh7EWgvAG1oeqtk1UskmdOiGO52vA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A70zZ33y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A70zZ33y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3780C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733949353;
	bh=rncBG5gUX+Ukw0YaKBCiJqI4HB4uEYsRXd2e1pzSm5k=;
	h=To:Subject:From:Date:From;
	b=A70zZ33ysDWYGo1Rv9dgxj1ACgIkqYC/fhF60qmTkcOpkRpXjHoROE/YtiIv0BsRd
	 WtrqDLgDlzOC3q3RnIuMvbKntwiO6VD2Z2d88c9TKSFQSIOI1g2YkrVZZ3OCI4L8Qw
	 4zrraQicWqNPvMWZa9BLx/ss1WwPJbz6tM6Nl4ZFyeYd5BGI04KDhmr/8xPw+9lcrj
	 mO8PO4HWTONRrvTZGDGMKRlBg+jkg612FqPPmfBXWhvDSXzdBftkFzvSnwl1fLxtRO
	 lKWtj09Nr2sVPE0IvTCWHQRsF1AltD97VsbRLEe09VRqje7SVWL5vV4qns1HImvM2s
	 +uZ6qn6c/+P6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A99DE7717D
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173394935361.13486.5018096220663948367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff51f7fa395af8dfdcaef45e1cf4844e33f67aae460126deb22d9a3705e2a833
Date: Wed, 11 Dec 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733949353
