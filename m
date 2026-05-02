Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E28826E6F8
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 03:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777691854; cv=none; b=e0ejvmB5AWhIKAIALIwAt5hanSToSHC/d8gxmLhaJSnHE+6qQQBHDGNJGs4Qs2SFym5KXr9MTq4b63KDE5FVXiiC01c94EJrqJtfoWmqeo5rONUP6h0bnBIcUTl+5T99HUr5cg0Qu9/iZNRdQbj1Mu7EWpOnNdFZxFsW3AKOQ4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777691854; c=relaxed/simple;
	bh=K2vMsH3LYu16ySlKijcEOsBdPoPLuj4u/3prvxWcu7U=;
	h=To:Subject:From:Message-Id:Date; b=H1Z4CCc4JB/iCNJpr5bvkYITvNxUmaWy4OOhoKKcgsk9Allxe20lrv6u5w4Np56lakPrvyH1UReWiLXzOiJ79Ff9qHALp5Zk7hIRgEhW/0dO1zvld0kOup3s9e0vDLhnem+d35yJNgMsE29m902jSqO9b1QITAeN5dCn3rtEQSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jeJjCj4s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jeJjCj4s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFEC7C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 03:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777691853;
	bh=K2vMsH3LYu16ySlKijcEOsBdPoPLuj4u/3prvxWcu7U=;
	h=To:Subject:From:Date:From;
	b=jeJjCj4sr83kvvlyNk8SDB+lx7BpiyCMb+6kSZ7TSxmgoUfH4VAAcp8OtJgCCYXyE
	 0AUixtNOMPYVM+ZB5dg19mRvvGEDZevYj3oYt0drhbeR1Ez9Z3SFIJgVPSyOT9fUGT
	 s9C1fCqQ0/tpx35vRnqVfuW5gkXN8cBw2QspPgiL3dWOOHNulWQ8ww2s3Bx/gYU8zr
	 BjaSRhEXDhMXFqDi68P9u8wDgG4HcVsFbGxeHTvXEK+92ppwWnFPFGzeceehH9J0n6
	 aNndKUCWs2xryUDD7YKCjt3ggbbDwD5O1Rf4ryIa9hgY1sP+dvFS+XSGWMLGWR/HoC
	 dddCBiefiG4wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3A8FF885A
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 03:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177769185368.25809.11021943688869429392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e09c4c7dd24fa6a4a8f2e4034aeccae75b6b5e56fdf5286b9ed4a33bf0f0b230
Date: Sat, 02 May 2026 03:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777691853
