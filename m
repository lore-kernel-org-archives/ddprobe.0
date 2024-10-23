Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A40481B1
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729719354; cv=none; b=NcBg0zvQcBfQaFRcphq9dTlItZ/l2/gKr6MskJIeNM//n/deR8BzA5ElxEWxivFrKTh/0y6copOUTzzj2uPcHdKIikdpvShYsrBIEXFUarScoAIh+3mfa2rfBV6KTyJI0KB9R8laBVP5C2J4a4RhvRZVQrKNmt0UDbf3tjkBioc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729719354; c=relaxed/simple;
	bh=UYchNNGNKlHTHyBkWJkupf3G5IaXKQoEtvdsj5fYGJ0=;
	h=To:Subject:From:Message-Id:Date; b=Ic3p2bWhHWWbUrWoI+U2FwD6tfkNLukRlLlhTxTwZIcjhYd0XGksrbvcMihiZsDia7c79LWREFNRA1jSk6qhrqq24y4ZVjWPiZtxak4fUiucQmyJ/aD8YAm9TAaCnQIFSC8VlxA+RbmgpBXDcjkkU2mHeKh4m7MhCwie4va0DpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lCvO3Iwb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lCvO3Iwb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB22C4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729719353;
	bh=UYchNNGNKlHTHyBkWJkupf3G5IaXKQoEtvdsj5fYGJ0=;
	h=To:Subject:From:Date:From;
	b=lCvO3IwbvulVmZOdTEjimle88s5bjhhuzGu7qFs7jpgPw77/ITXqn8FCirVz8QkRM
	 QeY60gtlDN/cGTu6obabRBATNny3MS6ZzTvN/EuzbsYw5tMM9ZVOwmb7/iQ3bJlH3S
	 VndPt05S+Iah4neTuhjeJc7cuwW7LzdzCdPLeWvg5reUE9xIHPh9SaXLHdxkS1RP14
	 dTkt+iQyrWJCkE85Az/RvgW24pmsvqY8X3lzyyR5yY4XWWrbK6i//8kcR5HPc3GuzU
	 MsHdqf+9673L9FP7fJIyeLZSsUZIcNADmngSk0Fc9XbaAOEdFwTe3iWy2IuD1pBSk2
	 2pcgYCzOPkK4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97218CFA478
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172971935360.10712.13836348226509935995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbdc4b11b5b781bcdcfaec2535d3d147c95d8d6e33f55c208fdf529ea73ca8d5
Date: Wed, 23 Oct 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729719353
