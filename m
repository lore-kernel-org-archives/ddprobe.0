Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F7754738
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727436354; cv=none; b=Do3FlHSyNaHVZVtzuRmBl6ZukQ7+/u+2+x/oRaWPZUFHjFTgLGev40n41QOtlJtJDNz+O2z3Rli4FbJAf19NBCOIMQAO+EVeJWDCFpoiI0iyaEp4rj7YKOn1TxRQVUECNGP4Pu1SPyM6Bq8Hr5VdikePuMgznhrILXyp02j6KOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727436354; c=relaxed/simple;
	bh=2wggvuumAo1e0ELQwbi95MH7oweAKPpGuQ2TulOwnzk=;
	h=To:Subject:From:Message-Id:Date; b=jgOAdFcAIXnJW8LTLFw9d5IfQWMhYWsC+0iNdr0mtsU/GFkeq0ISwyLJ1XiHLEcxNQUPhoFPEusEepvJS+M/guwA35N/nCNiyZDLPzm+vYNbs8yKPac5GH6tINcQsWEKC8I4cXpPbAjOh96s1Pk+Z2DouRIYxdKQAf/A2w3J4EY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eHRJtzS0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eHRJtzS0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44A6C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727436353;
	bh=2wggvuumAo1e0ELQwbi95MH7oweAKPpGuQ2TulOwnzk=;
	h=To:Subject:From:Date:From;
	b=eHRJtzS0AHe3as23ze2vzDqF899VwZHXlCZZPYLAXyIQ4FWIiPS9WPkLjpY0KMKek
	 vsnvpVeiNO8iHax6OqLT/qX53WEx+8OYVb33OSPumKhOMYm2+Tq0+TncroHT1B/vSf
	 GmM7ny38VeFoowXE5kjG5ic6mnrGaz3aMfg5nIc87Sz8VBsEp3QYgF7/luvxj/QVIR
	 aZ2V7ni8ZjxAKNBgAr1xb70e1JXaSrvAatLTDPCjHsQ7v5gAYnmEvhgm72BTtJibzT
	 ahXPfaZuM2tepwim4oYADxrz7Ay2/5GiRILQeZwuW4VkCvgSRMluBw5RvojDefshXR
	 6eUWW28v2OBQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C494CEBF9A
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172743635362.29198.9331836110359946682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 178c23c8f38f525c8e88e14f236b3529cf6e3aa43eed9d2b25f662502565edc9
Date: Fri, 27 Sep 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727436353
