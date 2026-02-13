Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF9123D7E6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770991494; cv=none; b=iJ4NV7OwEPgnyTBDn+KMkeNupaayuNVx9wUMILoCKJanUba7V3enoBvHVumcAWnwoBdJdXLVzwz6hLzsiK0kCH/+qNo6DIywWLFW5+wpx8RSL2cgjoxxg/crwpqzOcO29D429hlM7k7+NxTGgnfv0JKM24Lxv5t2LFBuASsxxuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770991494; c=relaxed/simple;
	bh=Q2FYU6sddmmUDbJBrpC/rKk+i1b3ItDiTEVYCi82S4U=;
	h=To:Subject:From:Message-Id:Date; b=B9f5jMbwXfe7ov2ui5DYSA0nc6tssHSTQF+YbZn3Vls3LKZ0fd0C3QLW+YWGjdrKNfFvcSJ9wfb2Xa2U7YQLWJJxdjbPHZVWvaAo0HQR9vSwdmkbw/Lkaqgxp0Ra+howMyQknD8Qv8Jghkcym6VdJKetCcijl2h8Fm8iwEmkncs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TRGJECDG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TRGJECDG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA733C19424
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770991493;
	bh=Q2FYU6sddmmUDbJBrpC/rKk+i1b3ItDiTEVYCi82S4U=;
	h=To:Subject:From:Date:From;
	b=TRGJECDGZC3RWsblebglVAUCuhj6xES13L1lvDxINPA7VKlZJM8sPStPLiYcRt0J5
	 Yut3Nwq5OL6DRt3EvBClrX8heidk8e942FyXqF/U4M6Z+liJvbKwRLQEAZOVu5ltlI
	 9cFv7qCKqfpePvTeGi/zIq4JYJ1h0xY2Iu0X2oFptUVJA9+5fDZqhsClqvQGhEctgM
	 9j3D8cmfmz70wFQnCicO5GUjYIRvi88+Yi9LNuESyJgYSTVRhgyOYdAqjfsUxSOoKP
	 mx3aG92iBYVCk2lDgXX+zDgWwbfsQnRvMIbwAnGlp+QtS6yNFW9h900pmFYKqWEXYg
	 K7/2kUp6nIXnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95404EDF166
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177099149358.15988.13380753499772857557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c04a78a01c18a2e0369c34bd19b250c16ce4495acb6cd06c419c3316298c748
Date: Fri, 13 Feb 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770991493
