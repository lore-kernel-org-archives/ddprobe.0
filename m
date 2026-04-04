Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350A1217723
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 11:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775303734; cv=none; b=BTrZq2FUDvXC7FbfPjQOs/XmSOfNbXgNKbLvt/32msNj6DxYxqR/8WBrYkqZC5aCd+1FZusTnXBY0xeV7DaiyUTQDRXeiV53G8h39TxDRrFESn/rPIwb08RrzNwdqI9ffQRH6zwCkiBPbwEl+3NDfRdUCHOvo93IUv4718VJxss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775303734; c=relaxed/simple;
	bh=gIX9cvssBkn5NAQDOyfb6inCOfy5U9q/mOdkzs84eMM=;
	h=To:Subject:From:Message-Id:Date; b=Gsfn0J3iiONMLKoIv4tojCi9w4sELqeKg/BTeqUVPcHno75+Hk0fF9WegULZsjx3uPnUOeyRbcEGUCwKdu74EqKfG58xenIiTDeL5XGp9D2mLXp2j2z+ipwn3JLLLTQpZxsgx0MCFlfIyI+iV1W0BQYKR10I3ptFBh8D94KEJbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TN7W+pKz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TN7W+pKz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2A24C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 11:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775303733;
	bh=gIX9cvssBkn5NAQDOyfb6inCOfy5U9q/mOdkzs84eMM=;
	h=To:Subject:From:Date:From;
	b=TN7W+pKzKgzAbMXhEhjg9jGgIOW9Ca8kRkiFgoQ5aD3M9OTMnjCQkGS/l3mjypfCC
	 zQKJ0TYC4uLaEFhKlOL6U4CWS1l6ewVp94ngCGKwh8+NzEO2DRGn0Pse5oIe39kUz+
	 N+ooABp+djLOdVD3rO3feSqrHcAY27Kau4ulRz3/S2S+ONeRV0vwPElXUnnalg6PcD
	 aYqsTXlFmR/48MIQIm9F5B2+D2gmPLZ6ZhMih7dr8CUWKuFw/HsnCiWXaLAt7K78ed
	 JIC+2J15y+9uukzfFA3RYRr8T/l4aGEh8DSbjJPOkUVVDYjPr2oTPfkgwTf21HBqfS
	 rpPY82DaaABJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD717E88D99
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 11:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177530373368.26961.1151724018135982155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b2658bbf097435dce3efb3d5078a9d0f565b70d1a87738e8f3ec77e09e2ab0e
Date: Sat, 04 Apr 2026 11:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775303733
