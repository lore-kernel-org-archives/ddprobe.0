Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AD91E4AE
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749278994; cv=none; b=iagsrBR0HKDU7utuVWWSjOZd/Cm2bWI/df0aMnqZebJMBeQXcMfDUP9TPrVctojYQ66QdUEbz9exL00STAf+xOuR1txSzY+qF+FOhvhe41Umema+rQl0zeuNRevMAuTB9rUba9VnazOYcuBLakA8dS1L4ZQygnoJGdXYsLgpD0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749278994; c=relaxed/simple;
	bh=m6KSXinhlvsFZJTuIUy/TUWnArOxmJw56t0Ny+i5MDw=;
	h=To:Subject:From:Message-Id:Date; b=hop5Tl1TX37n7CzsHau9a+5VzaE7b/hTBn/TcNudUcEuo2stx5RhOjFJvl+TmpVZmktlZJ8qDDdjlWjRhDk8OqO10NKl1VRujhDtqNO5L8hxOnS8TjDH+QL5vIMdj51uSo2z6YY4mws2mLS5MewhBOb8tOHnEpH0e+ZifLceDgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChI+rn+O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChI+rn+O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A598CC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749278993;
	bh=m6KSXinhlvsFZJTuIUy/TUWnArOxmJw56t0Ny+i5MDw=;
	h=To:Subject:From:Date:From;
	b=ChI+rn+Ox+jIwQ+endAF6yOMS6WEgylYFhYzNYko3WqLz3uR8ms4xZZQEBc2Q8ces
	 jZnfvphgjnEEFg/gJFSB27x41iFmLzbl50sIzdHAOGW3IcNtuliQGeKvXp6+hssJnL
	 bl1LgqrkkaOgC5/ZUP5vIa9kx1QDkEDac7v+BJcSF6SiVlqXHqexjJ4bQr/KMSsC6c
	 wgVPp6A0+S3BnxgbFksOOiAlUVrfd0acPOqaTkzp0FFpld/t6/7gVO8UOaveQMhmiw
	 Cxfj2SxbBIunXoQm0fb4KHMuCdkoqj2aFuPriDWVoXGNsejX9Ls5/anf7bhk+UjJWP
	 DidG1lLzoYEWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9194BC5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174927899357.7159.17148901457938540134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd7cf6da9a7a5789f308fa4d135cc62c7fb1394d3cd7c58b5e1a176c5ceec086
Date: Sat, 07 Jun 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749278993
