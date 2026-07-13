Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585244502F
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 02:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783908514; cv=none; b=P+0kg/G7mDm2nsWdWD1kV/hf1fgccAux8cNgb1jD1o3SJnJ5bDUm1lf2ioPZq6LV67XaUrSyVcY89WGpmiKA7D6I1ARHnuBGwT9yYj7mdO2sIk3ti08CSxEn+lyqbzsv1J0/fWWkofebDCelJ6dnGPSFVLto761JXmi+bC4MKAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783908514; c=relaxed/simple;
	bh=rRqbGWyXki9SEIqFmkn603TaP8wCec5X3M1iD0RlkE4=;
	h=To:Subject:From:Message-Id:Date; b=Sf1UMGg8mCtEoF7FeNELQCGz/3V8iGa2PFl7jQlWEl7US6AkPW5s+yc7dOYuuXWtEeWbaCf/TBLwimiJ/8+Q3X/TRgJNEjz7vqPycNOJWiJvf9WZI8Ds76dejxmFIXhxMkV5rwSgTdGvupr4AEGlfxG429os1/ml3t6yN6FNNlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZ12Bj87; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZ12Bj87"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61ECC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 02:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783908513;
	bh=rRqbGWyXki9SEIqFmkn603TaP8wCec5X3M1iD0RlkE4=;
	h=To:Subject:From:Date:From;
	b=JZ12Bj87Dn6/u7FO244z3ecZpMa1hcrOL2tRh/Jzsbgn56mUZbORteMb7lqWma66w
	 e/lqSNa7zlsrKmvK22p9Yex4Beg2kuyfHiBNiTOe1NSXoqbSSgKf59C2D101DOzSEJ
	 nZqQ7LjEvtwmNpw4Vwl/6ZxV/wjhTgLkmLZBvVsLyIdZCtSWzs+e7ys00a+6QM/Ea7
	 tclg5EhGiyoka+u1WJukLuwbbloaQww5T5bFyy2EFQrtEBL47q2P5n9anjXCcLDJnW
	 D97JqelerhFvZa/dMeMNUm/O7MIzA2EijtlPaBEYs+V/rVnHjHORV76eB+fXNdXJ78
	 LpYwmpV1adNkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB116C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 02:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178390851368.13717.2354583378531037705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ed1d27a52f69c46f8ae39ed84e83f334653225c6d29ff87c13f991c3960a8a7
Date: Mon, 13 Jul 2026 02:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783908513
