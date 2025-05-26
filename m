Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331092101B7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748274594; cv=none; b=AScczb73xrQMpHxNgVG20nBhsVZ6dGhceSQGQ3SKJKs1dt6NNsU8O4Z8AVqY0f4NGshAmeXVOcSnpXydAktcfejarays1xc9hspeTGFKeMHQONrEFn9g+R7KQWuJRcasSqVNqbUy8ET2bE9X3QsB5apzcULK9WUEZWlH8XJlwfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748274594; c=relaxed/simple;
	bh=31rpQvkTaEF0Hbfe3e0V34MAdI8H8PtEr6PBxNJskbA=;
	h=To:Subject:From:Message-Id:Date; b=VsaJ4Gecx3MRXvqDNu5Uy7fRhaZkGarQ2HN1MDkmMIv7fToSEn/SRwaBfoziHEn+BbQa5m30G0YrMoPhNuiUig7uadqwUMXts/9M5PycyI2nokUuuTU7QUlKhEqrBZaJs+n2fuO7PDXFcTMFTdkglMe22VeUpiYeh9C4fjF+ELI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTIcmOFA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTIcmOFA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D1FC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748274593;
	bh=31rpQvkTaEF0Hbfe3e0V34MAdI8H8PtEr6PBxNJskbA=;
	h=To:Subject:From:Date:From;
	b=tTIcmOFA+lCAMmNTQRevkxxTbVGkgcooKDnE5EDmubbcPRsvl0X2BNCNoz9dBzFH+
	 NCWLMp/LVHZ7RFj2HOMh4Zh1FDe9ITecCteSTUscfWOczQCKPYspEawWBlajf20TzW
	 qgLfSJzDOO6I3PpW57Nm4TScwFJYGjfC3eKSTKbKtUdZin1VWo5KJku/j7+H04aPDg
	 vrS0GbTHryK7Ycz1f+G5kHBuM3vQnLCLDzwJPBNRrw3/L3u2HfHT6Guq7mdX9QIjrS
	 iEHDkYroCxMuDmUK+hlLIf+Djd1IU47f2zdJxiQe78CO4T5iMNDTCiSSii69wGlESL
	 vTImWBh34G1fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9008FC5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174827459358.12494.3099203938188917759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 859b2054895fb9d556e121f9a912aee4ffc833455ae82d180a06e0251a7ec8e7
Date: Mon, 26 May 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748274593
