Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E7BA17F4F6
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 09:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718531303; cv=none; b=ktISsV7M3DXwSCVOWs9Fj3reY5xrMRI6JskC0paEFv0wvcCxWICfPYNTI24fwUxaOTogjkOco99pa8O0oCoyboUZ7b0YRzVP5KQD5xrkGAwhqfgw9Uy7clqCSr9acFK0JLe34zuIRl54hBQxkcIG0j9/nHIHhnSgHEJLWKTLwSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718531303; c=relaxed/simple;
	bh=asN9UROQnh2baLSWAHRsyKsMuHMR+VH8qP1lQQUHpmw=;
	h=To:Subject:From:Message-Id:Date; b=XdAIPLDI5kwDW7DcPRQkg3aDB2yJVgA0BqIK7LnHF2sEzmYUOxdN59m17ap4uFEB1Q1sBKeDN1pj2kCAORncLPXoKZxj1zo9S6mGhW8vIWprWtz6ywNYOgDFQCkizTkcbdr5Y2XcUBi9uJqNqGc6ld43CHODdsFYAC1gXkzvOxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gdxGwsMd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gdxGwsMd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD427C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 09:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718531302;
	bh=asN9UROQnh2baLSWAHRsyKsMuHMR+VH8qP1lQQUHpmw=;
	h=To:Subject:From:Date:From;
	b=gdxGwsMdU/ZSj9dnuHxEyUf91C3yBsRqdc/jUxGXKCOoUrz+I5o8Cw61WSc248MJI
	 PP+EKAM/H+mpUentUSGPnWtpoGRU+XF+ZbE79V7oMQnwMQqhyghqOFAwDUmicIrDMD
	 KUj9+V8kNor/KDHQc+1/aW6aWGQ3EhNr+XqlodNUxZLtTlvwVJlACLVYq+Z4sVDvln
	 oz0kuL7jhzpDIawHil/45DhoLFtkjLw9w4o8/qWADpVxuHrqVeL1bbZEbv+QivXhcj
	 4uEHMxhldkFAzkMQyxQslglBH+NWEn1xeEmByXlKFSVyIrrMHQRzVKrmzSOuWlPEWp
	 UxsF48s8aUVFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C50CFC27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 09:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171853130279.32025.8709865823636067105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96802b6e9190abaad807a5a7e8afe1bffe5bec18f481b8e751fe496bf7df37c7
Date: Sun, 16 Jun 2024 09:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718531302
