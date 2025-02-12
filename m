Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AB77126C05
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 23:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739404134; cv=none; b=fnl/JP9ouWYVRJhgWFdXZDgL/xVXMaGfO5NdAKnSM89kM9uDBDUxM0BPU0AeRDZtaoxWCfkmcOwyRD8xsGjWPSjZ93P2BNDW4BfKZuZXSpQREhsZTbsmddTn90kkeqarD3djpisYacZNC9vHkKlFo+UfPt+umzGDt7R7CB+8ec0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739404134; c=relaxed/simple;
	bh=+EBkBZ9+SGuUGr+tXPwtcDuvLxivWfZ2pfGs2KvOWOw=;
	h=To:Subject:From:Message-Id:Date; b=VGuyZ0c8xS1oLJVgANmsof3ngf7oIyxubGw2oOJyVrU1phk2J8N3VQHwJ3KBKCEab0d3E9rRRUVY8osujMs5G4bmDzVyl6taWxscB8lYZkjTRAOW59u4uMSQ8iDAhk4Zng/Wl9mgDwpnPyq9051DpIiOIbK5RUv4CLIP/jeDNvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6zEajUG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6zEajUG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7D1C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 23:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739404133;
	bh=+EBkBZ9+SGuUGr+tXPwtcDuvLxivWfZ2pfGs2KvOWOw=;
	h=To:Subject:From:Date:From;
	b=l6zEajUGTFzO3x3rAjCmV060nR4n/85Cl+BK4plXWn4JuvCp87Q/uJXHEPVYkLM1G
	 MTBCCGa8COz8iWumDzvfHjKE9OguP2pnMkVD/oXW2BSU/MTGJSSgW+/JqVfv8B9ZXW
	 UnjtgxmwwDY+rTWaIVQvK/kiaeJ90rrmayhs7hA+tTpkpNQyGucIXassMfwz/mTL8q
	 AJ0oW9qNvJazjP+EGBnWqIKxv+98ClzfH5sfX0oe4RpjyY6MP1SLU5vVBVhvsXQ2wV
	 D+U/vvMVCwZr3ORNq5mffIsg59lQ9T+LQ8DncyPI7W6XMerfWPslnUYWcpEQPiaY56
	 rw4EvNrAwT0tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4A4C02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 23:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173940413364.18497.6094093277070212921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dfee3c9e2943734df391791f1203d3d1fe980f37d2208afe3d0e4beec4ccad0
Date: Wed, 12 Feb 2025 23:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739404133
