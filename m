Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176071AA1F9
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731099954; cv=none; b=OAN9PWFfHP7pCwNH3ddjz4c2FcUoB5i0EDXRgpQluFhPB+xobgkZPFer4WUaM1bwmDWJ62RXDswvIu4Z1Jq0I0NWwSPL13nW0xCbHc6GAzGaGbDsBOBycxk8/q5FVpSydqg8eCip65bNbchGAMMbqmk0xsQGvBk93u9UEy8vCkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731099954; c=relaxed/simple;
	bh=2BufdrSOdJY3IYye9t99Hrec+2OhzdijDz24JHwGA9U=;
	h=To:Subject:From:Message-Id:Date; b=eibVSx6g8e/KYAqjL6kreobKwwIjAm1CmkeX+EEP16/CoduY489aYdrEgPaY+zIdRtJYLbq/JWQxVmrqJ6i6i25EBtYIA92goAsXLTwXsmn/F0g9rxQ7B3VhSc/5dN2ax+wTMDTD/c4KxRKSN1aIHQh549xHC5JQz4NXXiu0vHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SsTirf/o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SsTirf/o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B17B9C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731099953;
	bh=2BufdrSOdJY3IYye9t99Hrec+2OhzdijDz24JHwGA9U=;
	h=To:Subject:From:Date:From;
	b=SsTirf/o+KS1coITmw73gOEy02O+3wA6p90pOOigV1A9xXylTGjtJv42t3TcqC4JN
	 0bwf2husopO1TsoSX7NTYtcCA2rR82iB5285I1rXKEi0cotA8o4A7/V9mA0/RszmHO
	 C8VEBtBI+LQQChI7mdFNnThD6nRtXK2/FDKM7RhVzSuWqY2eViXNJpbh2myFY2AelD
	 GH5T8SofkVm8TBwW7oIFkS2yHj6xwYmYW8GhpX9JEPnd1HxJ8ej7ZZJLnx/pl1s9Du
	 l2JUDyHbMY0vTAnigX8bJhS2RnZwrIG94nS59U443DDTuijmnRbNRHsREskXv2d6iy
	 Gi/2lYgHYqXxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DFC6D64088
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173109995362.26232.3081025711461208890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c33828e477341912dfed1e38c55c4d9cf4ad47eca5d467c99c4e8e7fb99030f2
Date: Fri, 08 Nov 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731099953
