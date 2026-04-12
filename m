Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B82D5C9E
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 20:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776025654; cv=none; b=aYEAbW+HSmqzs+kdStYi/1Mp3X5Ja9OibY3Qvmc3GLA0AiqY5PvIcU8M1vZfjG0UvVd5LOzPXms3aNqVzTfe8Mk374wQqD4X96JcmL0GTEaTxmO9cgZspFvfXvOTJdyfna6g7BiASqNaXigyX2c97yH3mChqs8AKfGFBHBLR5s0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776025654; c=relaxed/simple;
	bh=5fr+TkdcgM/2hVu5QEqvH1E/91MNFnPtCS/LhWitWmk=;
	h=To:Subject:From:Message-Id:Date; b=XOeVPHZL++dCMz86ISQKh8pz3BLI8spJ/KLDLw0nyNikndtFsr0abLryY4Pe0fA2SAEriZHR5JqkJygwsq+LpxLuixBBWJjrwrJzRSvUGVgDM8V/KS7TubSBU36tIHPchKA+ybz1MSm+/CDlJmMUWRmtDH6P/iHqOFPbi+zElC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N/ImxqQZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N/ImxqQZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA06C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 20:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776025653;
	bh=5fr+TkdcgM/2hVu5QEqvH1E/91MNFnPtCS/LhWitWmk=;
	h=To:Subject:From:Date:From;
	b=N/ImxqQZcrJZA+Vq7GwogpsnB66Rvqa6RQNwQ9LvQw0Ip7gp5G1vO/j9UnFdnoAnN
	 S0ILvXQm8KDTnZJSOZ3JzO0JykQhygCZPRYzcxYlbxePzvyM7QmQGml3c8tL3UZdF2
	 sMPbKcd2QKcxEm05QtkEHDXYynxVVCn+nbBFaVRXR7UFVQGbsq8tsQlqOw06GDN5jd
	 Z6Sf10Nx8fLEVXh0trVmyPvKiU7EcOYg71wF6+Y7ehxogfV58YySPtd0j6TRSZafNV
	 RdmyYVUAdsti6OzVsTBAnrvLvnFGvaCOuBmyTeou6GXdiDdIq5c5AA3MHn19AqKMjc
	 mXxC4QVcCkuNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A95E93804
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 20:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177602565368.8579.9062867408382396751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbcb91cffa6d617e3fdffc74e26d675d002c873e9ce42f829f56fa5fdec7a041
Date: Sun, 12 Apr 2026 20:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776025653
