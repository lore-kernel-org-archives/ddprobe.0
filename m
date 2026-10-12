Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA5748F843
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791810034; cv=none; b=BdVrcaZEOLDML9LBod9Ueonkk8MiTvqe1WklnfQ4eyUPvKJbiOSCVEzZ1x20oaGvJkdN8ISNUrVTFKDYxPEa7ma5rsX7NTj/OMTbNHJeaJoV0hqckMrpIXlmxfea45JtsaA6Dsx6MrZSordAULHcE0aByK4L7bkGr+OcuKTNZb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791810034; c=relaxed/simple;
	bh=SfevPefGaAvOlbjhc6d28eTT8xLJXsjpdknqXnRitV4=;
	h=To:Subject:From:Message-Id:Date; b=SpmyElUMAuiAl/mdHwVYvhzzfOLOIAq0Uo0wXk7v/rn0Ajt9FpV2ETa5nILlVfLVz2B0DN5/sV4wzHfcwBXHMV2FokMX0dzQaHEjsPuVnz/5ag3zJ7mxv0W1ljuUfgG5r9SHfIeVcBuan3nnnfOY2HcOOvL0hUx8xZYdErOuSgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GeMzEkm2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GeMzEkm2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE55AC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791810033;
	bh=SfevPefGaAvOlbjhc6d28eTT8xLJXsjpdknqXnRitV4=;
	h=To:Subject:From:Date:From;
	b=GeMzEkm2U2cADFO2Y3GDdOMV6tLc8TqunTcHywvSKu61HMmpZM5QE5xXYZrS2E5VB
	 tBdL1lpdfq8W5bIea89HNampo57DCbpuVXGpXf4hVYAvIJQzN9woech1OnBleCULOk
	 HM0nmIIe/9hXn7c+OaPz9CHQeghlhx2wTXfpkw5w/d0PKoVjRsnoOf5KHiYZPpgfMS
	 MPYT2b9/uZDyBiM1cbvumcbALEIh4PMd34udcT4xo29iGC2vq+WC/6vOiCPeQLZmWA
	 zlVBuYGFCtmO7STiCfKRwGqh3ZBw0qZ51ILff2bFH7Ns67G7uvF8u2advguMwKadE/
	 mHFTWEf5eeYFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFC8CA9ED1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179181003369.21358.2522320484905569294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2a8d7a618fef6fbe8aad0f20b0747fa536f57d09f4856f48028edd155e02952
Date: Mon, 12 Oct 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791810033
