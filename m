Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172B5264602
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758611996; cv=none; b=VZjOlyv666lDqoATQjIZao1n4prqYOpx6oa14FvaoWzP2qiU0oHaC/BlZrACKP3iKLCZMSwbBxIrpnVBJSWlBy0kKy2T81jqhZCM7qD3xCTgcA3THDjkGZs9VA1BXafevnh0oCSTk9mo3evmCW23S1zerBPVg9WNzsp3tQlzCxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758611996; c=relaxed/simple;
	bh=M8pQ6rUZkC8XdQAGd3KxWyS6BsFbJO1WHFODH7aQTI0=;
	h=To:Subject:From:Message-Id:Date; b=PFQIXafSvSOcEDZ2ZUjU+bEBydJz70XN/rexulHtoblKqCamD/A8aCaOT1IwsKG16zdPfxph5PiJkifgmWud16TZ1doVzT7q7WmdrKqlstmmotzFMW87bQlMmGOUyr4qaylqdMAqNegivPBvcevkNzAODmK5NcXY1D61SvVOwNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ES1MuVHG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ES1MuVHG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BB5C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758611993;
	bh=M8pQ6rUZkC8XdQAGd3KxWyS6BsFbJO1WHFODH7aQTI0=;
	h=To:Subject:From:Date:From;
	b=ES1MuVHG+7Z5U/NHxgp+0bvi8WqOX1Tl2gvjAuVAsdHn4Td7WwFInB3KKaRPDMrHI
	 Dhgz8mTdPxjbsbCZ5g59dpOP+2GLU4XKc4NXGy4TQE9yny4/mMbpzH1luB80bEab79
	 Y3uLKvGiFlOA5blODx2BEa1ybb2h2ca3VFshb9H2p5kPdC8cxTmtPIV4LSOujyngVy
	 B1rfdNSm/4dDC/pdNP2Q+KBr65e0D76DHAyiRBjm6eiGapNjrgjr6RWvinh0/ShmLR
	 /rKA6y7EjAP02s2ISYniqbh+uUFDLCz92URUAjs+UqYdU/n4rcTOTk0RBSKLvmaL/5
	 QaGcjiF1hf27Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90454CAC5A5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175861199358.18573.5116936892763639055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76cc8554567432744b8272cb6b84d2041155903e482441ca6422c12ef45c6ed6
Date: Tue, 23 Sep 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758611993
