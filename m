Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDC22181B8F
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723095354; cv=none; b=oFJbF0xR5k7Fet28naqLG3vtdqI1elfM+XVRs0e78rytrdbG3jglo4dLDzynrwAsw1OdCb1WU/+xXXTBf/3CIomSZZuuZu0VxAA09wEhxHYKgCyD+2IJPX5DF4YMxB3/G58dwnhbcdyvIIqBl8nb2mrSHc1IlKuBcTstX3WZdU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723095354; c=relaxed/simple;
	bh=J18BboHMAWpjau58D9zMZqn9RW5nSCLiAwrZjOJZYLM=;
	h=To:Subject:From:Message-Id:Date; b=OYmSe8r1t6S089gAvHFxjx4WMMU3uN0oQAcK567tzmONB1Bioqj7B/7UtQpb3CHrTprHOZKEkaa1/iomi9qmodo20meyDoSYKhtPnW6+rouBhd+sLBycBj9sO0qI9Kj/aw40wyBbX2HsjZn3GWaYaOEc0KttNwlepmvHJ7zLgUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIVrdrBH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIVrdrBH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1622C4AF09
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723095353;
	bh=J18BboHMAWpjau58D9zMZqn9RW5nSCLiAwrZjOJZYLM=;
	h=To:Subject:From:Date:From;
	b=bIVrdrBHfe37omOZGZ/s3UurS8mKrGyqwBXuFlyp84U74xJrU7WpVJI0meb3R5Hxc
	 +76Max1DaPOk4Z+Z5qptnE7nD6foVnSYZCICdYzXvroPhsWSK+oPOCkpLyliTJVmig
	 gNfgh8CEpYSES751/OSqiQYCTLFlRohrMjL17WlmbNFagA+uIzQ0aR88s7CQlksIMu
	 NCdYmmA4zX4wgT+VSO1tTn/xcZ1mNM4t0nyhqP6TOb7/y1i5S850VytAdAijrnCQgR
	 7p+7x4k3JCYUr2egF8RsQI0UF5xOD/n3OOesFkKdgQl5uwPKMQrjLgJ9j9TQ8QWaev
	 X9ISknIEOshVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DCBC3DA4A
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172309535368.20181.4502166114381912569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd53829f8170d174ed5a2bb95f46da673c74dcb23306951ab6e81b49fb7f99f9
Date: Thu, 08 Aug 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723095353
