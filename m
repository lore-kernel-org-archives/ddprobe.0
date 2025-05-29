Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E601241C89
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748484594; cv=none; b=ONGfvbqSsU/Y+hm4VehT9HR8xDN7R2ZJQtXvBhdOq9A+yg3gP5QRlch8yQSF75jEeP5/kb0NLPRzxLoahcUxbRXWZ5RxwC4YlwlBmgWnoaEP60aNeLqFkUHFgmelqtOTkH5COPhJFWungbtQ6KQUB3hKd1uXG8o3ekY5+An1ch0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748484594; c=relaxed/simple;
	bh=P/PIjAq/HQzTH9zj+rqEm7Rfy2nSwjnOjYQ8gmKoSWU=;
	h=To:Subject:From:Message-Id:Date; b=eYQDMQ41v5U9tj9NyS7ozK49AlcKb3PuLmrePZJ5hZgYV77J9gjThV952R0XU0VSvWiJE5PmKYs7MOSFdlccKo7R7Lm+vxsG9efJxuxttFl+FYXUf0neCH5ee7VkGJL2kotvi3rsBCurjUR2LtykAeXpyuf8IkDuW2oX3OUupSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sUCkYOc/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUCkYOc/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43FFC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748484593;
	bh=P/PIjAq/HQzTH9zj+rqEm7Rfy2nSwjnOjYQ8gmKoSWU=;
	h=To:Subject:From:Date:From;
	b=sUCkYOc/tFWrwpXcm98sRYSMSstoMDJL8I8T7PhpQM9cNdXB8+HOh3OScVWk93AdD
	 YgBT3i75SHuJCjK1kEoYyxLRp7STP278Z42CZFogTx/VjKLVJ89mqXNe2LWIwHg5HL
	 qvJsz/lZRgS4NJDzA5Qlo3h5oxWp1R+dg0K3UEw1F1mViaKqxdcPIiEY2J60oIqQds
	 dkgbrSaKEKTK4LsCWD6JoucQVy5FeTHmhGP6JUKvAQ0rBNH/Cir9jr/icx1ZgyW8kA
	 FWZQTILieKKzf2ljfc8HAqSXfHEUoNtwMbdPM08qD4X8fYW7hci8hHf5nVw/fC9YJF
	 2/W/LI2+aa90Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90740C3ABB2
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174848459357.4541.3245729249800555363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50c761b801f1329e24ea9e1373dfeb1d39dae4e9badcbce3e4d5de569b3ec2d2
Date: Thu, 29 May 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748484593
