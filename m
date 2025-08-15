Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FBBC185B67
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755252594; cv=none; b=rb2BEHJDCTg7wZPLWxFFpPbJfsNbTL2Lt8hyoAjcjO98Vh9pt4eB+HRWSQXwP3GYcli8GT9DTdBeuDDlpwWZj4mcIrxH9o6EVLojGda5QE/DRnTl8EB5po9Gkxk39HRcBrdnwHlWWYMKTQQ9v+M4dr5Kyy8EbbPJjfttYGJ1VyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755252594; c=relaxed/simple;
	bh=VMHNzGcPRDEQO7wp0eiSmC8QquJJiwGZ5KbyVm2wMD4=;
	h=To:Subject:From:Message-Id:Date; b=Uv4RgxHxeh3euyiVznAHhPdk1hE2JtvG3Q6UWAul6oYkFNNTGxmYrm4j/X6cUAMc1hTFfd34Yb63jzDQ957OfWFt7pBFKpW+H8Y2opqnjaUcSj19mdyCZI3PlLwcQWw7LIiOu7udWdd0H9+m6moofGKCTRdytmVIQLkwsh//USI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vy2/ctnt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vy2/ctnt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6712C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755252593;
	bh=VMHNzGcPRDEQO7wp0eiSmC8QquJJiwGZ5KbyVm2wMD4=;
	h=To:Subject:From:Date:From;
	b=Vy2/ctntl7AyZQRkjG7HeouKpFYVHGnhfkRJb8j4YkdbMQcQTe1oM522IQ3JHvN1X
	 Upah4opt1Idi26dEv4aZc+hwLwTe9z3KhSIseBjsG+ie73aJ37BQlbFB6kU6IfD93Y
	 +lYxrDpxcQBqC02JRbGcx+pby9Xw3SNMGtUSGzYGLXP5dPLfR9tLMO4ZKBTLMJme9w
	 VaxPVWH1rcRmGzgZiq8f/odTVutAbYqJv3iYcbl0vo7hK1IPNdRXNuIaZUU+aYfdBA
	 DpCwxlRw7dg/W9YDWR6jHOJlKzkGk6Jnl2BeHaPig7UbeRyACdIoTRLNR2OCwh/u7H
	 QrpK3TCHh8Auw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972ABCA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175525259361.13280.7588871655202339795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1426fe75c30acd8d2746bd6d5b572f1232d0b3738656aedddae8d1fa4a0b0fe0
Date: Fri, 15 Aug 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755252593
