Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1128821
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730180754; cv=none; b=EZxvk/s8KDE7vAtDob7wt+HnD+2bbRI+aZ8MDaf0JKG0Rj4rNTDupQRRlxv2ZxZAR6FLEHkj6eznylsEVLNGrP2ENdD4xJFQq+vgSdKqVm2deMgVjkoqySY8eRk6VMSyHD6mCAL4nm5XKg+5sOSvIlYngWx6ok2mwpRpq6OuE/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730180754; c=relaxed/simple;
	bh=Aiyw826T1QDSW9RSNb+z9tsCExIKCHXxivkvcKB7knY=;
	h=To:Subject:From:Message-Id:Date; b=jrFw+CsOu8fwBPWp+0Yw+4upgJhuW1sIdxDnB51rp+RVoHF6uywF9KIypARTwr+C6asaLGgClrD3UU35snWgqtYV2FlqcEfEKkrX06wWH77lqIw8zk4F1MJnwbUJXgc8UfBX/25DfICumiR0Gqg3yOmPxGt+2bD2ioa6c6klSd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gaaVMZ10; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gaaVMZ10"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EB3C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730180753;
	bh=Aiyw826T1QDSW9RSNb+z9tsCExIKCHXxivkvcKB7knY=;
	h=To:Subject:From:Date:From;
	b=gaaVMZ10aplP/xXeAAVlyED/X2Iec1UfV7G3Qtfk4bQWWQeZ5ZEU+9KusNXqCGIXm
	 1pZfNPgHvl0RwRuBkAjvMmBp5NKodKtXJo01XyaAPgq1WeE0vr0JYIxBkBr3hgdhKP
	 kGsOxQWpLS4HAvgExsCb8zySjQLVfZRI12C/341yH7roDIePVR6c/AI3x6kDQJiT16
	 f1s9Btmtz+Lhf88G9gvJeeO+U/eS/6ljeHCg1v+g/z3e74BgzXfHER+MWonYu+oXD8
	 a1EOKZAEBogjXYKhWBwGmw69A7uM9Bhxwjt1YqqaKsoT8M0X62HdDJi0HCrBpdpgxE
	 6cYiu3FqfnF0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96583D5B874
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173018075360.8576.360277447040466739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9157fbfb8e960e98aeec5317aff3676bd2512ab5d407d4cd039f9f368c53b00
Date: Tue, 29 Oct 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730180753
