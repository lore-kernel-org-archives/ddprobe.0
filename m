Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7861B3B19
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790389234; cv=none; b=tlm8/1Dp7FRfqhXI7nTLHmWzIkfZLiK5X6gCeNjj11gMVg5xQDjcojSnToumOrgEkBNFizco7l5CRFfzWLAqgJ5tRzVDamxR/GHc3xBADH4ogCinxOqsbPzPPdhucOgqHJ9b+FVNSp5BwMX2r7xLzeBoWww622P4ssY4BR9cqrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790389234; c=relaxed/simple;
	bh=Wr9f5dMDE2teRQeVmIZijfUe93f7F9I3aJEBAIYVdrw=;
	h=To:Subject:From:Message-Id:Date; b=jEBPa+L7vMFBoUJ0MLPTOjpyNI3rYHZyxPqNffcfaFCdikofQ23iKjzMQWbHU9CnODcCrsPNa6IjINlVRY+TaFOc0zs1yPUzmX6nMrZ/21FdbUOsAKZW+7fHl7uYJTL9UHCmy2HaG2n50ooYrQ0Y+tpdLps3wCDlo/89B5lRxoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ThkIwA2e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ThkIwA2e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC3FEC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790389233;
	bh=Wr9f5dMDE2teRQeVmIZijfUe93f7F9I3aJEBAIYVdrw=;
	h=To:Subject:From:Date:From;
	b=ThkIwA2e63wl8dPn5ZzbQ2FassZAqJuQ+wtV8eW1ZXi38RghFdJtTUeGXWbqmIzEw
	 PrslAQxDdV2aZYv+uUa8INKzBnzarT+fGv7V1rYNp4oExHrbkHo9FNhoIpDcC+WTPm
	 kCjAc/n2fRlnPMA0DAZ3pxaKm5o/l+lPr/z/K0j0VYhznfHHcnBEiv+ddsUFkR9KMK
	 EySVb78oCUzBsaOH3+XvEnjEeoO4oomZ+NWdjlFBM2IuXowCYRnCJHWtimBSP2zD9R
	 2o6O08ckW/HkusIigpuxPkARABdvxlPh1NCGxwrpDmorSsyNsGNJfez9/exjmHEA9w
	 kKyTU5xmG0y+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9816C9832A
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179038923368.12013.3970792417081925439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad85d7c9ad38e7ef32dbd614b45945d56d2ebf99e04b64ef6e774a93b1730b71
Date: Sat, 26 Sep 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790389233
