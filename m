Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6967344D8D
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774545894; cv=none; b=RY1vRKQdo+EYiOWurPdjU3myLHZu8f9Kz575z1BERZLHXoPVE4tKhl+jIn6h+hvYAQe83plA2O+IgBf5tvoVZfAA95hmFWLeaO+cMJZTnPg7iLuVmt2oYKKh7jGQxre17GigsGkciKJ1uSOh0LLhUiR99XCyUUqgBka96gdhGUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774545894; c=relaxed/simple;
	bh=Dj1vzBty8kytj39Eq+s4Wd6YI4mVn4PT8+JHauIQNOM=;
	h=To:Subject:From:Message-Id:Date; b=BqxLFxgmsCxGTr1HZNA/7erq0qF7BttHQ+jx53YLKntAT3Vks/w+vmOcfG3YnibmkDKGb5iUZc388YxXVXGmkA7bi46jIVID4oRXcB7wHS7HyYlM6z3JOwFfEvexs4782kHY2+NU0cBkHLhwlGTCRvgstkXDTiFENn+pQ6rxBhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bBBDo6NN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bBBDo6NN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11FCC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774545893;
	bh=Dj1vzBty8kytj39Eq+s4Wd6YI4mVn4PT8+JHauIQNOM=;
	h=To:Subject:From:Date:From;
	b=bBBDo6NN5SSIVg3vBqqtxP+yRiJvZ7OK5ens4XQIZxo2+hVK+aqC4AbizNL+FNFqD
	 TBoU/zR2TTWpma1ibbqc3oJft9y885u/a3AvvzLhRN8PdIKZY3o2rjE6CHNsFWd4ty
	 a5SiC4fpkU+URtWhgV6rIhLnF0ShYVRyfqqAARvAz1QvIi69plfgCQqhiPmnt7V/WI
	 49YgwgS9VtfTDv95eZhJC8U5Dkx2kiak0Edm/PkZAa02cy/3XFiT8EVsvaTBfkJQwx
	 oPzmmM3A8ksTsfjn9rVSehBKZAYtXf0YU0dNvt6zDLQOjbx2of7YxoiZd6gmrgAAVc
	 Acx0Zryaa7b1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BD210A88E6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177454589359.19116.7212854082353564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b70ae7a2cf14f51770f507501ae8cb7dc0c4888e42de1c899646eab26bb7e455
Date: Thu, 26 Mar 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774545893
