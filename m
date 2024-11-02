Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECF4F2B9A4
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730534754; cv=none; b=gluHMx0Kbpeq+IuKBdx6WLKc7ZiEbNAblpTlorUrSzDMmlpBUI6AGtPvXmYq+DbWht5+kO0SaAVORfnwsV3Ot3vBkfjVOLTlEGBA2DhZzEri3wxVFlsQFMxoVgqglYGnrhPj76NCeGyREOThjGg9I992JRHRZZoH+ONozcnRhH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730534754; c=relaxed/simple;
	bh=8MehRILxCFc++Jp+zsh6KYNAXmx7PebyeAxYOzDxFKA=;
	h=To:Subject:From:Message-Id:Date; b=gUNBwGErgA5d9kZjYnDBID5wTqu0r5kyePGvAuWQGRotGlZ4j3n/kdgSdQTfv42O5LZZiBv/HIlCe13dh8ml4CZWyAFQHfk6lyzNfViaT8INKhil0GGqbwW0xi9CUmajIRSgVZbbUGjcbaRtV4FDm1tarmmYMhiywnKQiZ9Shdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KKK0Ih1U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KKK0Ih1U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DCAC4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730534753;
	bh=8MehRILxCFc++Jp+zsh6KYNAXmx7PebyeAxYOzDxFKA=;
	h=To:Subject:From:Date:From;
	b=KKK0Ih1UFSdpKJMEvK7PVv8CmoF9yy/Ft2PyPnmo7i/G30keDQDcuvd0KfPAdVVRr
	 pd6MQIy0mbmJoFeMYXyestUeSCmLeIlRugs5T73n2ePTWLdeO8rCvrDRio2hcvud5k
	 drMduFDfDgOaAWTb/i3HbKnvhr0YuvkuaoqETsmn1GTGAuaYae+l0cFsBpiYriWWvA
	 7S1wcbZBWPVjD0mWHcNRuP1e5EOfD8HViGK/kNlKQpqytZf7KkmkoWJp/THy2B8Lis
	 kQ/bhjjuqeWY0NUWgzRYaqrbPP05hUOXfaTwKh6Kwjjwv18gV+to1Hyj+dCoQ8ODf+
	 sTtU+qmHVvdug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E4AE677EE
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173053475358.18675.7172273302362330985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0e84f5ea4589db1101c7b56524f64a4608d778a4843e20fa01a2220a10a3c60
Date: Sat, 02 Nov 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730534753
