Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EAFE3232
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732809954; cv=none; b=Ki7xWaGNxgUDENoTh828ImUKQPdE7n15uHFPWl29Ej2kejZLouTyxvS91tf9SnNn1rBkJeWGNJraEiG6GrRLRq6UcXyq0pRmQbp+yHw2y7TKuuFMI3eu/AHWgF7H158sQ9zCNsxT5yl66fCF9L53a9LkrzdY4NekIRMn+uhAzKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732809954; c=relaxed/simple;
	bh=kZiJDPfGMIJklGO/wkkxDPwzmJBODyDFDka3bHSX7ig=;
	h=To:Subject:From:Message-Id:Date; b=DsNuM74NFH4a4ZPO5uEmZwW/bZbCKBuwdHSQ36o95eEGwtX8CjEuowLnX9FLIoL/xjydWaAF/6CF4HGWSWgXeiCXNcHW97v9C271MY2iYaVZMhNJSOrQepk5doGMqiFTfM5OTtqT+zUhAUEyJXXi/JpqwJK3ERkRJwlXlA18JJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnWewIuj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnWewIuj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A052FC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732809953;
	bh=kZiJDPfGMIJklGO/wkkxDPwzmJBODyDFDka3bHSX7ig=;
	h=To:Subject:From:Date:From;
	b=mnWewIujUhkzeDl+wXdUvhDWyKPVENGGR/SHun3j4AfstkXthOrcXZrrKMdqHGSbi
	 dgVCK1FSaByHL9S37fbh8ggXLC8OC6/rUtmS8keJT6tK53dytNGR74SpUpb+3Sv+DL
	 pMD7/c8NXSe1iYheJtwDySzR9OwbDESwENId1WFJD7fwWG5fo8E0nmn2E66jmrWxoK
	 X4Sy2hOo5nDPJ3lh9urTdq1xjnFW/10CRE2O89T/0+Au2w5SCZXJJeh6GixJx8u5Xd
	 td/xeWcbayvIHZICEmAPY9IrixijJRcjK7EPN3l8x4zci+uS8uUVyNwAWqA8Mak2Du
	 U/ttWKyuVP3sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980EAD70DE2
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173280995361.12569.15108157123013135184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceb02806c93f4a1a5e3b77925548a4bd18c6399335c547a67715b6e77527fa3d
Date: Thu, 28 Nov 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732809953
