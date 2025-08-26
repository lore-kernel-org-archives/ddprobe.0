Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A3726A09F
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756244394; cv=none; b=gDgyKQ/Xo0J/iARZNsV7RGFhrXq/VO/39BO+X2x0FMyZF+oM2X82FLSkOAHcZpzrw4BpkCYUQh9NNjjQPudMJnbWoZfO31FgJ16rle7O+kCiDACCklMOVa4O3Ze7VTH80Cl9e9WFm2WcV+p/9WyYBJJpEnZW9pW59LKvku988i0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756244394; c=relaxed/simple;
	bh=CsiwIBZ4bw2qpvi51dUbW2QL/3dC1u9O7Mb46+XOsr4=;
	h=To:Subject:From:Message-Id:Date; b=coIl//cdIH/Yu/EPTXRMLUvX3fRh0GDAZjWQWgPNuEUcYDy7BkpmS/+HZ7M3SAiT3jZfPZd3KLzvY+c+Z/y34cHVw3dttL0etKwVQx7bFGScneFwzrOUuOp+M59TQU0iB54r+Sj3XXPBWuhffuAsf5g2hmTl47xNhEWbji5e1/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SvwFAdGA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SvwFAdGA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F17C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756244393;
	bh=CsiwIBZ4bw2qpvi51dUbW2QL/3dC1u9O7Mb46+XOsr4=;
	h=To:Subject:From:Date:From;
	b=SvwFAdGAZvwwgwRCWT+QdYm4fF3h4UKlD70eH7A0d65HSb1fRiSyBvbX+T9llHBpA
	 9/OohWDcrj1dF93pohikaswm9Fr9y5siglcJfA6FAnFcZhvTh15NAhgzzzjZuCnH13
	 x/jgCyzMm0eCoFfclqrpUwOng0nKpEeF3ZGnkmMj7RCnwMapc/H74eTKaSWQh66AyJ
	 oJWWF0wmEOlYdRgMIqdGKZFLX4634Wp1zaYI2ufTzYdAx9yAvYDg7ZKwVedQ3mh/g/
	 C2wotrDVkLYd4nbcd4/whtM/LdvkMNeugu2Hp94Aba/fRZO4iw0QHWYut/4KClHJ1h
	 XfnQOLRAAeOoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9256DCA0FF0
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175624439357.29955.12683481464453852662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e4d8102038ce290388a45d8a215d3e47d188aecad39abad5318e2b854bda23a
Date: Tue, 26 Aug 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756244393
