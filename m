Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D992D59E8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 08:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783240714; cv=none; b=OkEmXscpPvKSShFLuHJFv5TWeMv3tRXMsVMTqWXAQVogbti7IsDVeoP8HR3oTWflYw8c8/FsinKHPXf2oOZ2ea2gX5uUMmdGlIEurFjtLwTb8sqnXpg0SCNBXlCXLp0nqK978+pNQM3RqmyJWah6aOjVprXllQv4eWQhgXOStm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783240714; c=relaxed/simple;
	bh=EBhqN1RS/gmpKdczFfMiYxlC4je+H3cdjCp3PHckATs=;
	h=To:Subject:From:Message-Id:Date; b=jdHODCwNXEbl9FkTA7wvjc7ZUu13GjCEzJvGWi3EPopXVlFALWppmiWfqCvYnIkOnQVzcRHCy9+w+waBQ6I/23Tlkb3JOi7H6BmBoQ/APJPB8ed1prvbSheszH61SUw0gQah1SdYBaeyYBf1BrWYEGYHsaNNVm1NoE6+QSsE30U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUXJEV/+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUXJEV/+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8BB5C2BCF6
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 08:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783240713;
	bh=EBhqN1RS/gmpKdczFfMiYxlC4je+H3cdjCp3PHckATs=;
	h=To:Subject:From:Date:From;
	b=CUXJEV/+MOgIdfC7SsyrzjThmUffHWB05gRB205x84XaRIDvU2RiZC1bze0sF7Xiv
	 XF4oJqcR7NAYGMPKUKw4dlXjQpUpHT1fK2Bs6+R1EOZDpHFsmz/3FjmeAukKVax0Q5
	 wW3L0pK5flSTucIYkVj2rGP7yNv87QRIADdL7w8lkFx6lnv9hint8sP27M4kG+hCDG
	 WE83C2DEJtR7jYdIU+jkHICmVAYnRUmBO4/ZGmRegUh01JnNzdjs2S42JIsNBbbM1b
	 De6dXlKUmEvRXtKbLocywHu5TdoXUhVGYS62hko0mNxZzb2IAtYJ14szrs5wf5i+vE
	 g+oHzaf7vLOMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FC1C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 08:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178324071368.8006.11791382813355601121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f70bae52f8cfc55a18e89cbffaceec5ef2e7b97abc2331778c49ede258bfa6d2
Date: Sun, 05 Jul 2026 08:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783240713
