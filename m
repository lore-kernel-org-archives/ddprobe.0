Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228861C54AF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749935394; cv=none; b=q2qegfQjTB5TomM4vuQVmZwsg+TYQmmxWqsg/goFphhACQiefd6JUD2RnCbVePWGrUZTgecF1+05+j72s9JZby6uMOw8aRedzOPK/SLoa1Rb2rj7oyZp//SLhu2hOnzxFmni+ZSjPxuYNlytYfJ82Nv/T6ZlpXm7ukYjkfpWptg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749935394; c=relaxed/simple;
	bh=HPm0CGfbVQF467EBc71mOjvWv9nYEt+si/apkXsuzg8=;
	h=To:Subject:From:Message-Id:Date; b=BOIL/w19WDKpWT6ARYjhovLemD4bEXGjlLcvc9fKWg0qgF94tFh/5m0IPPX14Jwk5oQ+xIOiAfSdftFu3nYdVaPwINaPBq9jt6PCPS4XE64SJyOJ1O03qOeodsISU5BMgD9ZDls+E6TrhVHld/C6tsWpA8IrECRbb4lkEv42HpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYggPObB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYggPObB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD1DC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749935393;
	bh=HPm0CGfbVQF467EBc71mOjvWv9nYEt+si/apkXsuzg8=;
	h=To:Subject:From:Date:From;
	b=UYggPObBIUNf94grqRUfB6tzv7nmCus1M1nldCX0SFNemk7zYDBqyXLSfX3rEE50a
	 VDvinyNDPV9lFLH2c8PZaNBX6TYjF1eQldcFcmQrUu3WbFJ4/EmYZeyyixyGfSkoVj
	 +L8+6DdELIpROsJosd/t69accE7p6ToHFjIDANYYGNCI4zdKHWJwTm8ZNDm7jHn69t
	 /mM0Lau/K3Ah1Lz0Y2H5dg7qISR3zPYp9GLk8KyeJ/dw4RN4O4QH1T3eBuUi9IIXP8
	 RMwiL2/44ShADadgqWe7gyEtk8UeGqAuO5pl7ybG+JHz6QaJlTlhpTOg+iwoU+5VVw
	 YaySkQF/GrQzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97431C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174993539359.9480.9462863784980219268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99070c574bece18251e53f222d9823c8f1509db60fe28d9d33427ee89ea6c836
Date: Sat, 14 Jun 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749935393
