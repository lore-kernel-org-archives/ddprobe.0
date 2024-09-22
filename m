Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4800663D
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727010354; cv=none; b=Bv7+pWQm4iC5a+x98hYuLqskMvBy8fV9F+JPd8J4zVKPFUPr2tj5+xWv1+IvSmPdruONz+zHcRmdOeEs/GrItaKW0WcHZkeGznTgY6WadPPmoSXSkn79wR7QlGuHzR+oQwOMoiIm2S398IrIoSiDueBjbFw9J0vNpsIq/gUsY74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727010354; c=relaxed/simple;
	bh=SHeIUiX06wGVYern1Vmldse4TXasMbmJYu508LWyS9w=;
	h=To:Subject:From:Message-Id:Date; b=YdFm2wsVbfGdt67/HXyq0AIv4FgdFYRuZlG0lbNu3UBxCUrAjTRZ13Z99Y8vZSNTcE6KEnHqtZ9oTDZdtnFvgGuspxasnoBg3HwK+lNPuZyRklWm+5NtQ1rIjcdVVFZbp2cH18RTKjC3KhZ9HZb+ZSZfINenFSxKbLnD8om3y6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dsDzMzEe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dsDzMzEe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E15C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727010353;
	bh=SHeIUiX06wGVYern1Vmldse4TXasMbmJYu508LWyS9w=;
	h=To:Subject:From:Date:From;
	b=dsDzMzEe4gN6dwbazvnjT7AcGfa+UVBtMlHuOTbUHEK9zrg0fvlPBoFOzjJXpXAy0
	 jeUomNmVPsP7TfqtvJaYRvwVzYhU3SaSDGpfLzS1ZtWXR176A7viNP87LwKMyc9ADc
	 NfBJKIzUadS91Bn6ex5x3TANacrSxxmqZatygygyvogXlqVXbMnWf7PrT43LOUBvTG
	 5W5N6EMq8B4khoF+hwJQP1TfXM6nsT+XRwNM8y02w1ucpjcC0LYHgVNXA0uy2DnKh0
	 gAju+O3JM/+mCqvsLLLKJYkDRL6JL1RPNAlX+WaVdjlvRpHwQBL5FyuSLrtUJUI05z
	 vH4HZ1izwjeiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFE4CF9C6C
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172701035363.550.13368245696213047207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 630c253fb90556cf09d0825040d0f6e2c5f9159922965a081121ea659b573698
Date: Sun, 22 Sep 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727010353
