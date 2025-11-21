Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00D162ECE83
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 17:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763746914; cv=none; b=Afxjmr60F8o8UZ/UVL8qoBUMR4IUCE6y0x6gsBBIyUNdwYLV6kuE3nuRPbOLqkMUHOe7GBWPmgEmkyVd9Td28yUDJCeUpY4x5ZKC3CBq8MyotO7n/V/P2Q8DwRbZ5gUBCfh0CMhdlWIUZ7oH/j/2jOW2gnkonf9UUFfgM24kJE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763746914; c=relaxed/simple;
	bh=HL8UOZv0JzAm934jSG3/yD4H1dTm0Cfs14RsSx7H8dk=;
	h=To:Subject:From:Message-Id:Date; b=bD5Tl+guN03M42JgcruX5cKiG0KhyRYibNDOfZwCdqe/p2W8mJQmn/JFe0qB6l+N4W514Rbm+G/ny80iR/yv2mXN3I6hYMF9ExAvBfCBlrc+pLMnUh82Uj2e8j8CShdKTiHyRMZyIPCmVIRErYG8CnF9q7nH+b5x+pR4UV0UPgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MY+UBm9K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MY+UBm9K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D43C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 17:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763746913;
	bh=HL8UOZv0JzAm934jSG3/yD4H1dTm0Cfs14RsSx7H8dk=;
	h=To:Subject:From:Date:From;
	b=MY+UBm9KCkRi/E1662wnPkSPqtqM980A6pvNIIvA/21U0ofQKri2pzAUnMS+wPQeU
	 6FSvjyrWTvDWJVv6mqoU1m9rGObyEI/wdNRi/jcHPebDx3bZnBEnFKo0vSleUCghBq
	 bI6XyU+sUhhpqZxaICvwn9i7F9mt86peRzDjU8m+VrsbwXpPfeCRFj5CsLsxALNOKw
	 DkiMhiSYDrfKyGyvlyGUa1a2V1a1PTwbPcgP1Gv4dyXVUS5P7UKcGU4MojmGnG2epB
	 Npa/bW0Fxzoo2nRI9iPOTPdocUbBRFBFjnRFPQd9mx0OtEf/1qed8/Eh9fgs3cekM8
	 W1u2TlMWOcuSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A9BCFC29A
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 17:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176374691359.16549.16184035925951382846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4b59c2d1755b0c44a62b9c3fdc117db3d0f72cca678af6f5ef8b337f5a72c00
Date: Fri, 21 Nov 2025 17:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763746913
