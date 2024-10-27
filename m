Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A67518787B
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730068554; cv=none; b=JUNzxYQQ1yPiDO5d4FU1nAppEfwu9jLCd+5hHIMGZBDd0KxmzEB2cSkOKY9W19DbUGTziVThVQIBoybb0NXB2SxARiMcBArTzgGt38AWDH3zm6a9DQBtN361020yUQ/hMwWOgt2yGeclTfYT8YGNEOPtHOJihznOQn+EKc91STo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730068554; c=relaxed/simple;
	bh=QmRNc/zvYc1Q/qYsJHWtXcNLUbNCOMPv9rGKuanp+Kc=;
	h=To:Subject:From:Message-Id:Date; b=Ct6N05X5CyQw4vcutDLLEFscVZpvHNhhstNgG6gU29a4VPZ47WigTC5K9M/CZ22rlemQyNA5wI38TY63D5fQ1yQxHenNyA+tO9JZ8WzU3BtvTqaYHZtPfDEW0myMpquDdjPtguPaaV/PJqbFnHDZ/kafv25ScP7+oZIqv+ZPy2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZzdlt1o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZzdlt1o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A685AC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730068553;
	bh=QmRNc/zvYc1Q/qYsJHWtXcNLUbNCOMPv9rGKuanp+Kc=;
	h=To:Subject:From:Date:From;
	b=JZzdlt1oCvXrqu3kiJJ0QMz6u6VPX3KYkH1IzEFzC9J0riOuGSrQiaTmAbOzDElCv
	 ugjwLO5UHnhiv2vtLeLWnOPXkJZJdEsVk+HEsMhh3bqtOJb5t3baikKAGq6OkNKCCK
	 d1noib5Oi+U5gjKmP0D4FSiufnDS42M2RgMxd8eIVFo+Iz/7G7wZkKR0webAO7cGcA
	 j6f+jnlijhqRggrWgJHcFdZUGy5IABLrK/z/T71RYmKPwx+NnOlEUSciQOD7eh2bU3
	 RxU07sk+DbfiEXes032aJS+El1LhlQ/OrtCW2MghmAk/FPWS4X/Ypa7hxknU/lwoCq
	 0hUJQeu6qGNJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942ABD13571
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173006855359.14956.3205281002415715316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07673b6a9a6b0437cc36e9382801f032ed3122c777388ec0350959ca6156e755
Date: Sun, 27 Oct 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730068553
