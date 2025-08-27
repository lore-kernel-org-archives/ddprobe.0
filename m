Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BD427144E
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756324794; cv=none; b=PxtuszKfSsASHW4HeZkFSRqEJ/81mW5E+D5iMH3k3L8ffnf1p3k5Qxi/k+YRTej34cvQii6OURQpbpLRCbKPnh8QGq0UOBoknWtsMglnikZMJl0s9ezajsKJd7Gp6ERPagpg4OedY+7olu34j3Xt2/fVjE7DMAAs+eVAtbyDBAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756324794; c=relaxed/simple;
	bh=6OftL2ZzOYgon88ugW7uutjikxb3e+T7o4agbI06RK0=;
	h=To:Subject:From:Message-Id:Date; b=GUMcXB2xLMKGTYRgejRNxHOuCmX336LkSUleQj5DfpwPN4bRhLW8IQ9k2ZLEAiE7pcOrv4wXh1QipmheAjaQOfH2VDev+OT7nW6kmNoxTZ+i0MqtHFWIGsuvQnxd13rbaFSQodMm/1u0SWBwxgRIRFJlMvnCljnJk++57aD7910=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8+YKs8k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8+YKs8k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2AEC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756324793;
	bh=6OftL2ZzOYgon88ugW7uutjikxb3e+T7o4agbI06RK0=;
	h=To:Subject:From:Date:From;
	b=H8+YKs8kivXhA1luM7UA7eglRY1dvwF6Qc6LiFZdf00dYBz4uyjgedIbl/RBZ5Hc8
	 eIjGey+LY714zDY4pRoXP8eRRT48Y2Z69k5PXPoBPg+eaZ8V7yosb5Ds8YID0Hbd1M
	 wH+gFtqTsxqD3rx1nk30gsqxUECgMoJT6XWGIO07dRp3kq8lbw2diPSk3purS6qkcs
	 Y46TL0PDBQr5LbaEMyv0cDrzU+lDkOoFZRBjr2TMCRld5vGkd8SCQzwqXd48bMCA/i
	 VeMwljCbmhn3f7/yuc8WFjGmbMZwVchbo19sZmxp5YMHmAb00BZr+KIX8fq4iDv2WK
	 QLY8+LLn9F1XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E94DCA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175632479357.24948.2641999081464686515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3e69f0da98666796bf37eafea28b19dd23de4092ea072e76a754517d205fb51
Date: Wed, 27 Aug 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756324793
