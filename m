Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F16D157A6B
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742392794; cv=none; b=qEBl6ceJUr1rsF2FfM9RHsTiuHaoxwdqNESqZ3RN54YFddQjMfGn2CWdAGk2zWE0bEW50K35liZVHEo8UK9UYuXSBLKl6oeDPlGFIRWL89SK30vwVBGRpluBUG5BvprIO0HnB91WUdp/MOzEDMzWMlM+eeJsLnXO5/t1OH9pnqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742392794; c=relaxed/simple;
	bh=oZesH18ciCm/HGf0Ic28TcwpxECxINRPsSUU03WYz+g=;
	h=To:Subject:From:Message-Id:Date; b=pMJfepO/E//KqEdienRFNKk5CcUci9zeDwz7vForn44mySCdmnqqVq05il68dX8KfiX6HEp01oraa/ren9UDqWURW0CjlkaheQrGPbhiTekxlT8XeqJcm6AyMBWW2kzTlwilF7Bt7Rr3Ku2t+KCh0AGAPIIzVrmT5jO2smnmA2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3cb2GoX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3cb2GoX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFF49C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742392793;
	bh=oZesH18ciCm/HGf0Ic28TcwpxECxINRPsSUU03WYz+g=;
	h=To:Subject:From:Date:From;
	b=p3cb2GoXj4zuyKtK2fcdXiaBOSBklNdRkbVaZdY2eDoWdh8BJHomCUN947e0qwKuE
	 /4SBD3S2W3ohh1ftlV+xumCqUGPXKKIOtg85LqNIp2ZD1YboEqfwiCqxzPog3QU2Kp
	 +EGRs42ZnCb9i1YHwzIHJLEF3wg1f1gMGVcA7R3O0Wq5LrrkEubgJ6/was5k18o/oy
	 3EU/Iv2/7X5IjMSHe0/FMIM61yqF5q9gadWqV7E6Z3CynuT9gCwCEKbsNMlw9rt8j4
	 PueWE1gNFrX85pqlNyMiwRd9nl3J3utPfr9XQmTrrzYCQvq2sJy37DyJcLXw1RXxXo
	 G0exnqFBdO4Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94ACC35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174239279368.19059.12914605724944059821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0171ee18e2fbc8391af153a0ddb3b0247ebee412ad9043f3f10a488b00817b00
Date: Wed, 19 Mar 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742392793
