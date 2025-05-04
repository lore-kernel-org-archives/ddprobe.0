Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BF44C96
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746385194; cv=none; b=Wunhwi3MJr9EsOAHeSEvjpkCFe9TAWPi8Iyn8n2ZMxkwfP7DBR9Ue33VT/xZ2Z88Z5YZ0xP93P7YobJsmXewdpw/07r3BOj2eyhpbSbZaELfz1ULo6h7dWwdguDeEpIC1pc6kSfJJAOcqhinFX6icp7xBj2N/xw+RJWW7jXDM2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746385194; c=relaxed/simple;
	bh=MrZUt9BkP74XWTXzN5oh44PWBuzxkw/9TcuUijwk5H0=;
	h=To:Subject:From:Message-Id:Date; b=s5VUckLLjmtqpERkaUODFy+YPpLQhFqVbaC3NJ/72leC0/DqOySLKYK0Go24x7gQJ3VPAquA9+WSTgCS+ZDmQRSkCcj25FxRTaGn227+Y/FZ16B1v3DvQfxXQz7AaSUYTAFp718sTZq1+E+q0SsVACbdULZPLQe4z1kjg+ov1wY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VC2cKdCU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VC2cKdCU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A847BC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746385193;
	bh=MrZUt9BkP74XWTXzN5oh44PWBuzxkw/9TcuUijwk5H0=;
	h=To:Subject:From:Date:From;
	b=VC2cKdCUnAbCTH3WZnBg6WveIpGmWSP6SkzEEiPJ5oC3T9eBLWCzqIhmE/ltOU2a7
	 rak8xr1io/fsljiVoCwjHIScLH4Q4irs7uIWa3w2Mke6/EQkSFepk5hGvkaCZoem8E
	 pAw8F6n5uRecipalLUMb5XIp8U/AvqZZFa9xrsETGBQMjMJg5aWLibtoXJxYHRt5M9
	 6aMkX8wdV7Pqn1g243ieVxiKccnP7SrRCM7zQA7deIIMYPZvjcfcaY2TDyb954pbAK
	 qBbeFhZ8vtPujVfpjA8wT41Uj7kY0lucCuEFsDYVQYVG1fjnD4tXAEK1ZrSKRj8nwN
	 zRnxENPPyNEiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C98C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174638519357.6463.18108690947565057262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abc926c6279b01fbc99fb92abc0c7270f9277b7f3bca3fe4a7fbd97758698a16
Date: Sun, 04 May 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746385193
