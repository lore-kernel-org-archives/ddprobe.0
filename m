Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D4353BBF6
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 19:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719083543; cv=none; b=t/PizPfi4GBIcSkDDwo7moO5iS2rCjSAXIbXl3pKoA2qXFeaFgM4D2Ld5J1UtCrN3omMdq+Fw0kmpxIFx0vE0soGCo9NFxABvFuaii3AGKX0txUUtz9hCVI2ebBQXOncQ+5pOGgyuh3dPv84CluAIQvRlxO+bdX7h57FKYlCzpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719083543; c=relaxed/simple;
	bh=+gzDo7Eg4BWcInvOEyenDLBgjsuDuSlaAwDpTZMWblc=;
	h=To:Subject:From:Message-Id:Date; b=HHprFQr7hp+6qMFgUwJ8QWVGGi+5hZpyWcZJZL9frJNoL1uhukuuqko0h6dtvJgi5Zo09OqfuQDY9W4l7C6enRgdwVMIDuspKfyDo7CjilOTq6eYrFXvdk/Ck+JOllOPQiwcsvImjD2ChntPjcB4Z/QdeYUVet48AP8Flm01O2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aM5/MNC8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aM5/MNC8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3002C3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 19:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719083542;
	bh=+gzDo7Eg4BWcInvOEyenDLBgjsuDuSlaAwDpTZMWblc=;
	h=To:Subject:From:Date:From;
	b=aM5/MNC80/xEZtR5S6wVn/RguVyzSWOXnqb3YJQMRNJyWGs3r5PNuLUMZFX/N8BPB
	 Ui2JyUaAuBUhhnassbVsgKg0yeFWpoWxIRZD8sPxgW+onSRUiQcjQEwuvHKZFkMiTe
	 9hNdFfWGes/BLv4+fKf/AAR10KXPobzGFA0wpWlE4e4v6/cp01LzIvRmKJb5Ff2CNe
	 HFNpErNeQPmHZFFPIz2nL6rkXuzkvmcGR9M5N9FQ2Wq21bnJyFof+GKudUvvAWnKgU
	 Ap74p4xx1obL5ipGz9Gq6dbmO6gZaUCGSaUMOujphLNtkXJ9a6X0p4BcsfIYzYOUIw
	 UvBfcKi75ccxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C46E5C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 19:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171908354279.1711.17152567254027013849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04cc935f7e75bdc587c5c5312f03c7a5e930754634ac6a4c67a8526e3ebedd6a
Date: Sat, 22 Jun 2024 19:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719083542
