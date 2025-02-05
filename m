Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DFC0215067
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738792555; cv=none; b=j6okO8WG1QqywT7416YGU0WftARGB3MlakiShgmiF/CrTGTIKM16oomGwcOP4UIlXiTtRzJp/d9m21ukJz8Dvf+MQgBhHZPpKSpsoKtqr4yQWcmyHNLa8lJ/pmXgFkdax0uuE7RxJ2HYmmUxw69yLPQtE/oe1uNm9Rl8kjA9ezs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738792555; c=relaxed/simple;
	bh=Yl3Ji5Ty7L+fgeQ0OhQg6imiB7BLeZXdwPA4BjfzkCk=;
	h=To:Subject:From:Message-Id:Date; b=Q7LxkrOFbdar8LfAUrXb8bdAKDIn8VNo6feU6pL+mcHJcBhvsv28Aff4zPlvHkmIP2Lj69ihnK3UJepMnoY6NB3KGOKVyMxEf1EUHs27bdlokhdwrUzXh7a83WWb2f9lbqLqIuV8YqBAmxMmA9KkUX/LPxlz+bkE4s4cSlJ6D28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mFKaCd7O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mFKaCd7O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D85C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738792553;
	bh=Yl3Ji5Ty7L+fgeQ0OhQg6imiB7BLeZXdwPA4BjfzkCk=;
	h=To:Subject:From:Date:From;
	b=mFKaCd7OmukxSqs+277Hv2fIqQr+1+0xKmAx8Rez8kREFuw1wSN8vdpyfMTHR1pjd
	 BbdhxfvlVJ8Uy6IM/nMlOyz74mo6Dhf3Nz/kkue3zYW8XPdLirjs02X3HZl+V39MNf
	 jSIiHsFuL7ty6Cib9wpw2xxIm8ZJlUNu88GknR9z1skiFxI3kQb3HuGF+nlXSkHhhz
	 gmTLjnjm3jzMxZr7bgLXL0zIYkLoeKsGRGLP9hS0/R3yxpvEvaCSPLzDSKD/JmO3ml
	 Gsr30xkSIPE7DYP3HdHwqWGFf8CoGpEV/aWy25APTZ2Uyhf7bWWaCEMmQAPaNpxTQ5
	 nnEVAmUOP1EXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABE1C02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173879255368.6696.5839398195598761822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0bc1881738893004f8e6c9c6262b5f87227129811c73ed9ae7472aa82ede1f9
Date: Wed, 05 Feb 2025 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738792553
