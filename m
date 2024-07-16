Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 622AD33C5
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 04:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721102723; cv=none; b=oZvSNs2l1DotAuD72LMCfbqqnBGVHko+Rkl6dIjipFEobDhpBHvl8CC8DWhWAajLUmBoP0vN7Ir+SyYKIpTMUKXmpMn1KcVeoFgThqocDLgRs2wpmzsWQttaArSvuLA2rIQDrIfxJsmY+Z6q+Xc+EUvOdJlV8spC5exNNBziA9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721102723; c=relaxed/simple;
	bh=w7z2g5dNnvLZPKbaHvy0rg+9w3nm6bA/CkXkmg54D9o=;
	h=To:Subject:From:Message-Id:Date; b=ts9dp+KqK3UdwpRU//rC2i31bN9UC2WGx6pwFVN4MIGTRGyZIGGPk3fddY3XsrzEx4AfQcLJJofE/7X1rR9K7ib7qSuVUWVi+OOVpJKIaL2YZac+Zo8uohd18LeWHTqWYAtWiNTT35ju9ZkOglKvn1CPGp510FZXSnRjJ0HReII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJ+hFUyr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJ+hFUyr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E056FC116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 04:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721102722;
	bh=w7z2g5dNnvLZPKbaHvy0rg+9w3nm6bA/CkXkmg54D9o=;
	h=To:Subject:From:Date:From;
	b=TJ+hFUyrmG5hzbQeKpB67UXipxcvaNB0Fwzg4GtlKhZn2b4/skFEAz3bmx7sPc4cC
	 VPeH7jA6DHdNv+KFG9BpPlNjTFxdMSkyDiB9/H/Bzgl7DIOSLW8PNVaBISk1Y5jIKm
	 GOcX8dSD+FzwEh2VqPs3ryE7940I7uXDL2tQRqMDmoH2MpapiP5QD2x2CTH5d4hR6P
	 AoWlP5WHcubaWyLvATkhOA7DEUwedVbEHCPn9RWYeWpGCVJf0ZZ20ZDSlIYhfY3wSR
	 K07m4qWfrx45HgPdaoOBZU4+NYRZPdpvaNBTCVQjA0td6fKQeP+MgKlp5u2n7aLwWp
	 cbBOQjWIJ1I3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9E33C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 04:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172110272281.14148.600872980226579718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a47b9be9e77fed3e129b4b3b792e34b0c3b44a231611cbac4fe7b75646c9ce2
Date: Tue, 16 Jul 2024 04:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721102722
