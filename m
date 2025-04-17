Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08640253F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744913394; cv=none; b=FyUSgzZFGM9VNIGXWDDIW3OLqDEDnyun+VZM4KlkoAK2DRYqGPFtMKxH++j3XaxZdBUJiUCF8LiVBAey6TAbUvODZtEh66e1mMSE2JOrZF4o41EbU5fa6YsW2bxd3QqrxzWzqlz5lXIYLrLc7GYsYpDj0+qYacacNz0uFe/3NWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744913394; c=relaxed/simple;
	bh=o3G2PuflyBXqAbquZ6HxGepGC7TFvC2TVP2SJvUy8Ck=;
	h=To:Subject:From:Message-Id:Date; b=DJRSISd2XdXfbOC4Daz5A3gTiMyUCgEbjHipbIsX53s+GmCxsv47hfWImXmdlFBMVD0fNvjjA32HxWc7m1EbXxEKvygWODxLrTfYBPDJ+SaZCax7KbTC6mhVn8LB9JO+bDgp7qY9bRMJQ1nTndODv2h4VpcIqoZzIMDZcd8DraA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wbs5cNMc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wbs5cNMc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC657C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744913393;
	bh=o3G2PuflyBXqAbquZ6HxGepGC7TFvC2TVP2SJvUy8Ck=;
	h=To:Subject:From:Date:From;
	b=Wbs5cNMciadWHFzbPXiNm0dxRWtwwUdmtuCs9+7ADZTvMY70eY/dl5ypFz6dTRGPh
	 ae7CSoYpj/SPfVIH5VtyXzNQLsVywwbVIXIOJJ+RVQn4Po4gS/Ochw7sdvlUYyo52a
	 /hfW2K5dsCNhA3a8Fn2Gw/1+5e0gS80vt067nD/zZPoht75V/wrSWcLeo5YFcIFYDf
	 bnCSstzGtQ6mnnHya2KIGsnlg0h00vTwxdb0LjoTsb33bHno1WhFZ4yowz3qDLZrgR
	 5ppH6LCLeUDhESIzFBpz2FjSz+L19NEEeZS6mlXcPsY/PqJwCCjCShjeVT3x3iikh7
	 KuA7ilGYsf85g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1266C369CA
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174491339364.24040.12254354529144584127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0e6ba039d9ff3bacbd86f3ad2d3d0b41b4f9b7f37c590fec3d537d95ac2ac10
Date: Thu, 17 Apr 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744913393
