Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F3A1F874F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751357394; cv=none; b=j6dgzm5MEmRE2easdxxb4gH/slzx7dTw/atBmaLhw5xhAlx9abt2xRFAjXD58Gf7gmZYI2bUmXtTEgcajRKFmKV7uw5gMfazSHr8QxwNWb/Bu+wkAZQwB0x8ViyGpqGuSpxCAa2PU+mE5lMH8gG0ZLUQQr3Ce1vXnkTBAsUa34I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751357394; c=relaxed/simple;
	bh=nNj8uc+Eu0w+MRgaBCfV5g8XNz1LhPBhCSRnQSmZzrc=;
	h=To:Subject:From:Message-Id:Date; b=lKpdweHghP6wf3Ir44dwhkGDBLjH+YI5ZR0xbwqSk1kKd/LLL5zbM0XC7SXpQ+TPurSr4rHuaW/micniuE4YH6JeT2nyxdAKIiXPVE5z1isz+bvkWCQnzRDB5t2QJhXmTVx4DmxdBi60SgTRnAzH9iDQvYYVBhhdqsGgIpmtuIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lwXjxVsH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lwXjxVsH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B2DC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751357393;
	bh=nNj8uc+Eu0w+MRgaBCfV5g8XNz1LhPBhCSRnQSmZzrc=;
	h=To:Subject:From:Date:From;
	b=lwXjxVsHsgkXmWedIQ+AKCW0sHT/nFH4105FxNhwJayD3Rn0C1NIXKpm6cdDyPUk/
	 b9KgOvDrIQVJCbYkrqzaorda5r+T4LbKNSjtsidRYTmUxmQem4PKSJWI0S0uRIio6t
	 AmR4djkdsI7Iqveoco2YB6+GewBtDrBcvZKStBeJNpeEZf7OZrAhG9fru9MB79TLq5
	 S312YqBytUc2Std3IxPHObyegIviYc+IBmfDQowjNjbvCZ0SHccfHKCsdpfBb/EUq3
	 uTEdFfSyKt+1BfhTydtW/6k4q7iJoqMyZvnkUE7/PQrwwe+GiMZpmqmFPhjrdiCcUQ
	 d4/Vyz6hndQJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8DEC83038
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175135739357.9371.1847747974453794168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 714b8f6184cfdf0a376cb80ed65a9e268371bc77102a296f47eaecde3ffee6b8
Date: Tue, 01 Jul 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751357393
