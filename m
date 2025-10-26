Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A561B21BF
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761478794; cv=none; b=LKfkRiWESCObhSloonWhNYtpC9nerkf0nzsW0lNy+/4hevlNel9ukzyRHibcRIYCW7sgWBRrzJGBcpgKE2sThO0c38fS5oVv1GbehqweozQ9NwEd2gFIoOGZ8g3N+TjtnyuesjgTtt0zKD+/PRhBzNUc8b/WMZlnzqDLYF5X1+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761478794; c=relaxed/simple;
	bh=sp9X4VFXkBmyzctM2VNu4kN2jFy2K9IREK/uJ8kfsQI=;
	h=To:Subject:From:Message-Id:Date; b=AHtZwAwBrrjGUO/h6CRzQyYF7demSUP4JUzfe11LtdWNkmKhPVzUv2rRgvah3X5P8XHm1SKiWokzlDR9f/eFVIA1ZgY4xouqF3MacHHNVVmU8C+HvAbTBnWFGkvK2fN4Hch9LyqcQRsgSUvWRdkbsN5BPp10MmbdPFB+JHJKN+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ntO6D1Dw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ntO6D1Dw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A84C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761478793;
	bh=sp9X4VFXkBmyzctM2VNu4kN2jFy2K9IREK/uJ8kfsQI=;
	h=To:Subject:From:Date:From;
	b=ntO6D1DwQPhykcGkLxm4ATzcmrF6WNXItbY/nyHQWKyx2Q+9qQgA33pbstRYPk8kf
	 4btxCU0C82wb6FviRUgiDr6IDC4BAsKZVi3zX0q2etM85IxCHHaV8EPAmg8gEHixMY
	 JPGmHAgpH8TDxRHht+zl9o2i+xDe2L6nKndkyfTP+vQMr8IjWoRMmUmNnU/EYYR7KQ
	 EcDtImvArF2w4slCIkgWBu7BL9rEe5UpwVeoEIVu9X6PwRkCE7ZBTOuaVdjvAt/X98
	 hSehGmR0ya05Y9/Mg4l4JJHzJROMlN6N5zE1/QpoYvofhNGZJtWmZryWF36d3zQs2M
	 cheq3JzPu0QyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94514CCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176147879357.24928.1602046611877616810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f753c25e0e1e6c98196e706b246e0aa2cb67bcf9d602dc7545472230ea492586
Date: Sun, 26 Oct 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761478793
