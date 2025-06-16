Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A4A2AD00
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750044594; cv=none; b=JBurR/TtpNRVKr2USoRG+AOTI50WVYIGWTagls1+urskYRFInfnhwb19JWIp557x0PPXUzjOdvNuxBkW8KLPN8l3J7XNgNvJf7pHn/zb4QaFmewhYf7Red+tLN3MzTdMSvzT19U2Qi+Nt4VFRoQeVL7Z5l5GXM5CNgO8jOOKm9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750044594; c=relaxed/simple;
	bh=F2a50+u6NUomISYAZ9ZfV9IwFLhxUO5WuvE/TKG8scU=;
	h=To:Subject:From:Message-Id:Date; b=csryUxlJMhEtP7aLyukZ07P7xFZioCPbq8jCfaIvdV+EhahK/JXP8TD88qWu9wvh7WPRjlG9fbz4NLIe9fusBx++6dGEAoD9vSTOjdqw4FPgiJ5K8d6QwINXzSDZCaPZGRchOCtoSamLYGusLLRvrLliQNhxoxOoCgQvl8HZfrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MYp7CHL6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MYp7CHL6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB562C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750044593;
	bh=F2a50+u6NUomISYAZ9ZfV9IwFLhxUO5WuvE/TKG8scU=;
	h=To:Subject:From:Date:From;
	b=MYp7CHL6fyJlug9VUsBmp22FhdosYNsqfdFyTeh+0CAB92Wmd4hTOnreHpZMJZBoW
	 nZrw2t4CQp2dhAJDFiBOAjNCFeoglKTlhOXRDr/yukZEapMEIOizgekKQhcpNLsLGq
	 2KyMzY1/IKkd14UCsG/Cq1G1KLpQtSGHFGszklBYulxw2U0fHmrDbkq2BbCqYolGf2
	 A3758O4ixgoXU7iAoq+MaLm2AH/L0CERsCfNHDtfRXCWtfT5X0CEx9IPMQQU1HhZCr
	 xnxcXdljnyWCzNxgA5iBF7f5QfTwPWnRTGg6Dr3M1miX3nOum/SByRki9sYntxqGZx
	 9ug9psV7Go+iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936C5C71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175004459357.17204.6047485915479007427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60feea5478449ed3b3cfa14a9d0d9821e4906e188ae48e4d82aad251785a9e8f
Date: Mon, 16 Jun 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750044593
