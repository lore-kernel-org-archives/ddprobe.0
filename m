Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32108136351
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747777794; cv=none; b=DwH3q5phKwJc2qQ5+xJlteEDT7xh/Gq4ce1hEAN30B4fbC3SRZvJsHWdeYbDj3E09uoSp3zmUsiy7YP1pub+TnK1yxDwg3fADtKe57vHi0Ku1mX3/4Yd7Uyh/jBp4hVL9c/Ykp8LbgWguqdDDXHHxad7e/RC4yL/QEi41U2qMcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747777794; c=relaxed/simple;
	bh=QU27JDXurLNx0zC/hhdLFPcwP/TUSAN0yFsaorzm2IA=;
	h=To:Subject:From:Message-Id:Date; b=udrVNGQnDfvkPCeQi1C6LMPbyQJosoJcpPa8IaghDVggEOumIK6SCDZoZaFbpuxI876vi8dH76bIMJNIQy9ffFkAvg4wD7yC7DgVde5fzxYNjPIvPxA95bi1455SkZnT7yGkS8qWh1lebCdttxyqaDr1N1NYIrRNfsis+DAI2o4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ArcOvyvv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ArcOvyvv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1D1C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747777793;
	bh=QU27JDXurLNx0zC/hhdLFPcwP/TUSAN0yFsaorzm2IA=;
	h=To:Subject:From:Date:From;
	b=ArcOvyvvBNvf/O/gILUnRBTOoXpDJCFJ3RsQFYOpOdUCfpFMP2qcynMP67mib0yvV
	 rbH53jZ+9hwEvM1ne2pe9eUy1kq9Y1KCngti5jgt/pQ8xduU+GVdGZ9MDrkdlDbmpS
	 f+eLknGxAhKGJcJooDqWepZjAESWRheizFHLY50EMycqbtBlqtjKjureKYwYwJUuEa
	 L5SRbrACf5GtVAQbIkHY2puyKIY1FUjAVXToOHu2G4BCz1dyGImEWTTKpk93lOnex9
	 ISun89alEhOT+C2qGR9X/Xnn7rKtSr9f2Ohh+rur+qE1Kk5XO9mVjrp+Mtx/CJKtjR
	 7VpJetzc5SPZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E564C54E90
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174777779357.16402.11950620400166140010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 608f653ddc560f65a0dc5d94663f639e0f143141dd9da24e43105bb4c3a0cead
Date: Tue, 20 May 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747777793
