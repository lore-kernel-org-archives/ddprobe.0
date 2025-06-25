Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B2E25A330
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750850394; cv=none; b=TT+VgAezaWDFR4zt0093xE/5vGcrlvPb7L64Cq9HvqTbaSGkHNxFXq2IlL1p0D9icd5U3uSE099s09JpKeMPNhZ4okKUI83LoJ0T+wkjXlgpAifJUCsbtQrwfooruLptgo8nq84WKDSlVv2GZJ5S1KCYXO5elUHRnmFEm8cwESY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750850394; c=relaxed/simple;
	bh=e9kR2DWSn6sfQ3i4w51DriBlGAKbh9KtWr7JY09xL74=;
	h=To:Subject:From:Message-Id:Date; b=GcS1AX7XD+G+oflzHej9LJgxip7dZ+Xs14KiocAp8HSaiL6CvsCloURAA9OnYFBeaXvj5bo4QYBW2l8BAy9HdWxxkY/BGOvP0JnS18Glbm+HxK4RqmlNH39LlW0a3H0T+WKUzYl5cnm4/H/onO725Ec653DDjaFELSMXEH5BnTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DOrqaXzt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DOrqaXzt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71B2C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750850393;
	bh=e9kR2DWSn6sfQ3i4w51DriBlGAKbh9KtWr7JY09xL74=;
	h=To:Subject:From:Date:From;
	b=DOrqaXztZQpZLg9yoc17JNpqBnUGiRzAZ5azacGWWud/JsX1e+qgV3YG6weIRmTMq
	 pSodppYVjLdWtlAVLcRBNtUikIXVsbs5remDYCxV0xU4cBv6TxL2zDXkyA5z1GFLMx
	 4zXfdwxsGRYtd33Yd+ZHw72jLTJX/lRo7IKvIgS7uR5lBo0LZo2F/S+9y3j1OIQSux
	 3cWtj+dHipZVJklfVz5RWHdnWJ22hOed6LIpWQkOF0TuNzDa9UON50YV3oXpLZtjVq
	 1jvkYkVmkZmi2DXVxdPkYAzML1YYYn0gL31UEO0V5oY3LacyiVYAmLTr7kBt5qlxUe
	 zf8V6WxmyxpOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A49C7115C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175085039357.23635.18100614911172988052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46cfc6788f4caa1d7162c641c2a9c64f8da55d1b340a55a4ec02547080c64d89
Date: Wed, 25 Jun 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750850393
