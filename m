Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2100721D3D2
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751315994; cv=none; b=O96T2GAFyOSyJO/gBufpACGggmXXBiMAFPjo7cdpMRCOCIT1IUphJG0zixhRAVphhZmEnHGPsXFqp5qRby085h6w6Web94YsAk4P/ucbi5y2rSRN1idwI+AybVtu8iLzC0nS8Tspg8YI3u5COKO7jMDCbHFJWfEawx9Uic11NJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751315994; c=relaxed/simple;
	bh=Rtow+nrYgnxnVWANtX81bH3Dv97Kog8gN3BYsDzncc0=;
	h=To:Subject:From:Message-Id:Date; b=BkTnOeLBNwxxkIXD8oaiirocCy+WxWiTR1GL1KE2pNjbNV40DTP3sGSfA1W6h9OnxxWBJSHxTGUJXgMevqnGB7buWzfDw8eunvnXjUdMhI3sAQhBqYX5a4y230BMI/OY9l2HoDu4fYL9uVYpklorA3Lpgt9r1swegacXCX/JU94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q9ZNfYxU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q9ZNfYxU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE28C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751315993;
	bh=Rtow+nrYgnxnVWANtX81bH3Dv97Kog8gN3BYsDzncc0=;
	h=To:Subject:From:Date:From;
	b=Q9ZNfYxUb2E+Q12/hboNWas3/PCDsnEXxBT6iUPUW6TtV/1ni0Ki2WP+D1c1nxY5i
	 Trfr3UG16vG9nb2UnKdRqD0wkeZ8cEeOK6VnFahRN7yN/aXOKAs/0n/BnozjQ6h0a4
	 ffLKt3sbzJAFzOw50JodC3BkaSffmV5L6mGxaGJBn+p7rsQy0OkOe4kUyVFH7ARU5y
	 oO5Vx4X+LZUzWi25/IKayTEOK3FQXnzktV3ZezyRSvvaJbZqbiXrvcKTUTCcTD24Au
	 /7x2phyENdzVEHar3rN7LAPfjHxDKxDnUlbTFl4gF2z7p4abmSYc4xqvQYEN5cSLQi
	 djvtXp/8QIM8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9028CC83030
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175131599358.28131.12690169426734369738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28f8d38c4781fc11d0b45fd02d05f1ab538d3a35c9965d673405db427709f1de
Date: Mon, 30 Jun 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751315993
