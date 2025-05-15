Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1334B1E5A
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747276794; cv=none; b=oPspdAuoyKCG7zXbDix9q3W96tAc977Wm703EAEMA1kQBlbiYQgMQ1V5wDYoTV89vlyaFn/cAsZgy1u8I0uPXjcYmMvm8TCA2X9XraKvZLsTesrrVJUzJfNrAvGLtWcbZPl382oIpSgf/gKBZaRrKbahaT68tPhFFdJvTnloHgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747276794; c=relaxed/simple;
	bh=RE8eUj/+Dn2N1g2fS/O9knJkK3Tb7fw+Y9ENVaL2l4A=;
	h=To:Subject:From:Message-Id:Date; b=NpJsemm1Czt+k0H873nQONN292HjAXKx9vSU5efUKqnlcyf4BI4ZbI531prUjV+rX4p3TavPLqOy+r50EKIJ9C5nUgTxKCepwDSTk2T4IT020epearFJ5kBq9Ou4GuuXCcxgGUIowikWt47ZS9HvJ0wewsubj77dby6PQ2U+t64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HCPBkyjX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HCPBkyjX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9667C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747276793;
	bh=RE8eUj/+Dn2N1g2fS/O9knJkK3Tb7fw+Y9ENVaL2l4A=;
	h=To:Subject:From:Date:From;
	b=HCPBkyjXnLu9BXdS8t5hOdBbJVWQgVNTUwTB96BS2fc2yPzXiL5FY/Wd7D7eHEbz3
	 PcBJVAMuZOtl8X/oPUbQJRCH+O+khEyc8Uc8zmg5ntKm2XBeBF+0Mbu/BKoflbVkZr
	 Y7WhuJhEFZVQDnR9Y3H/MkQ+klbS0SekCgHQ0EjWxgSsiZ5X9wVNXMqoDcUMKZYAkP
	 hLufBLOu6Xpz/1+mzDSJzLqhBa9LdztX3HkgTiF43ArwtY4fqRJp3WLwZzzc/POc/I
	 Byw+O1pErKLhVh8Pbwoq9j9FLykIII0euRdmmx78vztKsl5NeLtTp5wNwMrDYpwYnx
	 c0hlkVkOx+5oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984EFC3ABDA
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174727679358.25737.2790004207205257220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1d7190aa39720c6e0cc49c09e91600ff2d3d51943d8f0756af3c1c5c504226e
Date: Thu, 15 May 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747276793
