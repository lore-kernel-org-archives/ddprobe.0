Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692FB199E87
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 15:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717775843; cv=none; b=G4cms1qRGPwxOVirY6fpD895CMHl/wv+Useooc+V2xO4rGdthE4aMQGsqaRXLe93kBY9bm+yrzMkzohxfvcMQHb6U4BfHDarSoSoPTiNtns3R3Nz9PZKmaGAuGbxsAEzmvKFonI2uoQV7ZNmAmrAmzJYnQXbPGy4jDGDwI/udmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717775843; c=relaxed/simple;
	bh=f05KjBC3ObJIAFRiCUn27nzo2uxn4rKFxxkLf5zlbGs=;
	h=To:Subject:From:Message-Id:Date; b=S0eXaAxiqBBNa5woPWtolMCn8KBvHgZJCFcqqGZi5gpQfDlUJWQcIZur4WhfNFOXMny0reiUQpGHxxFRNyMu2o53npuhjC0zBYpEawRHBgG093W9h+XEeqISpLuydx2wolWQGZFdHE0IQUC2Z5VlE0Pevy6NvAjhRbFGmbsu+58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B1UGIyoz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1UGIyoz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA2ABC2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 15:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717775842;
	bh=f05KjBC3ObJIAFRiCUn27nzo2uxn4rKFxxkLf5zlbGs=;
	h=To:Subject:From:Date:From;
	b=B1UGIyoz4H+Ve2eDcQdT32PSXGb7QB0L8TJ9HNsSla0b9esdZD2wE0LKVdB34GutS
	 3DIuExDJ9oDqquI+xEToiGC62lxWovK4MZ45zH04oNO7tKeq5VSj1MUu2EOppMLOx4
	 CIk1W7ohnUtzYRBlJVudRsUIYJpMwCaDofGt/gPae+qhVkrVm4r+a2Viy/dKQlwRZQ
	 fnpKlVkB002jHAlPo0hiGTY+AazzAM1Q/HA9S9DLdOG5uQR52NA2glXzXJeTI6UGGH
	 He1Bk9+kjnrGoB7GRZmUPw7QpF3k/3zgnyaZxYyhZmx+hQ8Jd0VBL9K+pPYbL6c6at
	 uXUVyXt0rSjWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAD43C27C5F
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 15:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171777584284.14987.8716239077669872666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a05761de3bc3e6ffef5b822c79fc07da9b5507961834ab23bc99c3c2942e4c82
Date: Fri, 07 Jun 2024 15:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717775842
