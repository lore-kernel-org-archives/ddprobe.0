Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468F510E3
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737200754; cv=none; b=O6djElFxMFBE0FILB4bCWk9OiWaQVE05rwtrds9AfD91WbPyBjhNv9uofZajv4e6FThXyzx7hC5gBxbCqRqioR1vUHlYmha67A6j4hpBJna4JyDYxmyEntOMYZ/IdPxKy9SkPEhHcLxqjuz2TV/Vuxxjm+xVxaC8oGoj+xXTl/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737200754; c=relaxed/simple;
	bh=2FFrFjJMW6imRCCJzragK0yFZxnxwXx5ATtXEBMelac=;
	h=To:Subject:From:Message-Id:Date; b=m7FlMoC2Dc0x8nLMHR8yERtsyhFY12Q9jI0gLefri70lUKN8gWN2UgB81u3XU/Meb5vxmSRoedktsPUUuNIB+fRBuU8WfDSS6k/3wf/PCBBkbY/ZMbwuTsVsVm28fX9YW+h4FLD63ftDq7eLt4QwiqaeDr1/5/dCVeHRWlig1RU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kfpyw+ri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kfpyw+ri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B8FC4CEE0
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737200753;
	bh=2FFrFjJMW6imRCCJzragK0yFZxnxwXx5ATtXEBMelac=;
	h=To:Subject:From:Date:From;
	b=Kfpyw+ri6BgTALEVE5JRWRuA3/5m1PiNJSNYWboQSl8dA9vhf8IZXrLXFb6jsRhh9
	 rc/1H2T5tOZRD14vbPGm6HfgE66OeDNl2p39/H9cRkirRGNrW4sWPIcePtOSvtqDsl
	 MdsLm2AZosKLSYOtTLzoAQ8txyveGeNE8biTTa3Tlp8f1DFmdFJT/iTsRyfwcjFiAx
	 MPsiru6RyC92X+nIQopcxyculBzUEdIjv1LWftt46bLinjO/vGQ248H7nkV/cafkbw
	 luIrAwwWbTBFqLB32PGS4FAFOpaY2YwoGTsSafK/9HDwRMC6J5UZbgQ3GM1EV88D5A
	 /J3bRt2JXsNmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED61C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173720075357.7434.16994943031183578963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a960ad6ebd172cdb4058281846bc75a3a9974d00f6172600dfcff31c9d173cab
Date: Sat, 18 Jan 2025 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737200753
