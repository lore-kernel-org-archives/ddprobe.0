Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D57830BF67
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 11:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779969154; cv=none; b=GW0HTktBYp2cbpfaQ5z6cuh2qd8RSPlDB+0FEn65K55JGd8EII9+uPMluAqTCaIKkdYoyoEouD48DTYfb5+X6Z4R8UZQsom3yHREpmiRcOuRq6dGZg/xwcaGG+11lufQz7jdNulcuSAF7cdikVTzN435oIR2jfxDTU8EKn41UgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779969154; c=relaxed/simple;
	bh=upPGqfL0ONzOgyB7jmjdi/66CJscD7escX2KJAkSt6U=;
	h=To:Subject:From:Message-Id:Date; b=uYAotQg40FRNBD3rwLcFiNStBLL+K5MdDy0PnYxf+uLgE+nawzTfenGQfbYS7fcn2MD0bKyuQHv9Q6mt4fsm/Pw4B8R/2y/pHUyW/hNHaX5tW+VTOxXBlrXOdruc7dBg3vyUydG2+qt1akJuCnXfpXVecvDAsWVmHu47WDFIzU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gbpkq9Qp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gbpkq9Qp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5625C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 11:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779969153;
	bh=upPGqfL0ONzOgyB7jmjdi/66CJscD7escX2KJAkSt6U=;
	h=To:Subject:From:Date:From;
	b=Gbpkq9QpiB2lwdcH+IeHdq0HzsjzwJqfL1eXInajbDssTvLpRnikmQwSksGy4IyqE
	 jPg5ZXRou0yhOjAEJfongGtwY6U2nQ+kRgF/lPs1ueZWPUzStsUnXunGKHNwZcAs6k
	 CZE68hkUuv2x4DKwPAJt6o/V1fBd60nc6J9+a9Ih51Jnp7ApiJ0xRfKnEZdzGR7bq4
	 hfileaNQU+2io9uScvkefdjFsZTlXTmyhDD+t/axjpzFx1RKanMtsUE0YzbLLwz2DY
	 QoD/kE9nke7GLBoyufNWvOOpdBCGwgGvEi+4+NqKHz0G2aOi7bGWNptU1OfyCV+STL
	 lPmW7cPYSrwlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF871CD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 11:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177996915368.24576.15808717537137433058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a40ddaf75f731b23eeb0b0fcc9d2433227bb15526fb0e8cab57ea8d49667c2f
Date: Thu, 28 May 2026 11:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779969153
