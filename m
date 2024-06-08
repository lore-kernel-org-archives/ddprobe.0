Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8545F81E
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 00:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717807043; cv=none; b=QmFwUpJRu+ABzHLlT8Rv2GH9Zud1H7MKt9G+ubgeDOX1CZf0Wsdsttc3cgSWTiHVvPtMZh0OYa+O6MLnZgSx/UsbQ59SexV228qfs97Lq+LYnYwDWFclkXttP22S8eGYLXSlYDAmRKNV1RMkvHHFTyycoyUUYOxlsYFumOz50Rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717807043; c=relaxed/simple;
	bh=oexDizqmMOd3BcxNK0gjKoDRJC3hiOFcE79VN2oownw=;
	h=To:Subject:From:Message-Id:Date; b=ad3qdxqAnUaCJ9wLwfJw9bFJqbyU/gwZ4bjP34n//0qnwspQ6jhObDDIteIeV43G9diSzEb5ZZkrSiYr3+qxyajQTvFELmgPbvS8IDvCwamHrc2s8ssz8pkW5QO8xydRI0cBlynli/cLDxUCT3tT9/I4H9DX8SsMNy7AyGBEWco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=At4HfMZm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="At4HfMZm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2591DC2BBFC
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 00:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717807043;
	bh=oexDizqmMOd3BcxNK0gjKoDRJC3hiOFcE79VN2oownw=;
	h=To:Subject:From:Date:From;
	b=At4HfMZmhP3JjiPEhYDIV2Pyih/VTZBbu+btZHKmQxDetpGKw9yv+P8b34RHDzhi7
	 ILN4O4Ddg4McawPGeeKEdZphv3QCd3FGURSIe1OfAnqGvqbXZ1k5nc8GzR1cKyv7b1
	 Ti0A8mLlYE8+CHyC63Cy3TXXAI/EdLwb7QVq4RqQ/QgbnVQcoijruLB8g6truZniJv
	 LXVz5l9aYW8VlPPoehibUA1Rku2dJI7BWiOVcU9pacbRXM1h8gmQhzoe7C++egkV4p
	 wocrktDjSHgH82dikyofHRAVspqIZVIGDBPDFNYu6e0KOf6abxWhmRuJhAXGtN7z9P
	 OZu5s4YOAEI9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EBFBFC27C53
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 00:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171780704293.2918.1174671236876449376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca8d8052f5b3a54e7ba472ee2220c6b0a90b4a1436920c30bf7c31187eaf577c
Date: Sat, 08 Jun 2024 00:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717807042
