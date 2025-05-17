Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4756B4B1E6D
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747455594; cv=none; b=fA7LIGhBWjey+M4JQVX3wbwqlECiDkID8ayeDsJ1pUvtZDahp3Ko4Mh9hetvmOgC2UGJ8NX/ixb59p/kvx3xUBBpxxhOj7eCD5roLZOj0rzTRzXauCScSp5yJsA1uvajYKmtpfAD62R8XF5xO/ayscN6ScU76/c1iqdZ8PGqHCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747455594; c=relaxed/simple;
	bh=V1dOkHEwfxtq2uUc++8FmwX93K4LQ/BTryzrHdESDks=;
	h=To:Subject:From:Message-Id:Date; b=c6MUSjEaAUCuXJE/btmrvWibFrp8SDWUVPWnXgspNPOAZGDqIqJmc1Wm+nC02GJV6t33pdrRTmqlqw3ibgWiY9ODbubvG3x+8ZTRSXakSsqljqdb3H9bI0nPMuxqSm+YZ7jjMSXYW+HZ6CUZUaCtdljjb72rlf6FkGxl/Mpvavc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=llQ/sGsI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="llQ/sGsI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3C8C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747455593;
	bh=V1dOkHEwfxtq2uUc++8FmwX93K4LQ/BTryzrHdESDks=;
	h=To:Subject:From:Date:From;
	b=llQ/sGsI1Vi9XvouSu+k+iW3lO89fKJn6SIDnklUwKujUbW0UUIvts3gfBq+EX9em
	 VOxVoRA3mVLbpe3p0flruVEVzcj10Y8SDD7mMwOKN4xnEh9Dq4aqynW5pt+j9hNevR
	 cif7qcB4/50hy8xcggkj00U9uz3VeADyfl91u5xIVdU91eKp+YImGOapEWw6rdU2BQ
	 zelVxA/lq1c1UamN0HhB1kBN+QsXUj7DIYFH9BhH3az/w/C6bAU/qzl8SIlqO3efxQ
	 jbDW2DzF8Q/8cGecJ2rj9ZzWPhEXaZOAxQzTmGymadFKZdgTO91Dy1uoo8ZZYgyQy8
	 HrJfY4V4gNhdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95778C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174745559358.11981.1229735679883303125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44dbdb21f25132fc55e420b652cea2e43ad66c684d3165918c5a474283ac489a
Date: Sat, 17 May 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747455593
