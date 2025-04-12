Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495402367B7
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744424394; cv=none; b=oljT4nVGAcLOKNwV5o3rKgPE7ULjCJG/Fig+nTzrwNNooIuS0+OzSgbeGPh+cDZ6l3ZXUa4oLAxs/pqYKMOnIz3GcWAzvdEJo+4X3p7TMdnTq/Y5ec0ShxUAGoLCEfeLUydsLZW2/Wm7f+1kT6NQ8mUOZX0YsAIzQ5Aqwm8oY80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744424394; c=relaxed/simple;
	bh=7FyPVMtgz/K3UOBg3vC8lq7RpLfmk3uATu8mMzNs6Zk=;
	h=To:Subject:From:Message-Id:Date; b=d4iT7ZArBZi7sXlNA7p7XNyStKIReBcVnLzUKqds7JqjdjlnuHHTNeQq9ITmdFiQqLflav2ll8mgnxX3eUPTfWW4gAIXRZ1FP6PBfSEfEyOj52XaYILTbZsDmFBnAITvB/eir/yrdKgtm1PI9jSdiQaa6y5ML7tI5w1YPLadjF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=geRVmac0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="geRVmac0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9657C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744424393;
	bh=7FyPVMtgz/K3UOBg3vC8lq7RpLfmk3uATu8mMzNs6Zk=;
	h=To:Subject:From:Date:From;
	b=geRVmac0f/jazC+h06mpwY3/bObp478Z9dVQOh+yp6a4AIY099rM87ADRuCc9sEkF
	 29s771Zx+nsjHiqQBrmDN5jAM/cdPDQs4NnBeklGgwR8l5U2b1Z11diOEkKadg87Ma
	 cePEZ/67NOqnJJ3jD3AFoPqLsfFnrHwIKuHsMmq77hjxZYpya0BAIslDvKYTfNoP3s
	 YDbAguLtgNzzz0vH/d/gIiJs7FdZ+GujuCOTNTBaYo87D7CvJXmBe64ausOYFCPUo4
	 zGFxhcuBqZkmWHo1Z8yqDtKvHPTtidKigTAHNtqUBQkeAGndhn/t2aiThdMcC+Rn/h
	 Xhlr6PxfNdFsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939DEC369A2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174442439358.18777.14437959280406316871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 412d55a773842483d6790d44a4c9250c7de7dd641e3c3277286a1a876814ef64
Date: Sat, 12 Apr 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744424393
