Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A59A76C76
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 08:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721291723; cv=none; b=YVxuFBGMyEaA1b4wiFEmIjq77Dylv/Doey9f40LdWONY7wzZIymBrjhvEtx3qbAMUo6DXf/kFUHeL37iwhxCo9lJntaCwXw6CQk9x+3fTJuThY9xR9Ud2CYYqrJCQfUhRfZ3STsMXmxEC7v0vN2UJDhCbE9+wbCLuX0y3jOQdDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721291723; c=relaxed/simple;
	bh=upqkQ4p6ruRsC6hiUW1s1FiMgTWDnvhk/Y7gTeuGPVI=;
	h=To:Subject:From:Message-Id:Date; b=rzitTY5C4ucy1yh9bkPj9v84x4H8EEKaXAGo0W2YmHg20R6cdVP+DE1jNaM/lmue3WV7xA60oizavVJuD3znKq7ZrQr44Ldnu8OFYbN4ekUD9GfrH1TMzaSaec/CtCeK8PJTG2ZTw63rDB74JjeLrxKVYUVjVVfo+IHjlyXfecA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GAmrcHvP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GAmrcHvP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3082C116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 08:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721291722;
	bh=upqkQ4p6ruRsC6hiUW1s1FiMgTWDnvhk/Y7gTeuGPVI=;
	h=To:Subject:From:Date:From;
	b=GAmrcHvPXFz0aUMwbrqBYb7kkeY3M/8HmAEJ4O2hQ51w1xRQ8umpwxnlYOWabF1FG
	 9K13CCNPSYDMRBe6CWsuNLO852G0QZGPBqDLPHTd3IkBpYPk8Du3AVLHjurZq45xNl
	 83i6je2G5ssU+gkE7OYb0/V9NcpVWfRV9rokOlhuGAehb+oweUGbqXT04BdfEAy2Ur
	 VEMzEZ6ak98gdME2478vjwNkFv/VEeYvZyhn74rADr6bcmpn0vcpX8pswoAAy/j5d3
	 UB+mo3tCAqFYISjyyey5IH8QFTwD/OdT9fR9cMglcd50H+0C/flFety/ZxgtYW9/8T
	 xdftDjD/eO3Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6E7EC3DA49
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 08:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172129172280.18226.18372133002006325434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84efe021b0b2a28fc4772132f43b89a2ff00994fed233405ea040be3637c80ca
Date: Thu, 18 Jul 2024 08:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721291722
