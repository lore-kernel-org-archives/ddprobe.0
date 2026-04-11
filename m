Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289D029D294
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 12:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775909254; cv=none; b=ZD/Ml4hAH+hP6m/sAnkpGqbLB8HV2rNa+0nDjUI1uDLKckgcCpi5e+SmXj7NVjQUQA2/BIflBAyFwavwjCq+RIwwe/3aEnUJelcRYsBMNB29GQngsLawxNt3qdBSBFwr/NH4yA6Z6uH1n5r2NHPDdcJpVRzthviM5W6grid+i3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775909254; c=relaxed/simple;
	bh=VnqCtoiZLO4MogjTm1IOPv+k0ATZv+rGCTKmIS9Uq1Y=;
	h=To:Subject:From:Message-Id:Date; b=s+hWp1hNpH2VxP90l5Nrmi03Uz9V68YB/er7OfihdY5lbLZlUuX4SFP8Eah7I4cFW1qir6GfoDmvm+zznxLEiLxcby4LaVrWJBmDVeRuQSDv/E7aWDjZUZ6htX/ZdXcGBZXajEyORXMcF0tWp0ntTvuX0N33Nf/hgbb1Tjfu1mA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EyrdiHjL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EyrdiHjL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF8D9C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 12:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775909253;
	bh=VnqCtoiZLO4MogjTm1IOPv+k0ATZv+rGCTKmIS9Uq1Y=;
	h=To:Subject:From:Date:From;
	b=EyrdiHjLbGnnPwBXeu7XN82E7oiMCctjbESZlTvSX+ucoN2t62uvShaRG9jZdNgAA
	 KybRlz5HJl7Ea60RaogL3vj4UVWgAgkPM+z+N/X7tu0ncqWNu50YWYmF2cTa779Ijc
	 eyd1LbPtgS12HLNbtLbyj4av+fWHeLp0i9Yde/GbJvnC5aLyLLc/7KyQNqu/GtJpjQ
	 8RQGVdC/CV7cVx61Kr9gIgsUci5Yes8f2ChuwV98Skmw0RI0FDg5Rd335FpitpEmon
	 aHHs0+ZxiEXuwHeNMbQlyOVlETlRpOgI0F4cFXIW9mQ41JYTqfvEE+ED/+xr3XD1RN
	 PWxq6dgVk40Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05C4F3ED4C
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 12:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177590925368.14369.11521474997808759824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af7f4ab61456561c65a9e2cb6fa39256dc98db3bd018c838e7e817c3e082de3d
Date: Sat, 11 Apr 2026 12:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775909253
