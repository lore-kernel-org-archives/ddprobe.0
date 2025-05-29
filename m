Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC8718DB03
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748519394; cv=none; b=R9ctsXwndrGLARMIjdtrvTV14CX760kjJtVNBgBnVf1vEA5o5VvXAhiXbWcfWmZcrnjsbVC3FLSB7OZ8efEszBNvtXph3TyhPxf7y5FTwkCq9FIUqKpLgegzSTuKf8UUiQE2CLORxZEZur5QM63rGbeFYBN8ITEWfw7IxmQjmbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748519394; c=relaxed/simple;
	bh=61co6fk4XoTLOU2opYzKH0HOszd5755YiI4vI/NHMPc=;
	h=To:Subject:From:Message-Id:Date; b=o4+J1I71CbOjceTGf2yJIwdYcIPejXikeFvK/iavAQ0urk0Lhh5tgTEkYkZ5CsG3TKVtbYwMvKnZFcUezoEeYLtoa3LJP8P799Gsx0E+f4ciAtn8tJMpjB6U9txizYUJFw/CLcJEWbR7htSPcgaVMuh+scyK90lGgYzLqy7MJ9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=duw4xCon; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="duw4xCon"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5721C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748519393;
	bh=61co6fk4XoTLOU2opYzKH0HOszd5755YiI4vI/NHMPc=;
	h=To:Subject:From:Date:From;
	b=duw4xConyss6n3G9pm2LfzJ025VoJf4M0POZIT+YcqoH40jNfszyLV5vlccPV/04g
	 KYX292EmzdEfx6pcIFotnaKjSa81+niOUuJkIjABmqvTMMYcexD2a/Q4qgSYVJepGY
	 oN6oLZFXlrz9k+cOs6WWJh57OqIcf0w3dZuJ09FcqaOZNPo7HhN53Icc30EMZaAELu
	 9MMgwn8X9Zv+IY2mvLet1EnS5HBfEuG4kvhJvqas4aTpndFzL65M5WEtG/9QgSE/6Z
	 7tQRlf37huoFcTsbExPNt88LbFHo+yTLrKExtuWFopNw6qRAAzAORlTz5C/Ts7DreG
	 zZpclOFoMkR+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9378DC54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174851939359.25754.1077980986379101625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55c369af9961db13c034544fee4a515d9dd138edce641996484302f94d9b22b7
Date: Thu, 29 May 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748519393
