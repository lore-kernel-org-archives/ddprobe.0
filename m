Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6F824DD0E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760537394; cv=none; b=Dt86RLh8P7dtz7jRcKV2x8i0d3vEKSOFYzZWurukFmV33rE9z56Ufk5T/jd8dEko8oNVObBEAuHR2e4IRfohOA2I/rEC5R6+kEpyg33CJh7kYlbvGiqM/MkWw/r8TLWL0tWXJ5LCqKtr300kRmY+UATZcYraD9Bes1ftz70VgEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760537394; c=relaxed/simple;
	bh=Hciey8uYQfc0AQWd1Djf0PARzaTQZXbNIgl/ndc7HdE=;
	h=To:Subject:From:Message-Id:Date; b=LwAlr7Eozc3X0cS4Glb2aN19un1TQw6q7Up0qj0fOo+OHijv2et0YT9UDpw+JZDpn6Xp8WYfg3OXdJ759el0T7RPU1L610ERVp0oQM8A+hogAVr/76sFD57JRiPj4NVguT3ZlDU/05YxxxylxcogMOrmQcFuoboVwZMAcpS31zY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RqeacB4j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RqeacB4j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72E6C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760537393;
	bh=Hciey8uYQfc0AQWd1Djf0PARzaTQZXbNIgl/ndc7HdE=;
	h=To:Subject:From:Date:From;
	b=RqeacB4jm4aPFCv7nKtUG2ArbLryHuy1j3hh3c31778dmrsWxyKUt8TmE5y4g2eU9
	 jJdCHGL4uQqiUvqlryNLLJossPlB4gk+uDLynKtRWVtIT05e9FLPEy1NwhXi2kcj6c
	 W5BtJJBni5C942xc8WQWB3To4SStGWmlqcN9Roa0xWc3HARsM0ZqPq7wAT9vGw3CQg
	 powuOWI2uXrhj+N2mlmJxKQfp2wsWueGfjzg8Na/lGlBNiVy3j1+s/ndvmFgiVh5nq
	 7MMpSMP3h8N8fJpeU+RF8MDlJGPnR1+E4KnIxB+316RFg4wR1mEEnfptSXfTMvr1Qj
	 CjCV4olyTNHrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9157FCCD192
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176053739358.4861.7960480609776133580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7db54f6587b7d033aa22b18b2aa6be7694501973f81c729539c2f6c45abf68ec
Date: Wed, 15 Oct 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760537393
