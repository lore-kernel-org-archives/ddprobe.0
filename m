Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B28255F52
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746194995; cv=none; b=HpgEeTIvIXHyGF+fn3W508Kau8xUJJWrbgYc+DRNuLl/nUGyLmfqsx6IkIMnirHEHzJVO7202v3eVFERsAz6B3Nl/khrdVtivwE4GIyPvD3sHeYq2xLk1ZejksLHm3US7NPUZ08V6/fhKHwZ+Df473QhDc6CtQS+tbBklRSFYNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746194995; c=relaxed/simple;
	bh=U2u1dG2/qr4HebL/tmwygl8mOxyKYmeGPIoXhzlujOg=;
	h=To:Subject:From:Message-Id:Date; b=KA08ubdkP3jhhHA0Zn/2JkmQfVdY63bZBWdDhQnzgOFvedXC5QOrAxH+PUoQ6YfGds12Lo1OzrTPRhNU7lqCyyBfuqxslOWg8KWoLvOP6VoGsvoikXVSpQWMM+B/9cusAC2cFTq+8IWAn9IyYDoJpHa99edbTOo2N6n74Ivh05k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o4RIaUXV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o4RIaUXV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0985C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746194993;
	bh=U2u1dG2/qr4HebL/tmwygl8mOxyKYmeGPIoXhzlujOg=;
	h=To:Subject:From:Date:From;
	b=o4RIaUXVG60C8gfgPKkK6jkFboyL/YqsAb8A1o6oc+9PhF0PyBX2xih16GTgWb1sG
	 W18ytpZ59u+ZPJkkOw3ptDHkw2nxw23KiIgJX3d2i6NgSt0MT9/pqcwiTtuGsV6VpO
	 XsxtgVtxa6f2LdzG4JPOmNQCatZdoLONx5ZmTWBSQ3HXePLli0t2ztHjUGQt9MwJ6v
	 Uo+YsylRIZUe1UsZZjAxcrc8cFYphIZKWBUZ+Zy7FiC5AJQnDy1Pm9eHbUe0+5SBKe
	 /Ss/SS2ESQvTJsEA64uqn+aaGT8uCu4Eir/jFrRzNZUPCMbMg7iCK78cbxgQiCxzM8
	 oSfgVnGNaiTxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945BBC3ABAC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174619499357.11775.344236043488861493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b69cde52f28e3d9230d4d6c326ea3d4e49ef5a0fe79380542bd29e0487e5537
Date: Fri, 02 May 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746194993
