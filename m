Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FA91C3BEB
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748987394; cv=none; b=DW0mzjpawIL/FGCpRs/CIHPXN4Xe2jCCvEqyR8kDWh8ui+3+0bEMLAMQOw+JzpcFSlubHhnP1mYOefqEv+zzbylfLK19BEHUKMRKTlk8rGLGfJEDerAw4LhvTWI0i/ja1gsiW/PCxjWgJYNXiRLKc2TE5z6T0lTXt9mQZdwRCAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748987394; c=relaxed/simple;
	bh=QzoATHdBhYG+3rWsouKds7kPD6n44vgQmuaJMlImZbw=;
	h=To:Subject:From:Message-Id:Date; b=BcsTJi+qr3113H6lKy1xFeocabblKsJqF/QoZ6Fr7d49nqZ7mEz6OQcKYYMcJTjpzuIuVLM2Yo1hET5AcQMuFM77eCkuCy/SYwkyaPV/5ONgFQXFFMHmMUgV/H5dIm18feTxWmBrDBjIlvtf34l5qa8fpuAQ2KXQBtuFou6P0Gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S6gvDIp9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S6gvDIp9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3202C2BCB6
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748987393;
	bh=QzoATHdBhYG+3rWsouKds7kPD6n44vgQmuaJMlImZbw=;
	h=To:Subject:From:Date:From;
	b=S6gvDIp94cszfnxUnLxX07NA2hIsfyeC0NefR28SvQEoNexM9IDU9JwluulGg7UHi
	 QpaUa0lvODpPmWBRoS/Qf+WT17KNArFmKN74iL2+ZR7CyLBPYwNYheVDhTANN3s+vY
	 oblrwPY/Ucz6CSduYNuG6SmCwsTbzp1rpyQpNJAZc03UaVn1cAEBkw+5Cnag8UCekS
	 nM0JQdb3j1TpYfZLyfQwp/RLIx3DLhw5DLscOo+I5WQT8R632853SysrtVtgBj6A6n
	 DtT3U9kqFF7cOAnTAXKMzXdYbgLbrnH/XXg+4HR57nC5BLv6bSTSCNREDbNj9IJZzq
	 TmwuqWDl59adQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B80C5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174898739359.19034.2664068943153811531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b790c7bb9bb00b86eafd1aa83b6138ca470a81d3ec46c55bf7c1929bacfa169b
Date: Tue, 03 Jun 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748987393
