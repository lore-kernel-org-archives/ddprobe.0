Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FD2EAD0
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748654994; cv=none; b=kOkvUFCPu2BQjNWxfOrxG6xstoNpG4B2L3DPIemNe0+B1/skyD7cv/xCbgLU2M16z7MWpTkSClgNOzBskre69AeHwM4tupNLAquDlzKf9dDx0BGVaPwexcvWJQLXf0wkCoYdVIKS9baEEwu+mCXi5JoAx9cwYBI1AGAC69i8Zps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748654994; c=relaxed/simple;
	bh=7YKKZxwQleKrnD886hofZJOb7BB3oNCGm54jH8UcJYg=;
	h=To:Subject:From:Message-Id:Date; b=oz6BvDK5uo1USzKKDn3+/SoeNi0jVd13NfgMKcBx4aUU6M2sZtMrP/8sFccQjKt4rpgbLxvDcpWIN1skpIpoxJ/xax5Lw435VEPBZbOs7cTl72ONVe4pUxkNqQgoL1SYHHJyc72LcrjUD9JiSAjt/Fl1Vuli4lzATsBIqn3+Mv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q62crhhy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q62crhhy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6656C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748654993;
	bh=7YKKZxwQleKrnD886hofZJOb7BB3oNCGm54jH8UcJYg=;
	h=To:Subject:From:Date:From;
	b=q62crhhyaTxtE2eG9i5l5LsZOKK9yOCyy3Tam7irfI2ZZmcNQbjo3q3GFgbcLjZHR
	 5xKRiV7pglYl9vYENTvYEQMnUjiCNQHIDbn0ZAQJI88E0wq1hs9GR85i5XLvqNJ1h0
	 4ZsGtWDquFe1Ma1aVxL0EOkNvdUP7qY2fDNsxv5MPHPqsR/TmlBttVM8IGhmNGsEQP
	 mQb/REwEBwfe2rn5m2QRsmAUHMAen4tHdxwf7pPoBZ5TGgdatHQrq3/aE5YpgBdYC/
	 qP3zPQIthe6i9hpmwcGuS5RO+r7mypfi4KUFRjgDE++eVQXReB380QsPnD9EcKk1BN
	 ePIEJk07gQnYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945A4C5AD49
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174865499357.12528.3618214011029375676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 001e94451b31a7b44024ba4cb7595853878667a45112d382b31d4b3a9be58ad9
Date: Sat, 31 May 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748654993
