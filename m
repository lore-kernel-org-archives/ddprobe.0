Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D95C376BD0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 12:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779451954; cv=none; b=bgXesu+6zrz5PrrPX3cCi+09pr2ETkI8u1zZvR10TKVGj0ytAQUbgwtGa4jKs110ifTjy8Ka8lP2X+SDs8djA0O6FsM8KogEy8JE8j9epHJ/MTFW21L6691a5bvCSjr4gnQ0SNFSulPacVRZ/50ajXnalNGXfm3r8hZu2ziSMFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779451954; c=relaxed/simple;
	bh=t24u53apC9cVSm9h01yEM3EXC/doI2rO2Kl1HLg0WII=;
	h=To:Subject:From:Message-Id:Date; b=mn2l1NspPlKLBvpjoRAMUW03UZg5kVsjgHpHEui78z73GvIQCkCe5Ay019CF6yCc+r7Wl+SZ/WWkjEBFmoH9FVS8vGrIhbGrdTe7pDJcDM1EdugX9uf+dgPAyLKCQ8AQR7euZVvh//RJLT3nnB0TfDppneL83hRhenfAVzghPXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D6/rogKB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D6/rogKB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C24D1C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 12:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779451953;
	bh=t24u53apC9cVSm9h01yEM3EXC/doI2rO2Kl1HLg0WII=;
	h=To:Subject:From:Date:From;
	b=D6/rogKB0rzCOReNJlCqRwW7dFZr228tW/qCQRqxyOSNEVYqghLgTQpVV+UuqGoTR
	 wM54Bwvus01G3mY4U7hmexs1ibYBdAty1ayZIuEzxpjHOHlVrpGWFExfzyVvodHdpV
	 KPepnb4G6bTV9gwg6QCjhQ/51e5ZXX236w7JXBLzeSgbleujLpVGSB+2p0bksvd3LE
	 O8bvTrnF0Cu5v69CLlBhKJ0zqORlQGrwIUq1MydndRMorB+m0fH6zd6T5Q0g+34A2X
	 91umjQ/1riNM2d3j0laNnLybv2s0rV3zBVYo0q1hMq+4JTG4YC6A/N580ikTpwy2D1
	 2eIaq6kzUmDIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E60CD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 12:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177945195368.3539.9565134149867147846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dbc65c44ed9f0adb1ca3d564a823013adafb6ec816f716a02b2530d0b27ec4f
Date: Fri, 22 May 2026 12:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779451953
