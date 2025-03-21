Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F7623370F
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742596195; cv=none; b=c7Z28VwZv9PBU3Z3v+PljxwHET82BxnX9ZoVKVJHY7bkIq7xhb/05CeE/6c8S119PVcMda6IprQF9um6+mMTWvTMa2fgohkov69Maq1aikwJBG1L7yBPlJqL1beKn9R3SaI1TCn0Jp5qWgk5K1s9AECswbIUm32Zg0u3yAfNUHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742596195; c=relaxed/simple;
	bh=qO9+3rdSV46traW5+TGJJrBCIx7oEzkzcuH+AIqgz98=;
	h=To:Subject:From:Message-Id:Date; b=lDJZIh4I8SBp6YomlYvI4QE5whl5JK0NYJIY6KuLEtSA5IeoEzyM2ZEvucunaHYanvJSPheC1/UhS9tGIkBVZwuqflO2Qjt13N/wkZjZjN5gxm4a2XGzOGgAw3D15h8xX2eQkNyOhUY7DmnEGie4ZPE1UIjLN5UAH4yPzQmyUnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=STrjoCIM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="STrjoCIM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B24E3C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742596193;
	bh=qO9+3rdSV46traW5+TGJJrBCIx7oEzkzcuH+AIqgz98=;
	h=To:Subject:From:Date:From;
	b=STrjoCIMfDfpLrY7KrIBvREd+YVawoL60wJd1jSKyC8WQ57UR+ifVROkvDtX+3j17
	 ssO3vHRdmZtn1LmA8BvShRbac66KZrpbJ+gT+dQUpWxGohU7VXHUiiH2/COTo50q0O
	 q8todXUd5OQnoUJ+iLL8sowZp3YI9PEv55p1rQBCoIjYtdlVnovHb1Qc+xxZ001E9N
	 dOYCLO3r3uxXe3tGX6Ro91jq0BQp2c45EVU3CIOxG5xm4x2vg0gpr5lKzOQOtrdUtN
	 x0BPYs5+MXxPosSOT1EhL6LLddUdI40+ssPH+OB62XUpQqFl7fH9RXrBhzmw64dGEW
	 zAQ8xahVBg0jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D590C36001
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174259619362.6530.16744227893409932368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 476dae863acbdaedfff712583335cf74cd480f537100fe8b443af45b0cffe6c9
Date: Fri, 21 Mar 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742596193
