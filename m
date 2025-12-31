Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199AF312822
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767169434; cv=none; b=Xvn03JUcHU+NNHl8CQHU4wGlE90CO2xUdjAg5VmhXfPKVS92z3mIbe65HwMyvsxNzJKFpJ15Q0Jcmv0uESmZLY4beu8LmjoKHgXWSLNFqBN5eBBrkCSK+E29JCviXBEKE+/ZUnttD/8IDrHMJF3ebIER380OcogYzeKMEtCHtP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767169434; c=relaxed/simple;
	bh=B0ty/sKQcw4dbd6uS+yGS87kQD2Oxy0p1pd9tNUHVNc=;
	h=To:Subject:From:Message-Id:Date; b=YED9MZmSaPWT7nkz4SBs/35f+lgRdzgqSr6iP9MFURlrYNdlgCsMJ+Jf+9vRViRtlZiyywpS71AW+1qqIQrZRBAZYylKx2zQeqC6c339/Q75T+ja16aO5I4+SvfMl2ohPDUL0I200JfvqJ6Z6hGWFPgOP250lUX4dV4qpd7avBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBiVIFbM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBiVIFbM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3000C19421
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767169433;
	bh=B0ty/sKQcw4dbd6uS+yGS87kQD2Oxy0p1pd9tNUHVNc=;
	h=To:Subject:From:Date:From;
	b=aBiVIFbMJPr5FjR2lRtLegKFy7o8plhbvdP6ToJPPz4u/Q44KqKO+8SN8wMBP4HYj
	 VNyHFZPSawR3UQ33/qwvpbw1KLIETgc04lkzwfyQnK/Nh4jS4awiU2F93UQ6/sVTGx
	 iD+envC6rLKN6zNVlCGzW2jKRNAFey0PNL9fwzZd37dXSdZzJHc4o6+tZEB3qa7XRc
	 1LKws6L8XC20FM0fUOVBMkjjy2ZTfcYaw3vWRwojEfgRzkvR7lCtLDTAbnP5gaoOHO
	 pAjeHh9jsQsaD+MMc/cWSSyhqh2Odvemf5oSzK2Yx0r8iBJ4zTUC9M+Ha0Vzqx7qZ5
	 yE5wpobPYxTwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916FAEE57E5
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176716943358.19862.13816206576023367331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14d0f65513ac149a11bfc21228dc3edcaecf24fff4f13c8a9372e4edbd383186
Date: Wed, 31 Dec 2025 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767169433
