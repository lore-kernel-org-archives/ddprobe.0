Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B74426AF6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737808554; cv=none; b=K0T3VcFAi+8y5ieG5tZnSxibvAwtyJizzcwojRpQNpj6QLxElMAjPc9/mVpSNF22cihpBXdldFCTCheFkQJlonT4fMjFF4/37mARNDhif0zmtjkB9jheo4hLFOse7/e846YyMNmOo3ozP1+9OVwSqfE0X8hBeUpRwYH/cHjrF0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737808554; c=relaxed/simple;
	bh=xJLQ+M9Jvv5TblTZBX1ceNkJTfM9Htts/mvmpiVKYZM=;
	h=To:Subject:From:Message-Id:Date; b=JwfqczskDZ7JA/dSTU+4bCeugUbr1IbhjI/+9qZBpSNxq1c02LIhMf3X9juq3w4fq5OPXJJq0ANvKg8ZrWchrnsrnWDvapYZ4jgRAKNJoK9v0IvYcH2Kh+BEb+E8z7+n56rcN7pENvX8bPt/HprRPPHuYKKFpQ3Ptp/znA5+bxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FkOxvKrI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FkOxvKrI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D835C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737808553;
	bh=xJLQ+M9Jvv5TblTZBX1ceNkJTfM9Htts/mvmpiVKYZM=;
	h=To:Subject:From:Date:From;
	b=FkOxvKrIUX9mSQCg1ok7/QRnqwNlHtO9eB+RUQCJ3Kj3ErmOvr9+wMZHGstgb/5Fe
	 tY/zZo70l3qPA9IyluSPD16erYJdYi6p7yPLgZ5iLCJmZCQDPMI3q2yuU0IyW8oam8
	 m0lIWSXBA5xhyCCej/U6IzecBf2mbTAZevoRwrZpQXoXa+6r8pyXllc1EyraKLGOR+
	 5XpsVmRJnfC1F9Nm4r+t32Ay3URcuMFEeBQ0r5EBUcuRj/ICbCiGQ/PSYG8AdnYZgg
	 lZQpel0AbctN4gTgRDxaiaSBzcqj14wL5g0OHNNeQWJdKpR+CvXovNdBX3u2vsmJ3B
	 zFbetL2RjRJHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E065C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173780855357.21041.6250855687612898787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 032e19cef4e9f8dae41ff7c7e48e6d4b926f43fc341ed5c35b1d778dd88bf005
Date: Sat, 25 Jan 2025 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737808553
