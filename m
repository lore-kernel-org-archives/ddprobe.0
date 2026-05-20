Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC60343894
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 07:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779261634; cv=none; b=WbZK5m0CWG7wGdEH5RBVhqEtjccszh/8/dJSt8aLOmeFbS2Fubvi7I/J1ePFMYnuREksbCm5D0EDKd0O1TcipMWNkjgftfjLLq2A1os5H5jyn/4jEyl/oWslJfpYop4L3AHBtYQP+BKU7sx3J3tK7fbSXGUcgoxiWnQ46/SgtNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779261634; c=relaxed/simple;
	bh=uZP4T9VeCOhMxndg44CwguS5lYEMpgAMwCPaJiAvXVk=;
	h=To:Subject:From:Message-Id:Date; b=G7+DfEBXK7qR7Xu70SpP9BX27VC5oSiTUjgFg6ZVQVLT7PfsqR+H+L8Z4DuiPZoIXASI7PSwjop176uNyrQmkR0sb9N1gjpFhiJJ2Ur6McPsTC+J8ha8F85YRflR/zXcpOSh7zv8N7MoBVj0lfONHGg2Cv7f4ssiGsi5wzaFTFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YRaPXhdc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRaPXhdc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9A5C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779261633;
	bh=uZP4T9VeCOhMxndg44CwguS5lYEMpgAMwCPaJiAvXVk=;
	h=To:Subject:From:Date:From;
	b=YRaPXhdc+dhfmID5LZOYvSLuCYzU1FNZBZy4/ng49jg9NnWQAxTlv0kPlQOik248Y
	 jw/OyGHddZusRCOpCgk5DFKZxD80s/uLF092c+1DicQ7Waa2hj9yKutIfiYgARUP4b
	 J+XLsb3rnIKcMiYE1sYuDi3g0HuQI91yzyLexjQ5zXe/F/K4hm5tKGodmyMtzuKhUg
	 Q1nhnXTmb3kYqKEjVqLVMK5XaH2fkEHZkJrPJkoDH+TDGNz60FC42r6CktZoaKg6I/
	 ApTrm7mXaq3Rr7zzlDw/OKFNBn49oLfHWz81d11UixtUJS0oQnsd4E6tNNEka4Xkbu
	 RwtsikYh10wtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B610ECD4F5E
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177926163370.30469.2770033857733096297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 802591ec24c7ba21e7c15057c708a4a079e2c62d65e7d46b6ffdd4a9bb5dbf3f
Date: Wed, 20 May 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779261633
