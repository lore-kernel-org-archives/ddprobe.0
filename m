Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63BFA1DFDE
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 13:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716902663; cv=none; b=KWRtKBu4Qu97N/g4zQN+cfG0uqRWM4GVKxGj6l/4vnhAJXAckpKIxnwhO2JRgRk6crnzCmilvqyswBTacYzkJCT6ojO7wyos0FbBjMERDywz1ukwBHoMr+7bkzt5cpDcoGh7H/H23YRL2DOhI0fPNpG2nkGUlbJetgGm5gyQjrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716902663; c=relaxed/simple;
	bh=7UWh4fyKXB80ktSka+SOnqAQ/XYTM/PHeTIRhCpfBzo=;
	h=To:Subject:From:Message-Id:Date; b=YbL5ur6Q4DT7N1hGgRScNmSZHpYCNQN7NqJcfupkRaBMZY91KC5pQtCk+yIUJSvFTA5zBAgp+F2+NPWj/UxsjBe9s6GamuSq4+EqqoUaPpCdAFGN5jo1dEhulPS8blC42ZMiqrmr177C45TRgFOQ9oTSdWh051fDdiYHNQwWkkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n7Eir6pJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n7Eir6pJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D91E0C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 13:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716902662;
	bh=7UWh4fyKXB80ktSka+SOnqAQ/XYTM/PHeTIRhCpfBzo=;
	h=To:Subject:From:Date:From;
	b=n7Eir6pJpLbkBshRof1tmv56M5+53w7aGGx0JwQ9Had9+yxhG29cfn3KE0bSOOknJ
	 PrmyzE8HCIFyjYroA6Tqy/tod3NjDbtfg79rPvWm3Lth8ZiX+Zb3vjY8iSJDb4NLOI
	 0AT5rSMeS5UPEDfIFTvRdBb3kifSW2Hj0Ocnxl2DSheVao14k2w0A30h4rofAveSuo
	 9R/l1ebQEFf7zz1i6NP6rb9x/ARo1l6eWIrn5yzBV4pCua/i3v5kUQ1zquva/FSc81
	 UpJuRmtxcO0nQ3o3QLv/N16prbpXrWQ9k7/2TMFPTi8QcM8Wcr0OWL8ID2rOjnpZkg
	 P1Zayx3Wk1bPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C43F1C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 13:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171690266279.15657.9850036284810912266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e7fa3a398490131212533f39cd8110bd75300d4686839159946f86c978da68b
Date: Tue, 28 May 2024 13:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716902662
