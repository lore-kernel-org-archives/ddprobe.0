Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F5F1BFE10
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737752754; cv=none; b=MAJSBAJ9Xa/s6/mlGAk6QRN+8kbD+iNr/Xm0KdVLFYcthJzGNcUnw8RnM+/cCPbSm+6XYVfpmsR34DI2LlPxUxNUQMPFfDgHNOrvQhKNjHLycv0mFkG5B3Geoe5nctgzlanZGVmchSHLLHV2LH+M/1Pn3oalcwI3jGFY0pna8r0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737752754; c=relaxed/simple;
	bh=eHkk5sNN3ggU1t8S2nvrCaGZaZcLhv8hFYuatUTs0iA=;
	h=To:Subject:From:Message-Id:Date; b=LFKyGAKoRUYlqzMpahWloIIK2iRADx+lJ+SrYc2UlkmvaBRP1u3NUonQn0Q32dARK2GWMo773o07ONSGDbIz2/K8KaCcgV03yiZbyHJiOB1dL8f0qiW8LLfHTvhLiwAW/xxycdeSYUxgMSeO2RgR9VtswdjZd/k274vLxA67cAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YI2xi3Bh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YI2xi3Bh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC928C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737752753;
	bh=eHkk5sNN3ggU1t8S2nvrCaGZaZcLhv8hFYuatUTs0iA=;
	h=To:Subject:From:Date:From;
	b=YI2xi3BhBLpzIU0eJAaXJXPWmgkuM2jGY50xIM/rSlJ058ICNLhwnbOsy4KYreY5J
	 igOdm6yS+zPsrcO+w2x/9A70olHqqJ9MBMCsJNmRebqMDWc1Ua3iYdBE81p9sJBobr
	 Nlz/NypmdUywvt/n5WbRHoxfDWBF5EISINb8AZ0m6SM9mR0f21NndADjWPfaY233zv
	 rSNHrgU5uyroLK9U9GU0GvFvXcIAhVeeprWIAiZgaGHelsMIR1JQkciWWIH/Kscdpm
	 /ZvvwdeHmWS5B1I94XKhBgdBM0h+8gAcaMawPPPYNkovsmxd7OCzccfOkp/Bh8vJse
	 ZNHVFFwyQug4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A362DC02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173775275365.16806.4831265138647797569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5367e0dce6018600a327d23a6b341d6f5d4a5fb7cd136cbca1ee4ba63e320ba
Date: Fri, 24 Jan 2025 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737752753
