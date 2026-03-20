Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 106C6288D0
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773965694; cv=none; b=lsEbiSz+Ie18Iyosa73aiWG2L93mpcb3D5zkJ0otMWMjX0J36iw1f7lkxsLpUTXFQtVcu6RmiELZX+wHZdfGh40JxHkEIVlJrFNYEfnchqbavLizyLluhwPymqu6Qq8MwA43FEQAVB/nbYNZ0Yz3De/bnbNak0XA1BD3chXcMfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773965694; c=relaxed/simple;
	bh=riBcRJb6+L4O6+m5TD3+2MAQNc1gcUwQye7eUB8Edv4=;
	h=To:Subject:From:Message-Id:Date; b=h7EP5m6t6pXnchizMm8teYj3/3yxhtIVr/IWJkJ2vH+t5Xez+XP+W2cwZD5iGxm/RehKic6RSVDXuSrmHjgdWfMDi6oy/t4g0HeKB3eUOeLvDJ1AhJj5o4M+/CmLfmVANw5Y/he7H/RGdP09RSN1ZmQtSlZon9pI9CEyPArEAfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KBW/Z0id; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KBW/Z0id"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A996DC19424
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773965693;
	bh=riBcRJb6+L4O6+m5TD3+2MAQNc1gcUwQye7eUB8Edv4=;
	h=To:Subject:From:Date:From;
	b=KBW/Z0idi27w/hABPN5u5P6mXT1i1u0OITPNkZpsF6BWhTlM2VmgyHo8j1lCwVPlF
	 /yU9Wj0ElcRc27/snVFImsA3XX1MCCH6ZN0zzM8+wzIrepNzu6B55DEADk6DuIM8nW
	 yWJ7C9wJ9DO8S+bojymorhx94ZoecJsExPBz2QNsz1YkDK3ofUYgriy6IPAI4plXEW
	 MiSjkW+k5hIQediq5nuFwyTu9w/gERB3mn6R60z97GJgJdRqQKL1a3AH5M+KlZADsF
	 JorBxDQhfRXQs95WzCZb4zYNxifSTEUFw8bSaDHBbw/NEqbYAGENXGN/OMMdxVsuAd
	 yWp3DloOwmDKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9731C1091936
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177396569358.24043.15663092683110865495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c693cab98e18c0578e868174a34120c7a7aeff557da9af1e060de74736115eb
Date: Fri, 20 Mar 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773965693
