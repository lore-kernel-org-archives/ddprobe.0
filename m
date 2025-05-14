Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449161DDC1B
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747187994; cv=none; b=qCskhgwcEASRSissSMhjzZAZZMpnzLqiaisj/z6ixd6xNCwaxTa6xTjiF+A330LhY4StDYSjt4/MpEqvhqMCxh7eKn3ZVA+KLHcmo3BPZxrOorxs/03Z/FOfkONz1q6ncyFWUOo7rlf/rvLLYVMw69Q7SCAq6wwpRdFNFuh5UtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747187994; c=relaxed/simple;
	bh=iBiw/JMlBuenrHISIVpuqqbcrediTrYl7En6MIKj+jA=;
	h=To:Subject:From:Message-Id:Date; b=hHS7Sep8JXVfy0yz5dZSH9C77Opf6jEUL0iK3ttShCMnSjsuPvTz4AYqzATBXF1BXRYCa97P9Nz5aFVR9+uHicuL4b3WsQYfVXWsHN9IFXZPXf/W+UG7IJQUG/a6lLZ9LbIEAs5EeNYlq8Xo5pRA2ocPPEK9Tckg97xgy3HeJFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OPo8qv9J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OPo8qv9J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A119CC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747187993;
	bh=iBiw/JMlBuenrHISIVpuqqbcrediTrYl7En6MIKj+jA=;
	h=To:Subject:From:Date:From;
	b=OPo8qv9JFArW9Lb08/YsII+xyJUb4+NZw7aE538dne4fmk6BH/aGFEM6eIwcSueXA
	 x9BPxxwqviaFCCyjALVPEHPibKWvVyOFGP9ukKTE6SmlAWK/6Q/Y4G3RCcdw8EfbrG
	 0DmQQIxaFbtdjqE3uY867EvJc/LLmKv0sGKj1dZgqnjuUJpov3svukFymfqG3SH/EP
	 rfSJs5QcFsPqfWUFqzGa9JFkleoa8HpVAeNu4LVQ/kM1c+qHkmO+vgACLDJeU2tITo
	 LmEelyzVqtNfdquv6PK8HoSnzcHT1V2NRpwb6RGepq590jEywLEik+9kjgCmA0wcQa
	 zk3/eq9twweAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA7BC3ABC3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174718799357.11238.2942384890105744848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 679213d942c8f288e28eae52bd12c465d8f1e45b681967329e2b8ffd5a753e3c
Date: Wed, 14 May 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747187993
