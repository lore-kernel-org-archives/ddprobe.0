Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4E0F3D75DC
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 08:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784105314; cv=none; b=EW99xwe7cnOQzbAQg+pTKqa36/ASiKetrTe7mqhEZrCopoCiaDlGhMnuiNseIAXASYI99gtBeWUcjm4qYqFk0ZMWpnyE0ZrQCrV5sosxZf23BIbzGxercs1WiHAEPET/e10aN7RjZf2C5zopYq199YnH13TeO6rxbd7/I+P/Wgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784105314; c=relaxed/simple;
	bh=FscFc6pcgAtLcVAH7ZPxb8oR+oC1X/Uq1rOIgm1yKjo=;
	h=To:Subject:From:Message-Id:Date; b=iqzJINq7zRMEM4yoZlt25fxj+dbwKmX4zjHpcVQ2Jbbsoelz+q0ggfDPlo5cPUIeeq+SuVbhCPVr4L3XiQ4U+fhaT/WqgkNpctoGR3mz+OetNzrQ8QPVAqI5tNlJAmCND7IejrngYzfB0QwdrhZP3GvV2J3xsdK+ZfdRV/EGW/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gFyyVQwu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gFyyVQwu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2F40C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 08:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784105313;
	bh=FscFc6pcgAtLcVAH7ZPxb8oR+oC1X/Uq1rOIgm1yKjo=;
	h=To:Subject:From:Date:From;
	b=gFyyVQwuu9c9xQbYRX31OFFQNywfx18cWuvZbEJZEhAgQjCehRwtVcEZDhwieY7aH
	 KTuIu5r9DpbfWOvx4ZIRMoKka0iwnBZ9l3mbxJSiTxRFN3ObRAtBu8MywvhaFk03v2
	 e9Odt2y+xN2+EKNejz+ciorRtjStTifIdWaiLhs/gj4gsLVGsiuyF1uHuEe5V9xzYx
	 XBdt7IDxsonrqaY2apx+guYEWtu6l+SU2pus5gwiYu/lchJTPUvHuz70vf+qFuXK3L
	 vHsADPWkGtLoJvGl3KmnPBCISWbYIwskDLreKCzk7PijvzzKpb18iwBKeu6CH4guCv
	 hqBaxolVYR/lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9263C44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 08:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178410531374.6527.5478030325116291610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf93a42674fe307ceb83f987537d60b0b0c352c2287cc76d24b6ca17e0e22070
Date: Wed, 15 Jul 2026 08:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784105313
