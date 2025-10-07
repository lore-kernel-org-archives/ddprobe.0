Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3397E1F463E
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759868994; cv=none; b=oGjhPCpL3knG2Gjs/MXusQrvOJzvIc8LUg+D3s/0jx7e2GEFK6WZ/esOAYZc/usaHt0ywvDGE0m8WjWOejBoyt3Wy+TJvqWCb69LcLUgwQZGhiqDFlAvGLg28fX8WCpy07S/ZgSDvd/m13Ge4b6CSKVYNyo6ILwRietRM7pOXHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759868994; c=relaxed/simple;
	bh=zMwb0/+euCfM0IG/LfCVbNxUwLTCV5xkrnxEEMdjdrY=;
	h=To:Subject:From:Message-Id:Date; b=Ml+tqkaYq3adPp4A8+cPrtYugvDRcDB8wIYH/DVgVBq+Teje0pO/mqgbBY9gHYv0OdvOZWWTuYBgGFvNG8Wv+ZCG7K0QZvUUnp0wJoZSb6L0jRWj9TwdH9MkIKSe8s/aKVx7TnoScj01cZgrwlLb8+PC0H8OIcbFJcNjCmYNJU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U/fiIvib; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U/fiIvib"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60D8C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759868993;
	bh=zMwb0/+euCfM0IG/LfCVbNxUwLTCV5xkrnxEEMdjdrY=;
	h=To:Subject:From:Date:From;
	b=U/fiIvibHZGrAFupkDoVb1jcRsl9m65hX9OTKgcTMlmUDxxIAt8ajrIUorph9rc8O
	 F8eNZRkp6fAcwa/3WbFJoD/R+lf/XUnrgvU2ZZqYZDytKtT/0dJNmUErEvOsmB1c5w
	 +67uxOxemkVqdJ2A+0r+MqzF9oi0tDZ4IIRgogP2eT2gODzhvWF+hbjqNXdUwQDJ6i
	 YF4cxEV7qYl2Ml/32sIAtl8yG5Grl3DHsy6ZMtd3hHhmx1EGxEanx08FzCPCWtn3OU
	 mIOkFwbydJAWBH+t6vZ1EtGozbw6cAF+OivKpiRPIPuAI+6bokr9epG9qAfELQRUca
	 XYFbj7VUTThTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918F5CCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175986899358.14428.17941078054003924495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faf6a408e655bd7278c17a8f0bed4d1136c2e6f54d9264aa774d045452625877
Date: Tue, 07 Oct 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759868993
