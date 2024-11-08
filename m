Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167F5233D96
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 18:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731092155; cv=none; b=O7z3aobV5gG9ilZHhvqZZmfdKoS0SgsPXVoptRNuo44BLtemis1xrXUGm8eSMisODz2PtEm0sJuafejQRWDoNThBDv6ymW6hh46+A1kPppzuZZlG3g61NGpJ+GkI7n3dl3hGordEwqlb+ICXgm64gXzrQY/ZQMRR+AyI7XpnxTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731092155; c=relaxed/simple;
	bh=23Z4C43ETog31ZGB/vTXsfRWTNxz8ub27kw7vNaM+zs=;
	h=To:Subject:From:Message-Id:Date; b=UljXutuwWvaG+Dwnu3aTjZesmbXwkGBD4L0X6yM2VxzL6RXwCzEsVfVdOsmKtZOymSKG2tnEbFj4PFgdikQmyVCj1rZukBirNXELcM91RgNGP/UujkC9MVZUxGVkNxlvvEnz/iHQyxXQuRlh78L7C600cLL3lctBIGn/8dLyc5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XchYisBV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XchYisBV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6024C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731092154;
	bh=23Z4C43ETog31ZGB/vTXsfRWTNxz8ub27kw7vNaM+zs=;
	h=To:Subject:From:Date:From;
	b=XchYisBVVXNJCxjDQwMyST3tGJdlvG+fa+WhEOC9W9FiTRWfd3h/Ei5R+LaycmY9X
	 +DFTD8+eXArkFb8rB0y7lG0/HyUdddmahmVvhHejIfBI2LjEr3TsuWuO+dTF1R8mIW
	 pPxQ6HR05lqwsewzSlk/TxjYXsBEmuDa2qCzXEQAFK/SmN8zkGSDbeRHMhQ5/QcNYM
	 h6R5Uf6K9ZS8zLQQIfgj10d1rqktBWyn6gke3d2Yy3+FwiuGoGuPKgPsOkcmtOW6tj
	 NP1aGB+0jLIxFOst/Pc9fkzxx6bjvZJW63aHdw3S87i2a+WreS1NhP/WCslbXVXgsi
	 lT6o7pJppvy7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958FFD64072
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173109215360.21385.10319105239780025952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2268a8d2ea6c0b5d5fe5deb8efa454588f05aa6a411c468d580740acc074b3d5
Date: Fri, 08 Nov 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731092153
