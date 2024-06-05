Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0B94964E
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 09:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717578983; cv=none; b=SoeTdADvfLX1SHDI3ATabPcxhAlx499HCfwdjjYyBTu6KFs3uZsr02vxs+JGcgdeGRk0zsQEHse4elFjiljxgHfLYa+PrmpakPcb0mKrm1onL0fzgMJNr1SXhttSL8tMOKFJ67aaheY3FdOQLAzbbzB2z+KhJDKE/AqJy/CXoao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717578983; c=relaxed/simple;
	bh=fNs4/RLoealOBI7RoqgliNtjnDVOCJALy44EeEhSD0k=;
	h=To:Subject:From:Message-Id:Date; b=pS8dTP40aiyY50CoO9anSNjIAVYcEiJ9VrHvFLH3Fnaop7TlWnTlEF+xbT/IhxkkXtOD65IfnzuiI5314IZikMpeVhpfJVf65AxD5kuILImAtpBfXp5Hlfrdb1Yv8zpOvksoPdMEmUi7QwsbGV4o1qrvRLgPOBlFbEkRso8pwxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nk03FDlT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nk03FDlT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB80AC3277B
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 09:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717578983;
	bh=fNs4/RLoealOBI7RoqgliNtjnDVOCJALy44EeEhSD0k=;
	h=To:Subject:From:Date:From;
	b=Nk03FDlTGtUnkJssZJdhP26H/rZOIvCI34Xinqh1EAJURlPLlDMTbQzbXwfOcOB29
	 4zNnj055y2vqluV5HOzKZzFbaHGvY87D+cxxWGqJvl6Wb/xwyKOrniNw/F7Ju9Pbv1
	 n9c/520xtiVuMTiFMYtmQaQlMuLqbV/WEDkNz71Si9J/2WXBdtk8KwQz7uZ3aJu+TG
	 7mJS0N1QBIKjwCsd40xPHgyBZ1Oab/ziDSOBYCPldPJr5frV/4fklOJ8ap1OlBzH7q
	 A+2swQlKO2Bd6/lArei8iVi3cs9+phQrvITGVp5ea3FsMRscP0m1llDruG1T1ysqmO
	 V5fk9QM4NrKTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3BE6C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 09:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171757898279.26300.1387072096607791324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30169f8f31d48aa39a999ac1d8bdf7def762c576b5eaa0d8717a2a4401f57719
Date: Wed, 05 Jun 2024 09:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717578982
