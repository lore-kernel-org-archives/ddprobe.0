Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275351C3302
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728376554; cv=none; b=HSUga8wtpUvFrY4N9wxK4KhizwkvvrLga1L4RRfH3fJiqKIRwFrQuhNOlrNCqqepT+uxP1GFcbrUhte+lKrJT7TNQK08GT54t610uW3Y468KBXp8Ssunl2YsfIp6bCp3AnwfZn38jQLrK6UTiRFiANS09+3uAYI+FiWJI/Hy69A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728376554; c=relaxed/simple;
	bh=ps8nMBPeEjH2CmiN3m2lFBrdj+NOlahQLBixB/Lmuig=;
	h=To:Subject:From:Message-Id:Date; b=WlwSHYnmnIrTmDOSP22j9Pplzpwud8j2wWcS3Ss6UClzJsI1IHwLLYK3nDv4sDg95adx7ZWFfTqCnCW0HVVWYwsxANpWEDlMFM0N8qKyFGSPCsa5KbUdmljttj28cWgLCfEL9CVCW8qlzbvOLStUQB2ZtHhHLh3JSCfff6FjDEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BpIKOg61; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BpIKOg61"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24A0C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728376553;
	bh=ps8nMBPeEjH2CmiN3m2lFBrdj+NOlahQLBixB/Lmuig=;
	h=To:Subject:From:Date:From;
	b=BpIKOg61loDtmD0xS/qlcHO8UDrBli833lZcmZjQGg35KVkLSXdlfeFcgq/w7Zfzp
	 SMb8S4dovqs8LO/BqyG0K/zw0wfzwWlGgH0ckYXExIkgKl2Nok5oqv0ShnPbNMwRjP
	 AnjYgQeyXk3c4qCG+2Z78ejWeSKtcz2Y6acvSNdHsalhc7tVnLtg4/CBQXIjJeImx4
	 WzIugLI/DU2o7O4xQ/SQDptJwU79upH/vxKnz/WfRHr2mpF2WSA7E4ceetewUjlkSw
	 lVZ4XXhQhap9iQuboYVd4sv5gCs9hecgApZrm+M76ibu7/7BbOkS/MI8d79/u7c+D6
	 Dwv/gV1WaTetw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBCDCED27C
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172837655358.9237.12747569232346970619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0aa161fb5b21a0cff76cde850b3290e719bdf97875e13e0607763a36334a7cc
Date: Tue, 08 Oct 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728376553
