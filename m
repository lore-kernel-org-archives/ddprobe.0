Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3248B30E853
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750447194; cv=none; b=jHKJ1oqrcp57VH6BV3VEy145LGb9HCg+yasB1byXWyOvH8aRdxMB2fmmSZBGN50pbaqBDNCK2Fj2FvIUWLxo/GQ0nVOj6VdqDk+9CheivaJQQdYkATFrgioYJ9QQWRmGUINzP74TjyH9f21Ztt4FMkP33nVc6CoV8PUJ6gz0+SQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750447194; c=relaxed/simple;
	bh=6Rht3OfJ1K4trCzxoECd1uHxXH8sLZ1Q0if9i9l+jw0=;
	h=To:Subject:From:Message-Id:Date; b=Q0TlDD1PIUmjFon/azsONMAR5FGmELWpSmZt2BppfJOD5lALzryLShQHZAUaRfH9+/x59NqMEcn+zCNQ5fovGczR6P7C/4Gtfovi2Cv17X48efgTq7xUYVkpFf29jGzrDhevfxPbqn0Kb69r0yqPmbWaJUXCarMI6DpzsbEYMog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mK8drloQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mK8drloQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA27C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750447193;
	bh=6Rht3OfJ1K4trCzxoECd1uHxXH8sLZ1Q0if9i9l+jw0=;
	h=To:Subject:From:Date:From;
	b=mK8drloQYxBDQwpJijtQ9DJDmhE/Hh6AfKQqhpdWrVn2X0EVXi5X1Korflbk+Xpby
	 N8N7UCOXz9BiDGktXrm6Ow3jK4tmsCdAiyrZIDDv7pKEzie0Lr98iLj7a9N8Y6alhE
	 ZOgf6B/tEgeRm3RNR+R536OdHR49MbTQE+JTCg/485vfI2XbBz7tO/smUELDn6WGSe
	 XkNhmRjRI/qWJmBsAbxxl/kdorXmaxwq2tzos+ULKfH8lmNaJHAWVdq6WiRhO23pXx
	 Rcm+22jDog9FwoPAGwj1SL4l07/Ke+BHGACZXo7nCdzAc0o+DhKSutp8DBQvLMPNGQ
	 LELQQOgCXNzeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A6DC7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175044719357.8933.16913456901564698063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7a2e29687f231887ea6b6bf1e00d7a4253898883f81559ae266092122689908
Date: Fri, 20 Jun 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750447193
