Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 601531F16B
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 02:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717122863; cv=none; b=Tne9EEginCsovKWBSNJ+y7no6FhnGJLq163W2owbSxj+/ORTEBEu1O0qKmQQVQRzR0vmnlAp9lqUMrCIHvEnTruH0vtPBRZccu0ZQY+4vxytGaEt+Mv83b2KZODpLmWxIwgo1Og2Wd6TwaeRTNJvOwSuC6+QyiwPkKZ9RC2/o4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717122863; c=relaxed/simple;
	bh=E0w0TzkgtZm1M76ppBWWrQ1/e2RAZdmDTyjMmnGyzAs=;
	h=To:Subject:From:Message-Id:Date; b=dAH0TWqxNBY+88jBIncClS3FXVuaRvGRQhCQQ3D+foWGBNBTdg2qjNOQ0YHSN83QJH0B5UDkYd5MXPGCv6/N83SKHnswqwPyQQb473XKPLPDveaM7v237dEDDa0z7zCEyIoCqCiZksujL2HWRdg19j0vHYnDTeYzVECsqmUdzxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zx9AM3gB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zx9AM3gB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DED06C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 02:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717122862;
	bh=E0w0TzkgtZm1M76ppBWWrQ1/e2RAZdmDTyjMmnGyzAs=;
	h=To:Subject:From:Date:From;
	b=Zx9AM3gB433Zhw01m16q0c0/thWc493WHSdGvZHNE+Nl38WpMMk7o4me08lwnh0Zg
	 /rlITwivzKrLEO+C/YHsQ+ZRmEGz9YwN8N4YOBz7AK8duUzj1CL+Aj2VPFMdkmekzq
	 NSz8DjIPKV41yL4UeuZRK1vfeKFtcr4hdyPCeMhVOuuJez5Sv3GwUpEy23Y6Bg+xiV
	 FJC41ZyK+2q9SbiXBMFZx8VUdqIJehrfXLY5I5KBJ2Ri3F9+79NSvDyMs54csAo0Fa
	 6TuAuFeMAXQrqpsGkLAB3t7su5QrRNu3G9aU5ltHRpf84F+Qwbrqsp8zBXaDwbmhYs
	 pWXaHcTmuY8FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D60C25B74
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 02:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171712286276.28736.7700413842789001592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 613f35101a464ee21cd1a13233d76cd3c807eddadc8cd815ff95c2b4ba5dfb09
Date: Fri, 31 May 2024 02:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717122862
