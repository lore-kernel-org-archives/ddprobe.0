Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECA86282F06
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773232494; cv=none; b=biNpQuvzsk2QG1liGsEkoRlhK5R1qQKKXI92m2Avgwv9HBej59XaPwTcy5AkWVS6KuY3tAgrbfyYEnl3FVofjsGrAj4YB2QvecJvizBeD0grIzqMHDMioDmG9N3a4CAkU8ZO2fOgPnY2I3na6sqMwqLWRLgyFTYmpcY4/8eVIco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773232494; c=relaxed/simple;
	bh=PplVlhoauZsv45u/SQ8FjWOuJEkjCuIF+Ol5Qu+iL1k=;
	h=To:Subject:From:Message-Id:Date; b=URELkPGSXyLmDBnMBLe4aGE9qIEF+XYISyPSDnThwbpf14VBZW+hfYy6MgPUzuhiboDAiGAnwXNnRl2xqGBvegAMAevOw6vsND1LMWrV2O0FhYiMyaUR+0AJSaI4fy+7jqz9x+Z7uxh4QcZoFt1WVhX21h3FWs5pRxcZdUeTpTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aMAMbw8b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aMAMbw8b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C28C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773232493;
	bh=PplVlhoauZsv45u/SQ8FjWOuJEkjCuIF+Ol5Qu+iL1k=;
	h=To:Subject:From:Date:From;
	b=aMAMbw8bRISNjDurOo0LxoyjpnjYx3G9txnleg+s0iPRQDS3UNF7EiceVouCdVqCs
	 nYSMMBN629me6dDCnPQ8qu+sMYaqGKAvaYCwitgLTkkrIDGKIvmAs9aTtDLAi8Yhnr
	 rqqFXLNT0LkD++/TBa5KZHK95VDwdD32DcKC84IrRV2gj6ZqBmJQ5dnxd2m5Qy/9tI
	 Nkx6BL2+0jhn2fM3HVEYWASsdV+Pe40wWDtacrhz5bWSocC97F2eNk92uZWygMOpdM
	 k3gnVL4xvwWHED+czXYr6bCQCexUbJ/MwRJZztrX5U//tFQ5jvL0eCElG51qP4IXrt
	 xSbyo1SmRpfKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953421062878
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177323249359.14954.4767923133381564033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3418151f8d50014dff5d1add24081f67a29f4bae72deaffc3daec181bcdb0e8
Date: Wed, 11 Mar 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773232493
