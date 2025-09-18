Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDA8F2522BA
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758197993; cv=none; b=dG6/pMFBXNChTz03WmFN2Wv5jCUDR9vBvVZBwlXImKzffGHbi/CQHEP/MJJ2o+BsMrFGmlUB5Q6PxzK4u7qp7igG3YK5Ugp9Aexakjsm6b7ctC1nNB6Q4tirbyjOeAKio4RDfujVPNDjy2mweVTpY1I7NJJDKAt5exoUbrSf61I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758197993; c=relaxed/simple;
	bh=n1Q04bxsW/UNOivGGSg86anM7UDNCAEe/tTCAPORyvw=;
	h=To:Subject:From:Message-Id:Date; b=fInanqL5dVovsDGivmjDeP1HnIE8WEIDI/4mQn9MjJa5pbSf+LkTGjVtRHlE2+WgaB8lfbB5Yh6asU13Pp2Sz4YIu3ehG52Jw9QOC8lrp5dcT8iKO2GDwowPR6IOYY7tqBFtP+w/2TugfjjWzrhsRPAHAqBBF10oypgFeQBQpIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HMTHF+7T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HMTHF+7T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 969FEC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758197993;
	bh=n1Q04bxsW/UNOivGGSg86anM7UDNCAEe/tTCAPORyvw=;
	h=To:Subject:From:Date:From;
	b=HMTHF+7T/q/DccgsKZb/TaQPceUusnSJBo9eKzRkQi2QqpDDcVkGJbql66u3c4j41
	 DNdiyuCA50m43Sd/OoA2hvtM1FTim3qC5u9GRamMrXBvz5cy+YZqvBekQLctPDTY5p
	 QsSl/OqVjozyInRgEikAO4E2aSmFEsZRNcvptdZDhnwfkPqImwbk4faW33ZaFxnVMs
	 vsODUbVzfiGaP8E/XXbmoXDPzXU8XX4w0bF+ezvRNBC1zjZNDD+xxMGWQqOBvaUPU7
	 aoMszvqSRu5mP8YPGOQfOH9sFBvUeXMSTnCxSbGFA2A+/GaaHq3ZtLrtwR4KzewYr+
	 wsFHQkqinVfng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1C9CAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175819799357.6961.6603186867099366965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5dd81f64fd08950c76abe6fbe10c8782566e66d9f95f955e10476b06d58bb98
Date: Thu, 18 Sep 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758197993
