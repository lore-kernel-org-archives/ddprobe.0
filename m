Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7113FFC18
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 17:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717868243; cv=none; b=msnZalxlOCLqGH4H2pvYh6YUiRcd9J//LIf40vA6+1FY3ss63By2k5SSMXtpIREC+ErUFRoE9AoWF+i/quHXoZS2Uap4OOQQPDWMuozmQyjExPnFyLG6jwniKDChib7M/MgIa8ddL8zPNNxaH1laLsOqO90GFepJ9nt/hXNbw8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717868243; c=relaxed/simple;
	bh=+QnTtvNSdYNL8PZTeiwlE0OlygN830v5ECVHkrCYJQM=;
	h=To:Subject:From:Message-Id:Date; b=J/i94IR2/xIoceBB3nTQtgWpia8aI5IHwy0COYotr7afQ0QbUeFBVZYZHqUytaj+3usGWv7qmeKyK2VLX2CjfnIi7nySA+8QBGMuwalyPK53RvbVZpvB1sgooxTpKPZpSM90arcxTWN5iJO+2hI/JtLVLLgWDeIdDE8YFx2Pu38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ga4LcnGI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ga4LcnGI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00313C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 17:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717868243;
	bh=+QnTtvNSdYNL8PZTeiwlE0OlygN830v5ECVHkrCYJQM=;
	h=To:Subject:From:Date:From;
	b=Ga4LcnGIk33u+bGJAph+R9E5O0HGlfLOOIQ47tMC4RF7M+RlSs7/9qsbATu2313uV
	 twrdz44kbbYrC6Dy8dzt752GQb84YPqLNyMMlbBIdekScw/Oq774eLM4N8sK81J0+u
	 aCOJ0jec5IljnmQMu9H3S8YYJjEzpRy+bOYMMEpMndbDf0Zbrhf+h3gAWXTjkMXq+G
	 AdAwgTNkRDKzZYgCYGy19sdRHXl1DsRM5t5Ga3t2+EsAb9WdtXXWcpyfy3DmJCrpLa
	 WQbHDUyuVsuFqftukZDM3XgPNhQc86hUKCY8ytEuTzyIudtN8RAX1KqDRpavUISefN
	 W7/+Suq57fkEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D92D7C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 17:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171786824286.12316.15084985719234224290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06717fda48f31e5e5d23a911f35928c2fabd5bfe2cbd6677e524dc605e17edf0
Date: Sat, 08 Jun 2024 17:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717868242
