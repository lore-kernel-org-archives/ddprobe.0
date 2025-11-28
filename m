Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8E2E221FB4
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 09:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764323573; cv=none; b=u0HeYpgbt0zeoy44QFQl92rqvuSQIWpOgwaqn4E28jakWmJVMR3InNELX2rPAS4yXcW4Fy5vyLxK/QnRGhS1p4Z9B2MClYSbCRFqrJbCcS4V+kLSotcpdNPKfUqK3y3CACYu6vk+kdLDH5lSc2oX0sR//vzCP6nSI4L3SfyrM+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764323573; c=relaxed/simple;
	bh=YK+Cl4tKa2JrHZGCRirl6GRJJYeB/oiJP8iI3c9Ggrk=;
	h=To:Subject:From:Message-Id:Date; b=kp4CWjPj9RKlehgaAQDiAsEeKX9f04pJ+0iUogN93l/Eg20gH+qkK8D4MvWScExir02yhxaDvd4r8GQVWjV5/xxJq1E65ThELHQ9voJgY0hd70NDuavOJWfT8iJtzAqC3HIpe/p5cIZEgu1qf4PXo7zXCk/Ven9eY4JRRR6yFms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+IEIXKX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+IEIXKX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0483C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 09:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764323573;
	bh=YK+Cl4tKa2JrHZGCRirl6GRJJYeB/oiJP8iI3c9Ggrk=;
	h=To:Subject:From:Date:From;
	b=T+IEIXKXoKt/jWAl6Zm21CL3CTr9BYcw6fW1MND7jiYsIvHPH6XnJS4c2Rl4LkEd8
	 brLVyU02Cim9+g0BbOTvv1xJ4mxK0ZgCYaIIpl0fNAT4Sgmjdre5b801LJRIdg/S2R
	 +k64dpo/Tdi55vUfWxM3WZ63pg/+tyaaJWc+CN5P0aiyDEj1tj6oEMZD/6hXRku2+w
	 lRfZMbmKnseEIPS6ibkOfEb7sW6qgkapsLaBZnqH4epSQNzZ1CuJfy0qmXYAecizCN
	 JERGvXbaXwlIpHmA76jlpduyuOqXeRCLCSTB9l2KlvWOZdjOSGkHAed3121hh1UDs0
	 tNIt2/MuqATkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DEDCFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 09:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176432357359.29094.10519575577902738227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e460b0a7ae51c8e7a0ca4c8b753e4309e10a2a45a241230e2d853f576678a30a
Date: Fri, 28 Nov 2025 09:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764323573
