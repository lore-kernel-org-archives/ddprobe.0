Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A76147884A
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768924434; cv=none; b=UNug02KqbLE1mnaUEuhVgDlLUDI9y6gntFEoxj6wRjCJO7UKxc0SRlPwxlFM7VnlTeJUQ2S1M0aPjDGOTF8Kx5bMW8AL9N3rxgHZCxG+D8qGLQoi/xM8nv4b1r7sPjm48mZxiI3JaLKgKJSzsmUNzf7w8MjqcqntUir/c7oirdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768924434; c=relaxed/simple;
	bh=G+b3QkQa1bwBi1WG36FAf2fHKa300tKel8HjaWrWfqo=;
	h=To:Subject:From:Message-Id:Date; b=kMPIhU+R8ak/l4N+VLHkDaZmSbxN2smQX4BzMP3Nd8ZdzW980PfSivRhpCLVY3qH1mO1034G0sOjJJHpnSBXR4s6WQY403VOMkKsiTuM5TLNIgxCokEjRO/unNvaoqbD2maSgdYojFAUzPFc7fIVcfbAkwDqRwNsNIv4b85aDiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qlzPbuQ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qlzPbuQ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A030AC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768924433;
	bh=G+b3QkQa1bwBi1WG36FAf2fHKa300tKel8HjaWrWfqo=;
	h=To:Subject:From:Date:From;
	b=qlzPbuQ33SahkVU689LSArlz+9EXdZv2urBow925eTRlFnxvdkb/LYw66Yzzc91kT
	 VVCM1uLQ18GVhOYiuo9yVTVnySzfnhvHSCl9mjYmDZ/fLm2zgKZZIhMmdG5MyEat3N
	 utGmLcJFyEJxkKNf7klvwZka4UnldA9G8jPzqHjQAK3wPbdM5iJRn2zm03LwxAaLwD
	 q/Vfqg1VBSXcp9dxWNUwgVNecfiZjrQOIsUvWi3P3Fvyz8bO87i62KXriPxXVoYqkV
	 M7RK78NwQhXP8qjtvdmZclF1Wg44i1RKyPLCB5RMQHuv8TExANMowO7yqgis9tp5jr
	 m2qKZ219lAk4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FA3CCF2DD
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176892443358.13189.3511720279696961604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d306c1a9be8a82e0ade62c9baa2446b248a4419cef290a6ef2b5fe66d6c69398
Date: Tue, 20 Jan 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768924433
