Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F64F34BA4B
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759724994; cv=none; b=UDfry+5zoAq0nDzPCF8ufdQBh50iG9auzKDgOsR3Fr6LdjEp8BB2hc9lO3VpkJWEN1Pcy4r+Yp9HdvDGCZ4YcPNdHdMC0fj6Tr/kUHEN5PGfmHSY6Q4c9UfzdVjwCNfcxqjwwKeyvsXSDBkPp74i0JdAxiykJNAhL5kGeg3h/ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759724994; c=relaxed/simple;
	bh=cBqOfsW0ZoPRjaSH+PvY2mpUQhxsKPP3J+hUVTAtk18=;
	h=To:Subject:From:Message-Id:Date; b=iTPI5OtSbeWuP/eZuFGYz37ZF/HZ0Rk8QXnAGSAshIgG+NckTusJo73oUakHwTka2VFQ/MBO9Co6Ty5eMM/ZpcAWZF+terE28BMRdbiFo2Bwu+s69zrsbQhRGjn5kzgwWK0jeLhjFuK4lj8BAPYB/BJlu1mYqVkFxJsSZGUHPCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T1ut9LOn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T1ut9LOn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B32C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759724993;
	bh=cBqOfsW0ZoPRjaSH+PvY2mpUQhxsKPP3J+hUVTAtk18=;
	h=To:Subject:From:Date:From;
	b=T1ut9LOnxXQ2gq6Opl0Ya1NL/2IRX45dbqUf6F1eR3HwLqlMzktxtPxCkBUpYYPRg
	 oDTNwGzqSOfHSf+FxEjOl2mwzS5jZOCDNwbOQsjZS2K4FEb455vwkhRLS8CsLrAZBE
	 L6/rSdmzJndmNul66Opo+UxNaGB7Hfc/t8rIkOuV2qmczVqG/ob4YWrRZc0AYR1SJ+
	 S+R6SrghdWhgkXCoHq6V53sVsBtprAE3Jf3mjYMkEJWaoukl684H0OWwEuVnOyhIF6
	 8HDZwJu5VbWvWQzRoU95qFGSvYM1lB3ctoEI1QVSSxlxTUWMa13BA49HpKHApLFXoY
	 dc9UM+03LidbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1C6CCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175972499357.31994.7334112777033524304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c0410e389a21e0b6de4636685cf3432875a531013e1129e62d4a0a82d452bc8
Date: Mon, 06 Oct 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759724993
