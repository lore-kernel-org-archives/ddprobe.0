Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1E5279DC3
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770439434; cv=none; b=NJ8wD6nYWz4BIhrfY8eFfBsuX/q4/yXk9R8aNEMPkW9tYW1Cgo6g/nufqHg2ZJX6YhSge/rmSs2ySfPArkbARVzabCuFzze/cpnpNPaTg7xD/JHfo+mJOVXqN3VQ8wyFqN+NvUX1R56nqUqrT9Z5myZ2sUeZ6ZGzpEhR6AUID1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770439434; c=relaxed/simple;
	bh=KsCWADYBDsSCM/6fLF4KwZ1VHo5AhWWyKwr6IbmC4jI=;
	h=To:Subject:From:Message-Id:Date; b=AfIJb420xbRJeLJjYl6SeSgGorrwHWVrRir5tFHCHkkQcnbNPSMuPEOq1GZAjK4+GITMfvRCiAU/aEn5Tfe3nM3jrxSjhp0FkNXZBzVmiRn1gWIIVmJTf7BfGPzxOpgTa1lvpYCruekOwsFW6m/kjS7aRIAlp5oH8bXSv26EHpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NCkRCNxQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NCkRCNxQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1420C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770439433;
	bh=KsCWADYBDsSCM/6fLF4KwZ1VHo5AhWWyKwr6IbmC4jI=;
	h=To:Subject:From:Date:From;
	b=NCkRCNxQ6aPjEMMKAxBkkMsMo1jw1638BHzHjgC6xJ36/ySPPU48kWHuUbdpCC0VM
	 wShTP5mukngTefYmQCwiAGWJ8ohCHab7+VnBNaWpmFThb77Ay4HzvBlW/u6nYnT10l
	 x39eySLPsqNL7gEbuVv0By1fx9J46wnrpMMsWhgjxU5f3Wd7nwUmGwef09yfTvLeB9
	 s0WM/iQUokFg+oqlvhR/BxG6rbsUO2D3nmlHv/Cz2wUecNZixD60f+O0eT/B1850oa
	 P4V3W6xRkiZzeCCo6cjpjQI5MhdRzjf9oagBIdkpSaS0lKABMWMHtAnvDj61ofBjbV
	 c78H/IXw44XYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99523EE6B74
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177043943359.18838.17254444261491636374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e5fb9b99590bcc65a37746e6e819d5c34e4a088cce1e5ded9488877a474e481
Date: Sat, 07 Feb 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770439433
