Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D71093F54D1
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 16:27:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777652855; cv=none; b=Ko9lxnBkPaLUDAS++QaJEJAh6Y+gwgyZsXRUChStlAw65B6ximOLWdv4lo+ANL3UgxUTdT46dKkePZh/O7t7r1OYdX/YLmGytt0JXeXD0TPKL1/36LuLk4wXrHazEJvTEKf7HDyZtrVB+bk9WnxxtkLBuRFHvC5AfRdUiGHDOTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777652855; c=relaxed/simple;
	bh=VL7NnqPXsEcXH4nvln/mEoamFMpAzW/5dmDeGQmYpRA=;
	h=To:Subject:From:Message-Id:Date; b=YVoTyWS8I+Je9hIpNDeEeinklMbpwa70CuRx10ztt6CWMds0qC0f0v+lkUZNKKOfKKmOXXPLtp5xIIwhAO67Op5IssNDJHjNYC9KepaYsebN70ZpD2l1qABfp9pjBjITL3nPIRawDS50UfsziLM6PEWpNRFKSXGi9n9bqg2BoQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FLeKjDnw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FLeKjDnw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8AFFC2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 16:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777652853;
	bh=VL7NnqPXsEcXH4nvln/mEoamFMpAzW/5dmDeGQmYpRA=;
	h=To:Subject:From:Date:From;
	b=FLeKjDnwtv6/Yp3P83943DXLwDl/KXnpg6pFNzuq+Xxrs8xqmoH/ErVCm38Dr5P2X
	 pNcV0bVb4YrFoIBGGX51RLecAV/SWpRvFFjvXAfzdhkVMpyJU44MQSNIcTXyZl/Ydv
	 GNzJWtlGXkSDowv9Px+UFWpS8maIj2v6ABgm6PzSQf8uo/vSKe5UZ3sPZGSpZT6eXa
	 9bcxUzB+lka4m59dhxYXOjbWktOLZEhpIMU6jjcDGk2UAdhWEiWl7oEqYtgHzkNFMz
	 eyEoizCrBLRMkHlccceDs73sh7Yro6n2Pt6EgvWO8FrPbHB1E1Q1qKdn3giOj1Xekh
	 EvAyC43c5MKaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA885CD3423
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 16:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177765285368.19441.6919548846009412314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 512c1dd9a07742ef436ca4a8cdaf0ff25df220ac0033f0fd10b1ca5339dfc3cd
Date: Fri, 01 May 2026 16:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777652853
