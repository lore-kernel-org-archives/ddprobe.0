Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4FC2BE7A0
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761435594; cv=none; b=Zmf065Bvwjp7UmqzfeTschJb0ealD6x8f5qClJr/HBVy9ZIp/8a8AmoO6lcp+146kJ9imOxHV5Xic4W+UzzbMYlanPOfoT/xSE+H2swXFpH9ef5kHy2n3M5QroCksAGfpVqfkZLOkvQaDr2M1ii2r7nuGtMpfEFJV1Kf21da3wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761435594; c=relaxed/simple;
	bh=IQdjtuBXQPXmzoVKJoci+kxR7TCfrSuya23x/ub/4UQ=;
	h=To:Subject:From:Message-Id:Date; b=djM2gdR1TJUC+NEYDT9mbp+AWiHUhmJ13FKuMQSTXrzf4MyCzhLbhFw3uRbBVF2D6PmiSosSuU5VVnFN1yeslEhaJloug66APmtdRpaLlV3obTTO/+Zp1olH1dQanAZjeu71+5RP5Et3lzOoEzy2P9oQO+uQqea/+7TImV7gmHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eR2DV7O2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eR2DV7O2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8161C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761435593;
	bh=IQdjtuBXQPXmzoVKJoci+kxR7TCfrSuya23x/ub/4UQ=;
	h=To:Subject:From:Date:From;
	b=eR2DV7O2vyklrRa52xbJ//kWpT/HndJG+iiFdvvZucm6qoRTUpbJ1wvLE1baixW9l
	 9WqvN76VON4uPIFQemowhhnc4b0VNNDPrrXyl+6/aIsZ8Eu5K7uT/CvOZwkBklWgw7
	 I3FjCFOBTKhA+JpSPuFDbTE4CAkVx06N0nqLIUs+huNqfeMlEQ9jGcv+qc8eIo73sj
	 3yJw2wXtvg19HLQXbTQvaLGIaQx/rLC9LWfF6S6DOaoLWoIigSs6z77TASFmrjHq73
	 NuccDwC2T60GiRKYis+0V0784ydrXZwKruAaLwcN5/964rnk41LkEcwKaE30BgFX0t
	 RO7u72bKCJZtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933F9CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176143559358.8868.8430566007725088115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b9b1401e94969e8ef8e60054f843d59bc99377b9c7c57080e74f3cf5544714b
Date: Sat, 25 Oct 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761435593
