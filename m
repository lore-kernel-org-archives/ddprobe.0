Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C8F1CBEB9
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 03:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775533535; cv=none; b=FEjCEPFsAzTLwRLJSb8lXv+8GeZLpJxuiKCuO0Mp9VDFzxmq7D+61doIjlCXmPOKq568GxquW+WEpa72H3sYU6QL1ilmlGLBy86Lhfn0e2XYJ+UhjspIBkz2IU1lZoDo06TNC7cHy9zXdCFRNSlfx/ycdLyklI8Z+WmbojlzUo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775533535; c=relaxed/simple;
	bh=cfhWPtUUAplKLt4YYXskxR7cc4pfbBN7DoMz2gxX/94=;
	h=To:Subject:From:Message-Id:Date; b=eVL7ZNQ8NtBkDilGHfHfhgueNBZbsmo4FW2F+3DonPOKqhQnWy7DEJ6+IPl5eW0C1cCic/82mJ6LeTyn9v6EnB3Y2ORpj98uGqXbDXqbvhcL/RjTgkH1L+/GB+CzdwU/fu3S4OnWDRI111QYXHrdf/0jaff/wJ1FyG6jNoUUgaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ti8V0wkN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ti8V0wkN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8104C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 03:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775533534;
	bh=cfhWPtUUAplKLt4YYXskxR7cc4pfbBN7DoMz2gxX/94=;
	h=To:Subject:From:Date:From;
	b=ti8V0wkNJb6H9EnMu80RE81/jnsIeYTBLIsRLXhGnVL6K6A1/OIW4kqcZgWmbU4Fy
	 0XR5/D5vjPfTrC+r9W0QrgrDyLNIrTWzbQWwNzcgQo5nCzSJTgmUzQqVNx3tllncb+
	 ElssG6BzElq3lNRhS786fB9Yf0I6Z/dccfbtuLMf/6oGk5kM+LpRoGebvP15TnVORZ
	 yNF38uS3CXfVA0LZbmLsUBpR84htPtXmUieONCoLDETMhTlyxuEletEU91CLuKpHLJ
	 kLLF/O2VO1EHkq5pK84Wwaf5KmrXoNwgCCTBLV6lTFv8lXu76xHuCaPp/uVv7+zkbG
	 iLj3jCQ3C8DOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0884FB5188
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 03:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177553353368.1355.4788871910162165866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53ca0ece3c70fb43cb621532c93d14770f43d354c8e51f0d4c910146e1b6c6b2
Date: Tue, 07 Apr 2026 03:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775533533
