Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD0A14E2E2
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 13:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739884734; cv=none; b=KeiWIcq6BWNMD2oI83JBlRkF68cCQFmyKmPaNvJ2wxiqVVr+/fe/9ImmPKQ7IHi/cZJuFBtHZncAFV1VBnsumJHr8YUSvEGXdXs2xKAJEUB+Btv4x5FIXRY7hyUA399j4mjvewOJmk76ILEX+TgbAtxJtcb0cSUiEwzbYgZ2qeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739884734; c=relaxed/simple;
	bh=ZDVzbAGVHhcbu86yoRN77oq3eGv72WO4LG900YDAbL0=;
	h=To:Subject:From:Message-Id:Date; b=cUtDZb6AdlzX02HDf8FPdkBMyS75WyQNdx64qCRxeSTNYtzKRiGrh32d1uC321d6DvgL7jCla+WQH2EIPrXGCjnePL2IXvx2ZWd7K3h4gg82ZFU092n+StWJemL/+gA1UOwsoExRgVXTAEALrkiAr52/hvn3fSdRKVQ3LaI/ltA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vQRWVbKI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vQRWVbKI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DECC4CEE6
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 13:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739884733;
	bh=ZDVzbAGVHhcbu86yoRN77oq3eGv72WO4LG900YDAbL0=;
	h=To:Subject:From:Date:From;
	b=vQRWVbKIH3E1dQbsFII73NcmUbOVhn4jvlz10SE4/npicSXa7UuLY2e+d4rVacWy9
	 L25LlG669etuMcWJNCkjKQLL972BI1fGUT4EIhWnluSbeJ+2eAhAhq6a04NUT7Glq7
	 1A4XfGhJKdG3V94+YM3EUuHte/Ff8oH9aHUc3pzpUONNslkF+5ie5DXv+3vN0gU4na
	 pzU/LqEwvU/mGh+HecwoqHOtYR60D0pB8rCLImZk6lzwwNy3VrS4Mho5W6xJUBqVGm
	 fUEaLj4Z/RKaUROM/pKlbuMLHLhfBmObXycTc8mOFKGhpeW057l11H6qSCgyJG+DwO
	 Uf/TDc2iVYyfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980FFC02198
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 13:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173988473360.26788.10610446181190184030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50046df52494cc73041d16ad5f97187f8449ae6e933a38edaa30f4949937f466
Date: Tue, 18 Feb 2025 13:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739884733
