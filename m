Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02AFC286D5D
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767527634; cv=none; b=k7msadbx1CwkhipQtTnfpgWNWX6bzszCPuikZIaAbJSwqhywgNEzx59uqIYPoQK9zWC5TyADZXM0w8Qj0JK+1D+uNc+czhHCTMya8gDMmZUt5AwgzIeOUO4obfke31jqOFBM+p+zuZBFM4D1GNuodjnfKFmoAglp1ttghwD56dM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767527634; c=relaxed/simple;
	bh=guVwAF//u1VtIWWnuU1VME1buXwmyrjELbc9OPEnFEA=;
	h=To:Subject:From:Message-Id:Date; b=Ouv8YsgvpKmShaVi8KziCzmTdZhU3Wkbys1EeA2M+p9rmoQ/IAyy7c+nO9vHFZu2apctCUl5LtTk+AvofQgRPx6P0PGUA7OntzVJLaJbkNY7QHaJJ0DOP+kQQvxhK1YmQjw1BZEXhTljPuOyWDEDiuotaxG9cdvr6aEBF8uTanc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ktiBuIV5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ktiBuIV5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D7DC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767527633;
	bh=guVwAF//u1VtIWWnuU1VME1buXwmyrjELbc9OPEnFEA=;
	h=To:Subject:From:Date:From;
	b=ktiBuIV5bkKDTGBj0OlWtGQHBpYwYhh+8dY4gon+DGf4cHTVnGZiUgVNFbT6khTH5
	 0Gd/2YmJfxC75RHBXGDJLzlaIIfnc+urp1PlgpyqySF7USGNx+CJBX3Dbb5W5T3pdR
	 5h8Rufau1avnrg09l62SBQ3JQcEG5eg5NWsnnyPgCbIMiXX4Frg+8KQ8JuFv7+8QF8
	 Nof1U85cFNZvAnuS5o7kCuD7oITz/kkBaE9r0ze2pVASw35yyWBo4DzQhZL9Xa1F/M
	 E9zb2JWwYu3reVJtohbCCvEI1eJPZbOyPru2SEeqV5VPNsAcPYnrXfwLi+CFBMsgzl
	 FDQ+6dQ+sQIRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ABCC2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176752763357.652.14262882927133591165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13715e6d4cc719fbb6bcb0c54e7bb60f7c923c45dca92961aac8e6b9ca1ae296
Date: Sun, 04 Jan 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767527633
