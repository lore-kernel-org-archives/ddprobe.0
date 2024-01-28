Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0859041C86
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706480297; cv=none; b=QtaNGkb1VWRCNHfps/ku4ytXZhaONVyCgQfflU3PiMH+txeoJhWQHbokvGZ4qHTSkhc3rvSz8o+lKC7OLgrAjhPwcn34em9G0A4jPJjtTwcPERHtLG6jA+qpHzxC85643TXVLKdnG4qA8aOVpG8E+IRJm38TF7i+bGKS3tbkm24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706480297; c=relaxed/simple;
	bh=qoKAb3mrkwukJJGlTx6+mgWOepMc+lX0aktn4aict74=;
	h=To:Subject:From:Message-Id:Date; b=gpgmNMLqR7b4h4G6JIaUkE2s2KsJzwByfXs0ZHMHPgVJbUyc24h/brThkBMwAkxubsnA7NQ4hw0l9iHqGbTYXddPiQGeflSY7rQg8av9o3ER5r8UDOUe/HKCVuuf4qVyzybbpZBgU5AmWIk1yGVokf4lLq/Gwigyces8SGcDv4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ihZH+AlC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ihZH+AlC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B61FC433C7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 22:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706480296;
	bh=qoKAb3mrkwukJJGlTx6+mgWOepMc+lX0aktn4aict74=;
	h=To:Subject:From:Date:From;
	b=ihZH+AlCk+p6meNLjsorKYhHsGpy7ZtBFPN8lvKPIAeO9gbjLSxNNnHyFJ9ZfQwqp
	 /Ma6vwPqt4DdbxyaYUEn3IH440KzTqNWG+VN06dVzjZqkhNI1Y9kULbNeaGj7osugo
	 mVPzMAzmKh4LMVbrgW/C/wsm+XU9HYfdN6QcUBIAYc0NPcdR2YsuD+qX/kPZq681pz
	 N5iXZmnGFQQzafg3LUYBLdQsp6fvcwDWc5CN30M3MUX9T/p9U7e6RHkIBqTCTgtlef
	 CPEnWewfpN3yYC0hEd9+Wrw+P1TMCIIJUxi459LHhM71+ExuxuGCq3pdJ2Qz5xD649
	 niJOs9T6uX4Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64FA8C47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 22:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170648029637.14208.4831267611406378722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0a8b8ea74b842c9d3d7218588219697a608a3606e9c4715f2e69ec2f0b3c01e
Date: Sun, 28 Jan 2024 22:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706480296
