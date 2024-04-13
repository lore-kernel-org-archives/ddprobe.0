Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC04205E10
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 02:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712976563; cv=none; b=CScc7rnJgU3wVZSgRo6OqWFTUYTcYf6bZ12qf3hjP7CdXxTQCHIwLurt3NIxVbAJcSeK0Dr6Rl8MOOBbejpEGWXGx+Ca4dt4fRMl84MfO9eUtpRev2T924sBa8CD7adcIJ7ghcnjDBVps7MHiIFKk1VIEV6IpcoTMjdgKBDmGsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712976563; c=relaxed/simple;
	bh=tIc/AdkO9L+a59Naartz4/GDJU1LvLOsSf7D07j8TGs=;
	h=To:Subject:From:Message-Id:Date; b=tToA4wa6Qtcx25+gjN26me+JIhcmxMa8heU63fLahE//9txB8C++Nx/ZLAaYlYANSR9DWhG0TytQFqLkmRN+cyfbe18z/sFd5HqWnNLMTHLyWOJhO5HsP9Er0DTicN2QvKQOXqQvW8LLY21vKphR3yJbjA/H9D7wVDOLkadtM6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oEE2lQ8K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oEE2lQ8K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF070C113CC
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 02:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712976562;
	bh=tIc/AdkO9L+a59Naartz4/GDJU1LvLOsSf7D07j8TGs=;
	h=To:Subject:From:Date:From;
	b=oEE2lQ8K3RzqPw2AOTrhXCZ1zKMdos4e8IOetIZ2JCcV+esi1chF6Cvz+k5CuK4Pb
	 V+Z3WYnryCFATu1zdxFKGo9HMwA6EFACgwM8lNka0j3DcfT2HIPSCKXkjoc2fBd9Uh
	 G6tbvFwPL8qDgYCW02CQn77HR6SA9lYShRtznzBE2fteo/EMMR4bje8Lu4S0CYe2uR
	 uGjXHA7QWv1gWSddGp9Y1HCufZdBJfkCYI3dfSOl/Sd/EKF6e2qw08hNaeCzI/C3/V
	 An2OMCl0MzDB8ywBAP4cBhGV9m11FLqd0p0jSeSp08KiUNNYnw3xLPfZA00m1sFWrs
	 NnF18QfTDLlvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C384DC4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 02:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171297656277.559.12497643279263717915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6996d91293f2f51e4940ee10dc6105a38cff6f6c120fa5479d494da9829ca1d
Date: Sat, 13 Apr 2024 02:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712976562
