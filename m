Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA043201
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721454354; cv=none; b=mDiN/iXwfPv3eXBnAZmCJAem8r1UrIasNrR6NEnEUZTNziXuVGFRFq58PbojSCAz1QQ5SWAwAP/Lxszk2QU4RH0zD6wvZpMbrOtd1ebTdVRJe8V4Fx9Z05ozwXFC107I8vA5E8tltk1ji2q6TyQSED/I2D7twmp1asWOp3/LLeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721454354; c=relaxed/simple;
	bh=Of0+wFyy0wFm2S16D7uviu1vxRay9FOWBJQzvRibqHI=;
	h=To:Subject:From:Message-Id:Date; b=t4u8RZgLcK4CB3BkuhiwxZ3SxzjJONJr5krTSxIwVw4ltVxboNakgC+1aKQ2lwV424B96Z21KgVY/oL6gJ2pPpnere/bKef7dNKWkvuZOQhjLPxYZE3sHN1ovkeXLuNCdPNx+0lGtnJWoIqzKH34xR0f+ZnaBnBwlTmrVLTkHwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UzT6WI2B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UzT6WI2B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF606C4AF0A
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721454353;
	bh=Of0+wFyy0wFm2S16D7uviu1vxRay9FOWBJQzvRibqHI=;
	h=To:Subject:From:Date:From;
	b=UzT6WI2BJ5X3UWnTB6CgVwvK1ntIIYSfZ+CdoyLo81Yee/SlEfsjSnDOHhmEYp1zg
	 nkJT+5XYOmLWOAMGfG2gksiH6VlReM/438GetzV8PH+50CpRMSLM7CzuK1ytJhkOV6
	 9dDw94LkqWV2+Z5lPBnbNXZk5PVsbDJSkARd3MuosfEjsBYTHQSsyGVO8kivN1oKsR
	 NuCSuKN5K0VvamN5c0II3sjZbkkaC3iFa8b58Jdp6gf0m/7MAwOGGIRpS1AU1ebaW0
	 t9F7gG5U/WbDUm02Jck10UeQhYvbhLXjrcPi9l6IIPqWTUffHeiMDxn253idqfkdtK
	 jsrxrNKOH6/2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 989E0C3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172145435359.30237.13986903380203395848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c672aa373cea89b45db5de62edb46bd563349b3d82c6bdf0791fa57bf2f65ba5
Date: Sat, 20 Jul 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721454353
