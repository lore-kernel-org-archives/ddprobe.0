Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25258377A92
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788661834; cv=none; b=ibx0UBMVXud197nnBL/MZ6rj9mqkzeajiKbRW79JV7iQkk7xt1o0U3ghOtF9S/R05ffUlcpQVMqXVb++p7RNrXtdb13N+avZt32dJT8A5JXBJ3hDHFXaNTktXw2XAyzx8vGPSz015r1dOBn6Fx0vwISTR6ak6aWdGDvEf4CiS/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788661834; c=relaxed/simple;
	bh=deJ0ysKSHbOqu+DDQHVAbE21EoAkm8vn6MKDb6qM4Iw=;
	h=To:Subject:From:Message-Id:Date; b=ql8p7R0qW87GCuoIaMXwY9HIJp24kZIx12v8pgoSMpwMbKiQ2PMADfvNmaHhMXwuiN6LPFv47ho8V85sDYfDLQTx74bnAe8/6d49hPveNtvRSsnhlDquwCNKNkGsVj/V5T2HYcleS3puLSHRX5rxQtN8AMDGLRozp6Tw1GfimPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ItLMYCTX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ItLMYCTX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA596C2BCF7
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788661833;
	bh=deJ0ysKSHbOqu+DDQHVAbE21EoAkm8vn6MKDb6qM4Iw=;
	h=To:Subject:From:Date:From;
	b=ItLMYCTXzMkYCATFNAweiVdIC9Axz1aTAG/WI9EL/5kCSnH0q7POphQlnMSsJJFuB
	 GDko3RBy8/fU/hw6BLHm5CEPXsmHdJESEAZ7brERtvTj34c3A5zXAw+jpLmehHCCZG
	 eVxP6fdc3jRs4b9zz6Gg/8fSUmJsThSrj0FyCV8/F/97VOtzvH00iMkFCLLQ19WvRj
	 mZrUngLmHdDZNy8s0MUSDOALD0vQpS3/VuoRHBfJcPkx3NZ07eFVnxJ+sO7uA4sE9+
	 AeeTZATGp9GRKRGQHsjkg+OZDZ7Yr/mWFJok6a2f91jgK5U2xuCKNRcA9tt+i2Uy6q
	 y2WeMDRvrxRaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABB9C624DB
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178866183368.26449.13925238310108131952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de582b891bb7a7dc54b3261e683e3897f3014694091a3d5227483f81dd12a215
Date: Sun, 06 Sep 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788661833
