Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3980616C86D
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722505554; cv=none; b=D52n0o5dbcs60cVqvyy8wnzGP6I9q/erZ5XOHZxOqKyNrTyfG+VPcLImBb601ufhYcRtzm4hShO+jn0ixx7ixWokVRIO0NhKZb6O0yxqLLvgVuptGDAbOmjzW7I7HIv1DpQysbgPaNnD1Rw3MHBMcUeTkp2eFa2fMpWCeRHxlcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722505554; c=relaxed/simple;
	bh=omRgknreQ33IJeMcEG0w61ShScEFuXdsMvZ/oWXA0/Y=;
	h=To:Subject:From:Message-Id:Date; b=KpvFqgqAD702gasFW/nvtvy5cU80MxBv383ShWQjTMoqUJctdm0k6Z4DyraLobX3qF7oyVF3RgnA3pdb6lolelKFeYmJpKYbt5fDGRoTjl+albbo7iESjUqJvkkktgmRhDqUioCzTPnXSeqYMcPq1DqwKNZgBovOdpLkyNalVvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LIEr8jXL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LIEr8jXL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3385C4AF0A
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722505553;
	bh=omRgknreQ33IJeMcEG0w61ShScEFuXdsMvZ/oWXA0/Y=;
	h=To:Subject:From:Date:From;
	b=LIEr8jXLH5Vdea7w5jNN6HwgubAc1g5V2IXpiCEKZrxOqDLZNmMcMmNuEqQGf97Cj
	 DDvRkf3jozm+6I/O6oxVT8CiYXqtEBVVody41/C0O6sTkqZX0m4KsUFL8UUyAG1+KG
	 3SarJtIZFGjcMqYsEVApqy8FspEhaK/8coemqA4c5O2tNbjaqoIO9c/IeN0zWGIhzf
	 zAtuzWY0jXCpA9S/99Ga8FK6JOlr36q0sLc4QdxNWjBaFxbJmxHLcrZErCKK1W8BCk
	 HZalpqtRFi81QGyxU3mcxhsPBZ5GdeCejSdRvFxsGa0IMD7c/cEaA6AXEwZZwPrJIU
	 uY6xASdZqqbFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1C6C3DA64
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172250555362.16444.4551690039778594570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44918082581e09fa19ec5ed412a49f0b12c43aa3055353636551e5377680cb36
Date: Thu, 01 Aug 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722505553
