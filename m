Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0B914F12C
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725188154; cv=none; b=MAAXoak4bS2RLsPzItINoPiDKWORRW1kDdR5voJZJkve1XasEaKvVTjRsz9GkmaECHjGGNFknK87J13BfVrFeyJqu3hmTkE3C3ktMgBLZZyJq3vIn2DllA82pOeUG6fqjKguzd+QrluoYR8AJrdQpWJ0rOIRD/JyKmK/V8DrHfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725188154; c=relaxed/simple;
	bh=Vq/q+OEkjU6jdZOBaQMfHwpMPQ+yIdV/0GTK8pLlXig=;
	h=To:Subject:From:Message-Id:Date; b=XleGdcLnr+nErp7FlvcGfPxL1mbK672J7TwQV6a0pDtMB9/J3PBmgAD7ztWTjrXM2E7aa7bQoVII52Grohwu/PY0DVGjeoSkFRdpW5tEjrufvP2rs3y/EcW7HtpMXLLCkL9L6iTmeLW3yFSPAPadveabFTIncuQfzoVmaPlM/XY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AemXVF3f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AemXVF3f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A909CC4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725188153;
	bh=Vq/q+OEkjU6jdZOBaQMfHwpMPQ+yIdV/0GTK8pLlXig=;
	h=To:Subject:From:Date:From;
	b=AemXVF3fFwhh5SuFGLLTv9wHJX1xsioiX35j5UsBlVS4kiWbj6eleRlCc4XuJN/Kp
	 V9N0KCIMPAJFvx4DUCEkHwg+MiRCbtcC9+In1gNw8GyMfX/1/bPW5OhNJI/5l9fXmD
	 FV5KkdZ5xttEslCfyJDGszcPHJFMvsWkqKBy622T/TertN403mslaVgUYdK27h9ni6
	 h+TYw5kue7R9dY6r+VbI1c68o22UCIrloII6ojvximKzlVGwMs9mcnbDBjI5aH70EU
	 EAckcoyX0TBdTvlunKrDbid9PI5LMzLGsDGbR56ArP2kNX1j7KolZJjloqsm4rZLBU
	 b79C1ckOe3j4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960F9CA101E
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172518815360.15760.7929169929230273054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d0f640f43de62a60704c02960f2dbda2b83ff0bcb860a4b840e72e03c9978aa
Date: Sun, 01 Sep 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725188153
