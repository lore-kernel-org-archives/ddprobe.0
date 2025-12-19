Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9251DE887
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766169234; cv=none; b=XrdJjxcZ8llhM89sE30+WDhX5y0eJXxqmsKHnq3TZuSjPG/hbhasVP2lxTNp/ot0gPxeZ6EUG+2je2VdpX0qzU2nbQltD577zdoXjQopkPdwVaGy7CE9qT5LibpMuFd8tax6A9cW+iRzHvX4Yx5g6pIjkXEcL8Fav2rw+AzUOqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766169234; c=relaxed/simple;
	bh=BrQEOyWb9aFDoXpnXAmBu6Yag6t3GKoUr7Gf/6NKa1g=;
	h=To:Subject:From:Message-Id:Date; b=KqfeOvuIMf5xHXgHtPoK5CclLdNdxhO+wxAqAz0SRKTvABewtVVqZ3bMoxUNhBys+OHtwf5UddpePqMi2S0JNILvxC3fERsp0Xh/jdM5sINVfSSS60xCGIWSoAKl030XcSwoZXeKnLQpRVnjpYvx1n0C5ARyhBuqH+iUBncNUGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CM1cNALX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CM1cNALX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A5FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766169233;
	bh=BrQEOyWb9aFDoXpnXAmBu6Yag6t3GKoUr7Gf/6NKa1g=;
	h=To:Subject:From:Date:From;
	b=CM1cNALXGh8Z4kSwj4+Y5pWE5Ni6Lb09jLbCnWJ6UrfINKf08DI1sOLpZ+1TdAHej
	 iMy6awyyAj96Mo31QLGasYCVHeF04Qt6HWJ4e0gog8EJOYEEJegyAlZB2VCmHLMcNF
	 SrxsJEiuEMW45VY+NABmoJ0vII0wV00RZff7me0G9h6CBfMMopixEQpzXmBWT/PnO/
	 NbTKmalGdWvg5iCMs/ujCpSfxcXfcVXbLdvULiC7Sx8IwMEj8zjk0P31G1owKpH10G
	 m80L1kR8LtN6gLkfoXvj/wgHV5M4EK2nVbJTZp/Mn06E128O9+VskLX3jkxqm+A/pF
	 05iICa0w7k/5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9236BD78770
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176616923358.17946.12534510025607590342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f8558e56263ed7f17a348f2916ec356393a3748b3f81e7f18eb4b53fc499204
Date: Fri, 19 Dec 2025 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766169233
