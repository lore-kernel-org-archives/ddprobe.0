Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E294C8E
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746083394; cv=none; b=iqp0EydIEb85FnP0dvqj+MB+SmkHEhsRhu/YU0GtV1PlaeTht0mPhxZTRcat2dOloI43DT1fiAtbg1iISYtDRHQjRxsyUXGud79aIlz8jyPlYVAqt3+S7iPB+5it8LSP71qaD7Et0I0CaBQNIeurnbpUE+4ZHzRKvDNacMcY4n8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746083394; c=relaxed/simple;
	bh=4fC4nOaDFQfS2w514w69o1eroRUTV3C79zYhD2W37IA=;
	h=To:Subject:From:Message-Id:Date; b=FUcnDlSS729lhjbTVwYNQSZKMDUIyAaLSvtzBX+j+PB8ooKfxCiiNgl1DVWklsR0teZ2v4UPZxdjzAbA2QfuWV7BFmeC24BYRv99BBYNf5yZGbx63PFiSFgxE/IKlcF2BPZ7A4vYse0CKzvGrZOevNH/RrZEGtLNMnw3Tc+z1BE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NItVJbCW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NItVJbCW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A333AC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746083393;
	bh=4fC4nOaDFQfS2w514w69o1eroRUTV3C79zYhD2W37IA=;
	h=To:Subject:From:Date:From;
	b=NItVJbCWxv8Xg7k+FUAXRTx7MxKsj/G/h7/HT1Op7RGdHinUvfkQT5/RSsSnw306h
	 L4Wx61mjEMaeX5dkNsxr9CJV+kWgWoOa3eJ+BGNxuziUa5vJWMB7f7jf/vdz4FleFd
	 ybCiBg8pz2ilhYEIJ97bLTxFZVQheW8u6fHlAtOwhkUL8EhbbPaMTZ1f0K48ngs5I1
	 bojQNCNMiVSQJO8tRWLaW+AOE4F/8Kg9A0H0VCN79rjq8QcQ4xQvAVMHSaMS6Ma5Q/
	 78mIlwdk7kGWtRwbDYDyI1CgOrvVXed+10imqAOKdztwsVFbd0q8Ba1gD8+lADdtGd
	 bIMQcCNcwsP/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BFAC3ABA9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174608339357.24673.5558165258784527889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d67dac6acb6197a159c2a64fea4ddb454975aeffadcc010f7b30063e2109851a
Date: Thu, 01 May 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746083393
