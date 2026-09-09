Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1712F279DB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788915634; cv=none; b=jeT3CAV/H0lhmB3qF2Gm5qITa55dSGbADyLgeXwM0ySRlM8a8cQzIOSzcbaRAlhZWyOXGxwx0lTs9XDKtcBoZptRAEuMJKRZegY44v8iqhG7MGiSYbLSghFk/aSFDrTlEPUqqDvSiz/9vaVSMCgN4wXilKeDQCKZKeu9gsRQn2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788915634; c=relaxed/simple;
	bh=pwKyQynRB/DpdDoeAXHzJiwL6hz+lVm6KZL2K1Dexxs=;
	h=To:Subject:From:Message-Id:Date; b=CU/sJxqY+PmZNmnRa0bBOcdsFMZYL1QE3jePkSDKTowppjXPoNNvHEdi17qa0Eb3IAGUXEvu5VR7UtVIuEpd+S/yE6DnnKRn+aLHrvdRDOy3NSG3DqpgN77VnAVtdCnVVITzE4HYF9TOrXvUJJvVHAcSR0uePKaroVyEuJeckPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IfMywQO9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IfMywQO9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E79C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788915633;
	bh=pwKyQynRB/DpdDoeAXHzJiwL6hz+lVm6KZL2K1Dexxs=;
	h=To:Subject:From:Date:From;
	b=IfMywQO9EmiETJBVmHU487VG5msy55JfwqDqHHOYKeLcQUYBTQTTJc6bDkT+nGQ5B
	 ArON3YgZPbWzd6P3Y6w3iK0Lcm3coFzlQts4azLng+0vqSkECdvfZAq3NcDiLbasC6
	 woSHoO+WeDV5s9anT75j0LP7RJEurVw18lqOYCUR6XoBL+18Dh99pAQQeJ/KlWPABt
	 0WIncnDqwdBDhPASczTSs8v0V+Cw0SSZ2WLsC9Z5m7e+xIhc6jhOLk4DwePDACHrEy
	 JgjLeRTp7ryXu2hhjrYtzYx4RL6xHuPpjVvX2rkQDpirKZePFyGiLhJjVvWTumKhaq
	 0loJzrJ6KKp3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B012BC79F82
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178891563370.1221.1623183723169731847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 993963543e3c9270d6bd355544172b15b615c0976e40b32b9d7b363ea9935602
Date: Wed, 09 Sep 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788915633
