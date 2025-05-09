Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2797F292091
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746798595; cv=none; b=YJBFxiMKJfe0+1TySaaiSD7Q/tIVWVTMSgCjRXMqmGmRxh8BDX7KzsYZbHO6360sWPmRSJ3uR4yly/ciaagAkJxias/4dFEjAlLt+VNzVZDah0EekDMV2cDgTEfLUHY5MbkFMqqDwsNKAUckpQJswXLgtEmuCuNfW3U+ApIor9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746798595; c=relaxed/simple;
	bh=01OtFTXGHvBfC5rwdfHorr3UY6Gr7NSWwAE1ObCcuXc=;
	h=To:Subject:From:Message-Id:Date; b=YLcMdQiB07KmoxdUSX3QmW5ZvCmiEcC9pE2likwUzmhQAHj3IyLR4JI6V7ERzNYOOY3SshPxiqXLHQG1gAiLE2lS1SIQ39p3JxCp065MiR1aKP8a2Fa5bKAc4stx4IJhHDcpo8u8M7SZgC/z66YBDWJG7FTaNPGyXctAy6dLLP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c1CzRehs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c1CzRehs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D460C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746798593;
	bh=01OtFTXGHvBfC5rwdfHorr3UY6Gr7NSWwAE1ObCcuXc=;
	h=To:Subject:From:Date:From;
	b=c1CzRehssb/8WI8qJeFMMWU+fxv3yDNzAix5+DTROelphSadUy/1WVuHLtrjwyCMd
	 dDxSKVLeAj8jp3MrxQcNyxMO/Aatrwxps2q7PZGrARWnjaUFjlXyHLgPao12i84g7a
	 FElfp4PMZjlCNsuiHcoZu7IXE7S5YrPtpgKmdaI9e78iI33R1uE22w+Fjr2ZSo4L18
	 bVu3aj/IDXrrxFoTeTN/+cLz9PwHrD4v40ln1a9JaoeWgRgqG41qcR4CsHFbZI8eSa
	 A5oKN8b2BEuphNEhMi3VIIkqvi95z/HfFKYIAetNa76zmvR0aUxOgp+kVOZ538lL+v
	 TyJ4RHv4cA8gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7E7C3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174679859357.9043.10500003255107326994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab97b55502d9777e0636d444334d5edeb9698b33021ae247add99dbe3ca2d84b
Date: Fri, 09 May 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746798593
