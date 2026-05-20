Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381D83F44D9
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779297034; cv=none; b=BRefH2d/c21Opa8BG0r8u7M911o7ve0VZ2r/NS2sMtHcfxYtMi8BFe9LV/pDGtA4SDif7eF4qLAf/VGj90WMXwy/vGxeKXPtEk3RRoHEh6BbNDIqHEgdKz0V3gFJLtOUzKhGFqnYCdqt1RktEZygiPkMqOSgxQuAn0Cm9cW6oY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779297034; c=relaxed/simple;
	bh=1emyzbTkBSZogc1wxo0XkCwJgPBeNvS6AB5FzJ80p2k=;
	h=To:Subject:From:Message-Id:Date; b=E7xwJAk9o4Xllxflhcm3h0xrimGu8Su5lZMeRmFumbEOWDKRpg0LD5vfYgZymc1eBMa46VK89cA3YlUTkCl6OOVqdQpG90xn3/T0TkztcS677P13YMY0B+6Fzb5o2JIgqmJBvbRpoQiT5SZniZgHYhps2Ju2wIGf68dnqThcrSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GeujHiiS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GeujHiiS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A07C2BCC4
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779297033;
	bh=1emyzbTkBSZogc1wxo0XkCwJgPBeNvS6AB5FzJ80p2k=;
	h=To:Subject:From:Date:From;
	b=GeujHiiSofbAWmm7oQTkyacmUD1EIdHwuQxUJkeTxqKzOrIkAb2XU5WojZg7TOPJc
	 N8q6j/sdW63cYSNydbEt/KlUNCqYJB6/Gt8jM9SrLbCDuWktF1iiXL6eHVzMCmsWHJ
	 PDt9P0fEGLYvnDiLeBlS1qQW2SfD/buoD9CCmmCRBVQLH1Z4hyKYriH1rfVGgV8x5c
	 8CHjytorSXQSpJeqQnUTtN8StCp7FL1oECGTtcn1ChfnIUR06Oj0OxTcze9poTpnnP
	 vQRjjfyAteNNw3Ge43hLD+5eslCrxUnVpST4QHaVLNhtelhVJWLvwjNV7cVZMA+hFg
	 2kwJYuxQ9nXIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1881CD5BA4
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177929703369.16480.9896965285444582530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1f168207d13cae6dd1bb32d7995bdf162e106e9d5af8fdd8e1aa98a03dd9800
Date: Wed, 20 May 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779297033
