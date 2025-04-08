Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D34158DD8
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744139995; cv=none; b=dTBtYmDcTovPq/PpAz4mfkGsE5qq1/34P5Jo4omzzcXVLASJqW/uEdO6F8ASWqD+bpWpbRQdtFQli8tAltwPtFgQimOkMJOrdfjZdr18y/NU4Nibe8NxOletCfUbwiQparAZwNY3NDObO5u0+GxNDsgX6PJsbvbHGIxLq6/k0mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744139995; c=relaxed/simple;
	bh=JbEapZ802RnBIOxq5A6oRrI+UbeGeZrfiAofBQUp8zY=;
	h=To:Subject:From:Message-Id:Date; b=mq/snqodDTBCY2tc3do6IapekilA67xdW9RRWhVn0tLMky3lWx7ivjFW/bsbSy2fGcOHeNoQqNEyuUQ39SC/oBHqh/HY20BQeGeIpY3webTtguY81aTWmtu6kAg4o9e1IS1h1T/O5vF3izTw+E/Fht4WOqFF//Zk50If19DsUHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dL16Em/r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dL16Em/r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E525C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744139993;
	bh=JbEapZ802RnBIOxq5A6oRrI+UbeGeZrfiAofBQUp8zY=;
	h=To:Subject:From:Date:From;
	b=dL16Em/r9i0TkAiANRXeDwvw97vh9tajWrMIyT6XKRT3/0Fyu/Mx6hIqXGxCOH9sA
	 QiyMv1PImR/K+T1gUWt08I0BlRqhTHPUVfIPdbV5hDAgd9yceOXowIL4QvS4PiEdxf
	 ws5rVIEVCxMhFcshEdKDP0GeJ4FRB3t+SxFEH/We9eXJ6HbbMmPrh7fbZQnsBuCgix
	 hghZcQaqyVdtlOriTMZ7YTXMlI5wraAOId3JIUwdpxL/sTRnCL74od1y+ljX9kJWVb
	 Rb//qQ+hEPwvb1w4mS1W3iuBYss1gx7mEJJnX5bbuSHznPiTrx39UnqaAqNHGCqJPL
	 YKI/GKUxn/irQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9158EC36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174413999358.28790.11408224135154018757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1aab48fc580039d63450c6a0ac5aa433bc6af4a9b17af9a2fcee870c961c42d
Date: Tue, 08 Apr 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744139993
