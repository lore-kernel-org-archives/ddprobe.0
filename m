Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0E62F0E31
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751497794; cv=none; b=ZQaNSQS/wsWuujn4K65cg/Dol8GGQUz3CZ5otoBddeYQE87UDd0OZGTsutqoc+tolKeU1rK87fqQRwxTZlIOlQmNTxJ/FMZSCocoosIMG4mj/PFIkul8ud5+soPR+kZRXx+rOXtug+HaUnz5pK9PkqtTkZrytkER4fomMZcXidY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751497794; c=relaxed/simple;
	bh=J5sNBvQIfWhFse55zj7Stgv0OIck31rwt99tj7SAgm8=;
	h=To:Subject:From:Message-Id:Date; b=jJslXzpPJoZL/dn/CeANqqeZjpO/DYqdFp5U7LwEaIi/d7CoD/dLIQJQ/YZ/Vd7IEkMwf+ITwbEl4EZKjgSWRWOHIVNv49CqNjSFoUxaq4FFxNG/VXzsBi729v0uYT5bP2VVB1Ab3782HFZL51cPeNptUXa9lk0GyDpUDq415YU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t8fxwosL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t8fxwosL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BEFC4CEEE
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751497793;
	bh=J5sNBvQIfWhFse55zj7Stgv0OIck31rwt99tj7SAgm8=;
	h=To:Subject:From:Date:From;
	b=t8fxwosLRIlNPddT7jXHt1TH5RAWqPmOBqA9Trgu+LQsxjd0lKuBSyC3c08v+OV9K
	 kN6MjUSHESbkYNQxeLyjXPm7h4iDkQ43Jz0Aow4g3hA5P30NPdzg85i/TpJ03FGkU7
	 zQJlyTeYACr3EJvAiag1QPGoTgWS08A1fwL/Isk9aiK4oLSaCev1UGxMEOJdw7I4Y3
	 6Obu7wMV66KRYIDCIHszz5KF50aHcVtrlSUZER2asGuzJKAk23/QOFkD2O1Xq9nJkw
	 FJp7S4ddrnBTUAxrKeYv5Wr5rfo6mXV/jzlmmNFI0fF+jzQ5OU+admo/++fJNTk5VO
	 o0WNPlHJqGojw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903F3C83F03
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175149779358.21380.1734231111272470373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ee839a88a0c8bfa3d27021747df76a0f24e2059377fdf1287216b52a3655637
Date: Wed, 02 Jul 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751497793
