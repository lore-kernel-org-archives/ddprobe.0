Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E0C2262B
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 20:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719692063; cv=none; b=FBdg6LIR4yoJlIWce29y2pD1TJL++VNURjsF0R2tK7Pe/PACzDXT/9Yz4TQqzFgQojfP7ThkXrC04/Ac/RKnX7S9X14sEHEjCPctADiLmKM9SOsKZYsbK2UoyuTG3ubVIQWb04/+8E2SfiNQvggGJySOqUpQV82aKeJE4nK0dKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719692063; c=relaxed/simple;
	bh=kAuECR/vOh2HAShiNVn8nzlaF9nQ0sN/l0O/UXzZRiM=;
	h=To:Subject:From:Message-Id:Date; b=rNUC7Oe88SuVAzTtcV2OSAbkuDJn7IRGYlBphld2kZ8wZkjU516G90KRSSpXjZnoy0IbmVM/e9ZCn78V+vFs+xpBPzQ6XIsbvTXL/ITLT8Tg+SE5ZmeF3n4cJEg0J8PBN86bjFTHo99prxS1YmP+lR79s3CtlUdi7Ke9FuncpCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RBphzowr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RBphzowr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE94C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 20:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719692062;
	bh=kAuECR/vOh2HAShiNVn8nzlaF9nQ0sN/l0O/UXzZRiM=;
	h=To:Subject:From:Date:From;
	b=RBphzowrd6fbllBwxaa/U2lIozGFHgWVUi4dtmzmcIY9Aw5zb4jdM+lE3Q72YvBbH
	 4Fu3+Uak2dSb0KWRv0yEKwbge0k4DCsakLe42f8ZPGWptgqvmukd9ua5bpY8P5eTkx
	 y2XNBY2oO2ndYiXWo9End8wBqbnhRnDamw1ZqVYve2egy8emKiJGG3K0GR96Cuh/VK
	 Cfa5F2SaZr1afDYYONIcVqowOWfJhva4cCrejYSfmuR+mIwTFBi+qqNQu3AfkX26u0
	 DpT4eBvjRCskc3NLBIh/SyFoEtqqtFD+sVWbiG8ql9X5HHSkihZ87lyjKG71PkNubG
	 VK8noDT6n1D7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C69E6C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 20:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171969206278.13424.8006766542427032040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59b4a1677d249fdd749fd834800226f134d97d695bb2eda00dc5b26879caa25d
Date: Sat, 29 Jun 2024 20:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719692062
