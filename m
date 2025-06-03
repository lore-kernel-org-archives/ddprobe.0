Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24195C2E0
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748981994; cv=none; b=hVuy7399P2EkrceFRee8JmTbjATa8W6kvUYURAHnSAM7g81Bv74Aer5BedLS6/7oDM/J0Oseh6apitsfJLo7Lha3gKwlb0x0TYTIZ+bSSBnVYxmnOIlv+xUNxrwSMj1N8YsfZOh7qmE8sB6pvMrR41ZTm9u1w2axlTqpFIwmBE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748981994; c=relaxed/simple;
	bh=9PsP8vTkT2kA7U7Ph1HsdQIkyeOduSGJFd273USJrEA=;
	h=To:Subject:From:Message-Id:Date; b=skIoqU9RJ2oJitfJi8vikcB4GFquMVRYjhCvEeO47QVJ/OWhQ4M2WysqGIdwYtp1iS8Ci0nWk50Bbi2iefUKdlEb/gIEgzMv8suFIsZIjxfmkXU+BI7rJCiQS1NTcm771j6qJXsSeoyPloFPCEFNpOCMidCWDu68trRqtw/PNDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DnkRoE68; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DnkRoE68"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE0AC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748981993;
	bh=9PsP8vTkT2kA7U7Ph1HsdQIkyeOduSGJFd273USJrEA=;
	h=To:Subject:From:Date:From;
	b=DnkRoE68WOUM4oRuplAVxkcxzDN7lguPFQGUr6AyVRR0BqNzyM6ymYZ0V/CBR0TQk
	 qUT2oMVtHs+KbqudcFFHUTIdXHVmAJzfoFm/ThcjqmA9dd0IicJCwK45uIvvmBBXW1
	 pjNAideT/qcsAY9omgW+9vjMSEslYWt/094PZ4IVMH9w3SM575a2sMR3ijuFrisbun
	 ozt/SFDSTSTljtSffh1hRYxVLR0r0QZtK47yfRh8IPtM9Flz42gfJyRESL/p5dc/FT
	 Z2sLM8Jo/23JM10UOEMJjZDG2GJS/2AkMVqPcrcu5GxF8PKCYMDOjAs/zDF69YaECu
	 15pSlnLnlkppw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902ACC5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174898199358.14218.4243058819652941881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2f60766362b947cddcb4060398b81e3897d9ebc33250630905e1b941631311c
Date: Tue, 03 Jun 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748981993
