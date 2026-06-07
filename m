Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 445841A08AF
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 05:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780809874; cv=none; b=oDlBevtBVT8IUy6JapJYyyafJTbJFvMlvwOfLprfJ/ZXFSnzyaiqc6SMq9muPoHCcv1t4YHYjZ+vnQovdangfPRH9wfHM9F+w65rwNlZ8+iJlG30UjDsBko2PwLzLuzzxvyjHO0X0hMBRNdKL9BiqoysegTkKbAczJUU3rYHMkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780809874; c=relaxed/simple;
	bh=S/JNQXk3cmamzqyxhPPTk0ZblSPhifrJ37R1ww36nj4=;
	h=To:Subject:From:Message-Id:Date; b=RZg4sHk+aLQjKO27MCpDpZ5rSUDxOp0+Z2b9tXOxtBGTb36OXDpfuxpuvZz7vl0pHYcEfOdZodUELAovuSDf1O9cdO2ipOel5Ai7PMMb8lihAMW7vm0vRXLXrJmFjwcUIkEtnQbAeUj2Fe8tzi9EPe4GnzGXH0bs3W2giVkbALA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZL+ddoME; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZL+ddoME"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C799DC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 05:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780809873;
	bh=S/JNQXk3cmamzqyxhPPTk0ZblSPhifrJ37R1ww36nj4=;
	h=To:Subject:From:Date:From;
	b=ZL+ddoMEWa2i6TlXLZVarUjFjd3fZKxECmBGzh1ThZXYl3CicRD4bf/2L6bOeK2Ox
	 bG4OQ7zDMxvKK0i0UcZ9zwe60cgNxUsdjXbtXSyiEOwDiCzpx5q9GDeOm+J2jXUJgf
	 tkhMFkkaYENigiGP9J943sWxHLpn8A35p4v2Q4H14thfF/DE2ArtGmWaHecG8/wX48
	 4w/Tr+ogYLYbCnS6zpYZXW8YNujq+BYlHbjeAloPJCns5UnC2RjQ0BZdZ5kIVXJmjc
	 Ccl1DOaXARA6U/2Js0brOQSQdX/HHycV8759i7w9o6xOq8rrCcnUsla/nVDsG/+rSe
	 QK7wgNjiG+w4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB6BCD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 05:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178080987368.24073.6655327675138712028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecc73180f0901058afad4c6a995654c9659b02056ea2e3c6e7b2b5a8271a1097
Date: Sun, 07 Jun 2026 05:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780809873
