Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413E21A3172
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 02:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782010594; cv=none; b=JuH4xYdno9Ciq56KpmpbejnfAFWURnLujHmR35W2EeLSJDA+DoLN/UdDBbF9g+wpohWRWBeLl84N1zkxDF4Ds5R3FKGpki0XA6QJv9rCL7UmDbbF/KtsBN8x7HSE82UDAg8dIFf+q4DXe66TNxQuAlsziEMbGvPCEBR7QlzeRfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782010594; c=relaxed/simple;
	bh=q9ZN+4mL6QR5X/7vCQTCQ4Di8+fPMsKdKEhOjHCiTxA=;
	h=To:Subject:From:Message-Id:Date; b=JHehgnCCCZAQ9tCHDeYgpUlk1QgxeU83eR9vB0H2SMBlk+RixzKVs59YLotxlFfp1sNWT+pQDaCnQcC9SzDyp7b1gwKr9uCoOdh10w1gXZKEmwwtFZq7ToY3DNZxf+wCoqh6WTLYVMhHBICsaWe7wMp2LUlhkfrJMgTzIxKhhkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KG18krYj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KG18krYj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7FA9C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 02:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782010593;
	bh=q9ZN+4mL6QR5X/7vCQTCQ4Di8+fPMsKdKEhOjHCiTxA=;
	h=To:Subject:From:Date:From;
	b=KG18krYj+nUiHDErjmG1w406En4WSxpPiOQ6cQScmO9p3fsqeqO9Kzg8j2p6sv56l
	 f212CUtxfUtlPF3rWiPJTSdXf8un0dKa2Gd3W/IG3jyqkoh2MJYE0QrfnoQHt2jNjM
	 bavOeKs1l2k0GOlDZ4WXOXzCXaH7QQYwpBYDNJKgxBcfKEWhUC3GpgMey2RumhtHYc
	 ZOoe5MV+VIb+MRyTDu5Xca93gBPjZhBluZZ7nDORhIMN+JuYDRv61Zwq2DgZUJJY1p
	 WPMHmpOy0m2puNTAxXZpcWdMhJ8nLE8Jq0/XL+43Cfmhjc47qJkhde1nlnZ2T4tPy/
	 AQUIYvHaTkExQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDDACD4F26
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 02:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178201059369.14336.11716388371697051081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1beb835a7b99c31fdd5574bef272a34a8efdfaa900c4b81ccdbe9c1293fc4de
Date: Sun, 21 Jun 2026 02:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782010593
