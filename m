Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435B620E338
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743527394; cv=none; b=f7NLW/1jAJNT89UNvGeyim98QYJxN8VpQsaLpe8zWU82BusFSIfkK4FEwi+lLddbu0t4cQTc4ffZ+O9fOzQMABX4dmzV4li0M4dF8OB1XThHTo7KmSfCH8RNNZItPvw3yhyOji+0X3Po+wG7olhJNxvr6xxetEES33Fu0gPDiAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743527394; c=relaxed/simple;
	bh=4obE5V27kI4/4c4sjalp5LTV90N2/28vrRBGn8MPHis=;
	h=To:Subject:From:Message-Id:Date; b=W8lAk5lHS5myNyEve64bKRMInUhjHH8q9pZVg3oqKfOUIvSJCRi9FiE8iyVKjcK4V0ekbqDrWos3nVZnNHS91xQzszqrlGlHaZwc3GD3il6i5ZofsjpMJs5l/Q3jd/u/iVpS2gZF9EEizp9lioXxcm3nqdVpxpSxjUVSRaREEaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FekIKpNl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FekIKpNl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84A7C4CEE8
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743527393;
	bh=4obE5V27kI4/4c4sjalp5LTV90N2/28vrRBGn8MPHis=;
	h=To:Subject:From:Date:From;
	b=FekIKpNl/ch0wMIJZCMxk00yr6X3i3DgN0ujNzJHeMGVaHrsEUMrqoXRPuCvUUfYi
	 EOnqFes1nxRrM0pmdZ8rImBEt0kIW5vW3BrNzIdo967fs0X5/TgYl2evPRAN8VTiVS
	 q8U7tRCWAdthWsu0ZdmTOQY46nHBAGt6vhA9M60nG5uTSPzdjFk9lKEMwy/0icwTh4
	 NAiOTW0UGa+YniDAwAUG8sbbK0Zm7BiS3X8RRR7FriukmezQeOVi0E/TuzpR33ZTX7
	 T5/GMq3ZBqeg7+0r5rexOwO/gcCLvhVgty75fEl1fh+IJ8aMT1S85n5FoO7BJL94Fj
	 8NvDCaSEpgnxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F6BC36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174352739360.23186.9415514132659410041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd2ce1a15e13ab6d776bd8e70ec659c6123691b47a57c88990bca1e73af7786b
Date: Tue, 01 Apr 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743527393
