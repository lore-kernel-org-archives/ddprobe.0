Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F71D381B1
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724864154; cv=none; b=kz+YOQ5XX4N00fOkR/9Ocqtk38mxMyV6rz81+Q1YoKAA+E1QnMoC6e0kiQJUanbmYEWAGDL6nzpUpWHFlfFHyS5P7Td6NI93iKXsXnkJWFLkx08ZbzZxC58nj0EgOb+u18dYERTWsQfYkiTtFD+tbeKQsykR1y3O2RA2Rv8Qha8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724864154; c=relaxed/simple;
	bh=iYAAAn7Vm6TIPOq56nCOIFqLmYoIxz919F/rRafPDn4=;
	h=To:Subject:From:Message-Id:Date; b=Uw6FMcE4IHg5RKuyHPOVLnpD/5ugPSvXPkj7qGyRW+DGn/vPofbQ9RoT0zFsGUR/nxBW8JVu1CFy8RWjgdlNDVeWp9Tn6kRlgNu/lfe0ayyiyeIYNFNLnX8ZO1nkaNnd6di+u8saAaU4dG1qawH40PEVW3N5qcN8C5LSzI9FVVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLCHB227; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLCHB227"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12CFC4CEC1
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724864153;
	bh=iYAAAn7Vm6TIPOq56nCOIFqLmYoIxz919F/rRafPDn4=;
	h=To:Subject:From:Date:From;
	b=fLCHB22723MWVQOTUcdiiW+NiZxJMLfEZXx96hu+5OBu8IIiD++z1HYLGmsqoipdM
	 P0tJIALoAtASQK+PCPNjGU91VwDv81wBz7QZ+1jrNXKQKzS1iWt88xiNWxUK4jT7l/
	 1LCZjhhTvIfdkzjzsBot5fKnKesB1QGJ7MyC2m/QBxmQzsUck3mjJ6XLTk6JWZDKTd
	 vCeU4MtlmL1Pe2JbdcMrZl7FC08Ff50aWFePSxSA/uOpRSWpow8srAPq90dXbXrcuB
	 KLy7FBrTwgX2bCsht6ryHlZQqV0ZdpGQkHG11HHsjTfQOyP1FWoYVpdtMNv6/TFPXa
	 wdT0kY4itNjmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FD4C636E9
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172486415361.5981.5773670277718481774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61ed1f2185da06560ce6187051272d2191d46480b70d6bd805c073b53ba10b60
Date: Wed, 28 Aug 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724864153
