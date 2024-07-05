Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418FD6E5FD
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 05:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720158923; cv=none; b=tFuDwQ5jWg2OQDrNRVLHF0hlJ8j3fBMWdzICRozY5MHwvvGGI8ZxBdUOQCSV91V/PWQxSDdkPtfKTJPrXu7QzjXE9C9Zbce1ryMbQQpApP95s9Iz8gO6XYAHRFUw9Ul9lZrMas4Vljyzw9SN3HsMF2Mty9C2v4QHO4TuTXkmfx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720158923; c=relaxed/simple;
	bh=iDfAlbF/VBq6T0RSg/u5atAS3oonghdZFASxvwZuMXg=;
	h=To:Subject:From:Message-Id:Date; b=RkUhqGnOT7AeDCvVzrAbjAnCffQYbmrBLnSrzHjdZYZUWUU+PpdMoGmtziOORlHchhtpE0ovAKvM1q7LblCE1vW8AdR6SabtgvrdBc9B/tHaTxlhwcCxpwJ6ftXIcqB2lM+DDR7UFCugnfjk6gqI9AMOzrzASmkw2oPpFoKQ2ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pIUt1oOZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIUt1oOZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF1EC116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 05:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720158922;
	bh=iDfAlbF/VBq6T0RSg/u5atAS3oonghdZFASxvwZuMXg=;
	h=To:Subject:From:Date:From;
	b=pIUt1oOZopJ1UVfJHNJwI+JOZDjgYpUMBIDEbDfrEORFbU/To/fEkzNbXiUA4Y0hX
	 cGszp7glqacW+8+yCfXM2xA9DV2UYmllgSsmTmw1muUgCB/3PcvGoPogvP9dX6Ylwv
	 J6+Jj+h+1ijeJRyU7kgFqBxlCZ3/vogzdfvi6MWL3uIiHLJnz3B8tH0zmQLGAcNWHq
	 9mX4pQQkx6JJ33lsjdOjannDGHZ/mEqNDdvIJKjO75zrUnr8jb8jY06d6x/l+pV0HS
	 GvlY9rToBHIwNglutLm88fclwG4YBfTS0g7YCj8SSxiRzw8YF/L6TcoQZuwku1DtcM
	 TKSLzBPAkHvew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC90CC30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 05:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172015892276.17101.1363347499945358291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fac971e3b513aababaa08c2d1a750ffc22c828f42b48e1147b60ad3f1ca16c74
Date: Fri, 05 Jul 2024 05:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720158922
