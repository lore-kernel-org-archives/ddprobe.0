Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F183E1F936
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762099794; cv=none; b=gsV4H8PXj3hjV6lt2veYPg0BdWzKwNvC46Tm6tMs/FdQ/lY2XhQMcEEZ0ZXhAwNrEiZElwgA9NPyLz8winT3+uKpD1SE4blLm+SCXROH8k7VosJ48MUZeHrdaRxhyQSvhgFeX9W6DPlYm0pOFJA0000jgWq/QKD7hNa2MCmvHK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762099794; c=relaxed/simple;
	bh=h5hc1RGzf56LwLYzQZltH/ECZUfrQ11kiUk3e+NFJQg=;
	h=To:Subject:From:Message-Id:Date; b=RIbthTFyjMDySbp+Ik/FosoR9dt4+p4QFAvmLLjAhTUUYtBuKxKUqmf7QhgzCrK5nORiW4AZyTmqq/rmq1bkqUcj3fJp9kj6uuX8CDmKRFy7h0z5x6q8qNEMNTOzcf3zRk4HTFv19V+A4VyPblkf9gH6QllkcZHNp4Gzte8Ajfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FrhB8iHV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FrhB8iHV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C54C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762099793;
	bh=h5hc1RGzf56LwLYzQZltH/ECZUfrQ11kiUk3e+NFJQg=;
	h=To:Subject:From:Date:From;
	b=FrhB8iHVKWINLSpX6MjCuwAl5vC3DEOK91o7Fuz2Sno1fgaEu+pWqIDlC3tBVk0zw
	 CAYibZH1we1mGz5/WaCp26l4jm3doIQL3sHGhfq94yxsg0482D16+UaNv2YuS4xgfm
	 g0rCpk48e8iin1giZwmYC3FxGQLpJkXulfAryYOoQESPqN/ULFWSUP/5NEVd81RUKJ
	 +BHCT1sCRj62NJo1zXRiipGSQ/BsvRr7pRAwPEHh/UyVHPV9h9+2bRMJlaTzIuirxf
	 9WHUWLVHtHcqLAOv9SUfx+EDH2Yu7rx9Ma9mgaZVcUt+8bjlzXYAolpcDQNjerZVXG
	 UuTufFxSRh+Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972F9CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176209979358.24929.17409864612022912110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2204d1434eb9afa9508b1d6bca3a8261c49ef568aa1ba3fd01d3e8947f18c7ab
Date: Sun, 02 Nov 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762099793
