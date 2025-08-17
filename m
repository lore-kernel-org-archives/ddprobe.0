Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CA428E00
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755398994; cv=none; b=AfjH4UNRnAZWlH6r5NpVXbJLF1WtEPZgdhc9pkOKuEmUT5GFSMGOJlzWQzrllxtSKnwpc/xHfqSvunm1unCx8DJwBrRBYOVuer5LzTj3NT2WLOE6wO9102i/EVEi5cqy71iqXqYV/z60MZLzwDbxP2m1OrMXXg9JW0RGjZnH+RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755398994; c=relaxed/simple;
	bh=cQ89qtIYFtkVYacJRQzg8Qrn37yoqNQZWEXmlaK146s=;
	h=To:Subject:From:Message-Id:Date; b=cLd5aGNiBwcyH3Sgek22Ml/xQjyaD2EBPj5rvByWfY0UknjvfEgklgQVQwpDQYCJAnsykda8eejgCX6jItG35baTSBhyUIbcMV7rwZ+IiznYJb+D9kOfTIruxL5tvHc0v32VFj9d558GUnn+OD3q2Bi1Rp5EEuIrk57jqdUbeow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OkrUSXIz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OkrUSXIz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CE6C4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755398993;
	bh=cQ89qtIYFtkVYacJRQzg8Qrn37yoqNQZWEXmlaK146s=;
	h=To:Subject:From:Date:From;
	b=OkrUSXIzBrs9XYWZCpvHnV3FUCmVtJ3+caqx0Ofn2oYO8N+atNNIB84dPB+6GLlnY
	 LjK8JUWkE6HYll1HqvsA+Ki3Xu1D6JD/HegpXPQ2nWTiGI+j8SBPzTCYP5/t6fm7g7
	 +llv4rYkhsFeIuZDC274QQrJjhpv20FMa/yJwlpLV9tkGwYXgUZTYZuq87xeb2Cw1p
	 xaD+1SuVZl2ptL1WsNpRFJtKRatGHjRjg6aWO/9qxDXwOv7oWogWQsnemq20aOZHSL
	 1F1mJ2cqQi+xoKXE6D+OK9eLX7oXAY07qi1C7wJA8yRA7JcvOC8vmWme1nySH7wn4z
	 1Sc0dzCNsBnlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E3BCA0EE6
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175539899358.17877.13029728351428408594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18c24ef3278b2c94b77d738f9449c6baeda89967b07791aa9cad9463547db258
Date: Sun, 17 Aug 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755398993
