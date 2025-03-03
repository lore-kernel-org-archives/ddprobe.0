Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB9613A3F7
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 03:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740971934; cv=none; b=HSANpTg0r+N8QOFOQtwmYJO8+2zEesXq8X3lkstCyb4kigZd9gmVQXheTEsj9ZE4d2lIjZ6/jnCKIjvP8sKDFut4kQD8HyVJfxeeOx7XSo8QgPn1McT0kbsHYIAC2qgmo6unuWvnbARsNysgNNTpnsxjt97AIvDpSPII2Vtjipw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740971934; c=relaxed/simple;
	bh=0VnOfpIVjqhbNaG6bGvmhp3HN01NjWklW4t+ypTVwNo=;
	h=To:Subject:From:Message-Id:Date; b=adRXchge7eipB3na0mBm2V6sYZVBWwVE7Ik/6ehoRThYZTJYzbuNX/YFSoJaVI7yyBhfLAc0TdND4+ft/PpDP+owpTENvGsTCr6Dma6nT3BJQPu3ln/Y73eRFVki/zKmoSezn2qjOGFaaTCa/JMZiQKrbVCyTWL3ELnJBWGUsK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CjDTBvIQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CjDTBvIQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A558EC4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 03:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740971933;
	bh=0VnOfpIVjqhbNaG6bGvmhp3HN01NjWklW4t+ypTVwNo=;
	h=To:Subject:From:Date:From;
	b=CjDTBvIQY+nJ1PKK4urnBe+E7SWIj6gvwatS6DaWCgGcBxMo9Xbn3hZTS+ZvN15u7
	 47mB4JqbBh1wDruN0s5RGfWyw/L+h5RPO9OxdtM9ug1Wc8UbNelJu+WrewHHh42BvI
	 XxQrFcTid3V1KXLz477lX1BsyJNWet0eZqY8a64vCE2iHb6pP82UTKimOiBDobPihO
	 ok8Y8srBKEPPViluj+529sLgJYcsxe8SOflUIFehEJ0Tzf5oKKA1YS6QaQYWnoVDfk
	 ratQqkoYRPfsJXhKLwRQ0UvW+mmEZ7VeG0xT9EjXdL7X7Wt8D3Kx0wq0jtfFXtJr1W
	 uAIAHz2ae774w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94779C19F32
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 03:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174097193360.19116.14824073048276992873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0311c3ff005cbedb0c044c366ba76aea0358d21e8626b64189ad072d23a59a9
Date: Mon, 03 Mar 2025 03:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740971933
