Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE9B45025
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732781154; cv=none; b=b9GjaKSBhVI4k/vEv/RpbIABFUMXGECJ/HgXvmXNh4S/+Z1cheMxcYbhRzRUvAAaT1eBaOQ4nqrGtkxI2Z/ZOrGkyxkZGYsPS7XNAddvquDJwa4YmTE4sFnuQJdhHTUTzeqeg2mHnGWkB4D9jIeDFcR/uDOq4V+nYbH551IgW5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732781154; c=relaxed/simple;
	bh=+ClpZQOwvQ39wm4SlPtlNIOEq2EYYS8c4o526Pzu3r0=;
	h=To:Subject:From:Message-Id:Date; b=jcbWfhTyYv1CxSb+IcsUHWzDz0qkdTe9HbA0et9BSVdzAoLj91SKVOeYhesfPckLWcev7kCClU+guASY/IhVzYcnZg2u0wpt8mEoB8XYO2cqIQq6vG1agqGmCuVdpg/71/JVGP6/2kXRv7Tjkdo7SS7AGFh+8p6SPAcQLJAnVPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bndYAizp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bndYAizp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B783AC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732781153;
	bh=+ClpZQOwvQ39wm4SlPtlNIOEq2EYYS8c4o526Pzu3r0=;
	h=To:Subject:From:Date:From;
	b=bndYAizplzvgh9Rzy/DkhYuFMdM52UZ29Nz4Fh9xLSTzt2VrjUaXjvbARUFNT9+yq
	 A3gKguhCr+U4CPpj1g8+22q61yKUQAtkRoLGsXpXzrJomOqV9WO/mZBFTO3M5T9Ocv
	 k51u2MExP++clY7qq0RbczaHxUrOhYYdMCq/1LTfu1u0+TGHvQkcKd505yOe8gCiJ3
	 PAy4d0Ywl+scRpSIschJ6qh3rMbmABzI+ISl7qx25wEETiDW0Xx8aQWKQnL41hvw0h
	 3ia4rDa9MelOjI1DtDJcGMhHUd5gX/k8tcGl6cJd+l2QjansYm9czZojkIpGsfSMw3
	 wV1y669Q3od3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0253D690E2
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173278115361.14879.3077360203976674241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12fd4759b3ac7dece94fece32b71d19cf0e8c35e1a4b70ff1fdfe129d4444be7
Date: Thu, 28 Nov 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732781153
