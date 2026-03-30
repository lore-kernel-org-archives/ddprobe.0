Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1EB3CD8B4
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774874694; cv=none; b=UywlHq+Fmqa5Bgj3ZPOhGhFhyeN6AJT2EPxWm7o2y2FaXYTw7o73jMX7SNTuAVH9n64K9X86eDuzCKo1+9IGLvaINY70Spdx1wv0THNytru0x0V8qJCetiK6fgbMzz92+b+ePevIrcHZGyIBDz+kFYlm/4AYc2cMEkb8Eb0bgc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774874694; c=relaxed/simple;
	bh=akG3s7OvPzVA+IdbvBD5xE6D3Qv5yRa928YDNfu2OZE=;
	h=To:Subject:From:Message-Id:Date; b=VWVSaBh62GK+ILOpz5hsB9YB1qLrLQSuAuvNiit4vpDGhtVGFN0mqOigBTWy/h5eFdbK7bZdJOBkYySir617tHffIZrLUUz2E80qTzRPBlZaVUtLwC+KmpjuXsrr1MXHW3DPYpePMWGm54IMM2L/8kmY4SnbzJo5jbohzxahvvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mvuQd3NP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mvuQd3NP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC23C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774874693;
	bh=akG3s7OvPzVA+IdbvBD5xE6D3Qv5yRa928YDNfu2OZE=;
	h=To:Subject:From:Date:From;
	b=mvuQd3NPfqwsNAZQ3IwSpQ54BH+CafJHWpygPJeY9a5FXFblPsYnMN6iV2tJxdS72
	 k4RGPaO47pmIOcgkFqFe/SJ+M4RGKOBcd+JvfjkuAD4oefxlAXs9ifLzUYMQCmClXe
	 pXSi6doNImuuX0mgZbrwABMx94MzinFEQ/726OpApWh4+2E90wrRGA38PetsO8kEVS
	 24Ngf75pQP/O6WdCpDBFkB+rmznO5TgoHDh4UrO1fXciT8L4n5wuhuGnb10WsDEv5U
	 7tGf7yuvmEq94klorrjEwPj9FGaeq1fOzQBFXKglJFGStwO5VhRR6QnH97FhpmzTWb
	 42rEqc8oOwdNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943EC10D14AC
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177487469359.31972.11780387707838479398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d6e389c6cab0cf4e33201b3421d4ecccbfcd88682b2fbbd0d33ec2f6e5361ec
Date: Mon, 30 Mar 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774874693
