Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47266176AB2
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 21:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718744963; cv=none; b=HFhAY6qtZT/Hvm5eAhNob9sW8ZP5QIPHW1R++7mnd7Wgvta9nyZG/uFPEuQU0QDe2ALRagO3TahS8++vVPEWJJXcHo6mJX7Jvz+gnehZRgdmg+9brXLp6RzTz4Uw7zydK31OVDJ1HTf0bVXkLEQd3LPsoSjGyzaMpaPXPU7jnY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718744963; c=relaxed/simple;
	bh=WUEJnOcszxtKpHv9wQV7D3gJuuLkk9pKXbhiuBlW2vw=;
	h=To:Subject:From:Message-Id:Date; b=TbomklO6cWJSeKNzU+r+heqGLQUuWcvTf66eiBgOXfuu50zUiN8l1EzO5Pf9RsGfC9StzZy+ail9c7QNg+1EqaqycSjQrEFx6VXo5+CHflLxQQPKfV9ReH9iRt4SAVB+xKk6kYJtof93tO5NdJCNfCe5D2y9FePlACShE0Uq6yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4zdJP3K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4zdJP3K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF9DC3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 21:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718744962;
	bh=WUEJnOcszxtKpHv9wQV7D3gJuuLkk9pKXbhiuBlW2vw=;
	h=To:Subject:From:Date:From;
	b=f4zdJP3K1VKa02ZITaDZ+q9rYv0tRLOWrxJKEHK9glOYrFZwi1jYWohTkZckrYR4i
	 2eC96DmbE2lRBD1j4VcmJLRwzyo+tfLRAdlWEM5nGeeljkYNtUuLOBBAE9sgis4CUS
	 UpScNbvZ+ZYfTq4ornNkjJiPk21sbPj9eozLn5RB/3VJV9IMQ2NNy8kuWT1jNr/vbU
	 pmQ2XOwq21+JDAd2ci83TYDYVcSfuDq7SC/jJPLpa+D7nC6/sC+gkilJN23hjEuGWA
	 VFLtdJTIzUxrI0jGLo6BT6kABlAuLQiCvIFOaotbZ0iX+oe8KI8NSN6sraQvj+TSl4
	 QPcE1EVZmtWJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C44F5C2BA15
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 21:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171874496277.1449.7079697899994784101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65811f9b70e11578b09909827ba9eb46f382d336c350110e6ec84ef7f3300da3
Date: Tue, 18 Jun 2024 21:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718744962
