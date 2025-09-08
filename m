Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203E74964E
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757303994; cv=none; b=qEo28ZZvMak2znP0iq5bFtZAN+eOLflrXM0APw8GHZE3i+OP43g1EWa5ExoTSM5jN4NPThq1n+X5PAQoSkDuhajRv7T+VzAQSYxvO5r3ocq29D6eGGnBbrc24jUM0q7yE74VInQ/2VrJFk8H7nAd+aEGam3FKaykXRxZ75c2gQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757303994; c=relaxed/simple;
	bh=yymWTrPl16UtTZDCD6z30RKMHnxmdGG13nv7CA3VMkg=;
	h=To:Subject:From:Message-Id:Date; b=OxBim4nmfhyWlhvM5DDsFEdfHQJtdK53GGEYzHQlEye6pczAvMY/NpL+ryVe0YFvoSLJ2vuvTW1HfWTavRPh/mYhHrNPflMKfhtVwacxrlYqdByXl/UA1i05TYiKh3FZxDTLKW3gPabe4erFOnguUU4DTzoCXifLUdqee6X4Tsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwj5x7h1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwj5x7h1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29D5C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757303993;
	bh=yymWTrPl16UtTZDCD6z30RKMHnxmdGG13nv7CA3VMkg=;
	h=To:Subject:From:Date:From;
	b=cwj5x7h12KAofsPyZv5M61CwgSEwoNffDmHCRnkZHOKRS6nIc+kFQYLDhrrBbNKyB
	 8IiJmh3NDcdq+3G6ABe7iGufYKVMePw59r3+VS6u43TebJwlInDNy2UiCQY9xwM29d
	 Q3vN1VisAVZajNx7WlgeS3qThcdJP18+hJh4oynB0xE1pGV9fnVT/EJn9BeIqzZZdk
	 Z9F2F/CPttVRYXbhrbTg93Kvvh6TO0ZWSmFSJQF/IOYLG57bQzEv5JKmEk5tvkY2BQ
	 KlPL116O8aANC4t2ZnvgQ40ZytKBo74uksYd5CZqAejkkwPpNAmGOGuEeJ2smPoj3s
	 fBOcjoLe3hDpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91719CA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175730399357.32515.13850135395774640144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ffd3569ee045d37801f47798b9d64470c608ab6786fd72fe14ee52a141e51d6
Date: Mon, 08 Sep 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757303993
