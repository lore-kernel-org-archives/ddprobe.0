Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241A119882C
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731569154; cv=none; b=CuUbTlHP9BusaTK1AfgIX6qjI8i50zjERqknIPIPKDrgKzV1aReAPOJL0Gnc66TLQzFApwBhP6TkDmZ/Lzw4goJha6+NLU8yfSkbpgOhd1GZoJ2DfBgRvqBKKRXsTXplPpOFkc7dfkgSCQm79xc1N/z/JXdgnK2S6Pq+MdKFdN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731569154; c=relaxed/simple;
	bh=swAzrx6FrlXR9u9hGGlC0Yd7o+OcMlW6Rj5zaHQ2T+s=;
	h=To:Subject:From:Message-Id:Date; b=Orrb3Y2NNDzXfi3rTdt9vUo9RID6v7sI+VCJk9sL7aaoQez4I5ZQ4ol6nuT20lGpPvP2eIidkq2GddktRtsQ3zIwm/Jy5eGuZORnBzeGQavteBlCg3Pb6JFSv+KCPUkvbvcd9f1TohuhpPu+cWOUzKIU6FdXrXldy3oT9JSxoF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OY5HYqrs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OY5HYqrs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA70CC4CECF
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731569153;
	bh=swAzrx6FrlXR9u9hGGlC0Yd7o+OcMlW6Rj5zaHQ2T+s=;
	h=To:Subject:From:Date:From;
	b=OY5HYqrsGS+d9+q8T4VugbNHI2JWD8C80YbgV+wnEXt7RjOJGBx+sQzXd49kIru9N
	 GOEIRo1/w50bjYzsWiImOesvFOp+51HywNsOB+4d1TjSbu+eR3EXRnHoogJAOArulj
	 7ipOjn3ndf32YvHl/uurU7cauHSjrVHIB1i5eikNaF+ROq8gvkxn0NXhqypjgViHn/
	 wAuUfdGlIeXNUGRRahFRWF4tNLLxfR06B2Lg1fQqDUJBVAVmoIcZ+3VXz4RhRasE0K
	 NGUkiT//rnAwQmR4fZyxfutUelXgwFpDoAE4Z6ay4DBjRL3IQBdfPKGAqGzDMgfu8n
	 04NtNfoBvpDXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98AE0D65C56
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173156915361.22597.3797016186436241895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e23bcf699892aecd9729044a2531f63b7480ef995b30b299b1f4c9b4b9d421dc
Date: Thu, 14 Nov 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731569153
