Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 645ED624
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723185954; cv=none; b=crTu1pF9bagqqPDK8l6h34Duy6R2aoX2XECC3B5L/RJP5hSKeld04RrJjqqODzsv5bmdK36RYp1NbmojvtmxHspMUTPPxRJDcDvMDJbvfIQfCMbMb50VmUMzLY727hX6b/Y4lmbeDDNMrREmKSZDyqSFhpwkJyzDPKlBjAk/vjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723185954; c=relaxed/simple;
	bh=HHVimK+EddKRPRf58hA+F58pMmvLOLloiSY/OYuvpgc=;
	h=To:Subject:From:Message-Id:Date; b=c46ma6fPh5O3NgOPZaYegEU9BIWRiodxIIq0SJvguj2dT4ZzNwrsa+zNLDvumORdNLtY3wRlrc/0qHeSW9GBnFOwxlkVXnFDDSIrN995ivymIUru/zfpiZWUf3bQOvxMz/0Kp6F80FSxn+kGj2rv9TWZbrsBnnI+bke7JJ4/obU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSoa5ZnC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSoa5ZnC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC429C32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723185953;
	bh=HHVimK+EddKRPRf58hA+F58pMmvLOLloiSY/OYuvpgc=;
	h=To:Subject:From:Date:From;
	b=sSoa5ZnCCebHr3v1rJkO8HiyQuDiCA8cShaSmC8H+sGJq1yXuH3FxvHQssI7kDiZM
	 jR8npWqbEyCuJCNSlysapDaj0J5j5OM1eAlNJXibhvZCWZi9IzzbQf/d6HYsuMSEx8
	 PFI9sWadKX/qOqrfQDugKUt9s9DnJ0fq/9KtrGIydAefbkMHyonLcnykYcTC8z7PMj
	 QUfAl9lK/yy4YzoYRUnQxZWAxOW7Qnc4Gj8Au6x+/4qegUukeFAMcjL/EecGh9k8lz
	 z3KWXt7QrAwPVV0GZxgzWohpDtb86ofnBdbYejQ73jqe5zCzZnzKQQ243N5b79n/XM
	 Z5ATo5fYlnaBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99446C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172318595357.1207.1601338399735209952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f52f870af09fca80d011fd86b1446d8e85bf53e64d0187b764a2993ce3e8ebff
Date: Fri, 09 Aug 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723185953
