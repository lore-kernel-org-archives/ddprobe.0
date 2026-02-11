Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15DECBA34
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770768834; cv=none; b=YTzsP6EirKPbJpa6gYDmM4JDKwEEIg4yaFRnATkeZPAXuEbBqKk+/teu51B8jRBgTVmy+1S0uCoQDQYK85vvM+suuIAJJRbKqa+HH0HgicUE/uIf2AqLV7I/qnkP79tgF1cw6fqwuGoNk4/jtgwpD4a92IGq4QJHfGusPs8iV2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770768834; c=relaxed/simple;
	bh=6f4PJzX+TdA9m7Er2uqcGsVZmbN7dpn4lDOcuNbGUEQ=;
	h=To:Subject:From:Message-Id:Date; b=V8avSD38uyEpe1d3MQpOzBSGX51p7FiFwoB9jvMiM7J2wEtsp3PQQz+lQzs5Lx3cgPtYRAQzVcmtEmZRRR4TTXri9ievkh21teMjVADaOR25CoQjwzdL1rxSTYWQ7a3Ljd5Ey9m4BRvNlBQAS3562aIc5LNNQT5NJx8pMk20e7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bTsmDHxC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bTsmDHxC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC68BC116C6
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770768833;
	bh=6f4PJzX+TdA9m7Er2uqcGsVZmbN7dpn4lDOcuNbGUEQ=;
	h=To:Subject:From:Date:From;
	b=bTsmDHxCO1EaqmZ4pngPAC0E2947pc7qlKJfEJUzLcuJO7G9EW9lABzJ9tbSZlRmi
	 5btUJ+MhhLQ/O/8SxDIRoovWJK7ew8wF1u9PpcuEzcEsqt7FEgZCxpIkt9/YpOfAIN
	 2VQkfznuEAE2GPxm/ykpXJcMQ7BaZ/fRluek1mMX/wBcGI5gmMOC+FbL91BaPnEu99
	 Qr8yzdmkU4RIihw49DHpFLEQ9l79p061VKyf6Zb56stMy/WSEH3M/JolnvAZE9elEX
	 dudiDI6n4Cab1EhVe3EPso9lqa31gRC+4xkH5R2J+40oICnV60iw34aYMGJisjQDYe
	 EKIQzMYQshW6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C216EB5946
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177076883363.31049.12512712520785076774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a8501f9c77a24511f58d6b5a3abcd5f651bfdb8661769d48943461baa761079
Date: Wed, 11 Feb 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770768833
