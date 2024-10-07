Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116C218C908
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728344754; cv=none; b=nbeWGK4cYzshRuL6XjkBvDOaXksJFOmpUIbG2cLuZCTjdGWFgnYz4d+ruWlDWI9GXzWbuZOeCe1A4B5btg0jc574CuAT3jo1ofPFNPAOTRSR/7v5p+bGcmlQ/OnUhwCZuALqgr3NAISH1cOoOpALhT58/sRa2JFRBA/3DVAWDFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728344754; c=relaxed/simple;
	bh=x3ny96BfKl2xyPvRgKFDskj5fjxwa/eKxsjf/O3PAM8=;
	h=To:Subject:From:Message-Id:Date; b=crXqrymdbEiMiqJHH7eqmmPci11pwZKFLxO+O5pKnWpJo7Etsvn0G7vd6uwauuNFVL5YlviT25uL6DmCU2ycyOhDdWgJ+USCV9xhG9HHEGgismpiyh2BXXQjZiNVoz8c5i5Dda53Tjw6M5ciSBRSUF+SKGa0vJwmyd19jK7tx2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pr4750Pu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pr4750Pu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC27C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728344753;
	bh=x3ny96BfKl2xyPvRgKFDskj5fjxwa/eKxsjf/O3PAM8=;
	h=To:Subject:From:Date:From;
	b=pr4750Pu1dew46VLfooDOeju1cCfQP/v1YizABfRk5BSjNQiHkDJOkDoWe9mPxXBs
	 m/MB0rufOMyhTq5j1rM3AjYkvpMdusD1rTYFbBTiEu6KsFLvvBJuHRKWbcznsQrOwK
	 mJEcyZR2qiweI7elx7LNOUs2OrmpLRan6jb7a+Fh0+MuKzn+BECI7APQr1oO0YeCo4
	 x58G00j8SGlED9O8YnvcAOyxBvpcWb1Po0V3yRyasfKmtLEw+WVZyQxjnJHsRptOJq
	 TigVQduQB23RaOjr/tcFmpLyf1w0amfrr6IgMyGe9IK8CPAdqE/aG15Qg1wK/WrtgC
	 snERycX/XbNxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A801CED24D
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172834475360.32212.9556498393343668286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 544cde0a403f7226d64dc443515c8729a2869e29f6c7182e5258b970f01790c4
Date: Mon, 07 Oct 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728344753
