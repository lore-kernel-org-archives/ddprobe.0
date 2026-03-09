Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073CE392C54
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773054294; cv=none; b=sFnIdlDhxdvwHhL2K+pOuav7Shgh69mG4/Ekm/H0IoFg+CgGUvcasdtDwKHVsjwBxsmGmmlrtqtMotf0lvEvjYh9WiQ1s/VkihcDF/a+YhEZeFWsIMVSOdbZm4xDPc7DTijuF1RkjsW3EipNQsc81Fj3jXRrguKzNrGJOilzr4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773054294; c=relaxed/simple;
	bh=uh3GqAbcQzC5qhDznn8O3kfTmYJ28GutEdMzCygkVi8=;
	h=To:Subject:From:Message-Id:Date; b=WdWPQ5znMHFDZbo6iLhS4KAYgWTgVQsC+tN/TD+RN31AoT6pO+PrBZwT2cV23mIN53M2t7YNCw0gYoZqFacbvNLvi55sJ3+V3h/t7qNwMm9J8VwleBMj8CBKJL5CGHrHIHKCdJrC7yWsBoUgpwTG6kRxOSTsifpfO4R/2svnfPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ip28nH+V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ip28nH+V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A078DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773054293;
	bh=uh3GqAbcQzC5qhDznn8O3kfTmYJ28GutEdMzCygkVi8=;
	h=To:Subject:From:Date:From;
	b=ip28nH+VJHlbLn9XgHYLFojf/YIB5833kzm1XM1CYVDvTJbyPskrUasUPZTXYUnap
	 z7hhZ2n1GzwdkfAusW7kW1ptXMlgWX4hSK+FmPvNIHlLWocZs0l+VnzvM9uapXtsKl
	 GbCX0e6YfbTWp0YqMMvsW5x5fp0LYJaWrttzm+eoWDz8iY2hE614Dik+GvJqWvYRGG
	 erkMJlcOtFBuEzCh52H6s1thkKplI7MNsT65PTKC34mhjInyblLpFsWu7Tlfymwy9M
	 fBebM4GGpUrNXzRDUg4dUMypItcWRhgBLbV99FlOnHT3mcj14wgJcuVpWSVT8oJG0A
	 uxMRhW2T/PPGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F36AEFCD9A
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177305429357.7072.3873780132341011654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1d1257a9ebc9d3f90613a309f34e71143089e1aba8ade7330f0f7938b1daa70
Date: Mon, 09 Mar 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773054293
