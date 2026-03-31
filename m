Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BAF3A255A
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774953894; cv=none; b=QHaTImfoq9+nsVWpoFT3sy4Sl2D2uybDeS94nwb/Jt8PIC3pJx4gW5ehFJ8dtxe1OOZdudj0eLK988adYlrNaNwy3p4dYfKKwvZpBmWKdlWmrT4ft6oeZXTqy2t+WHLrqTwE7UnjvFAa5RJfQaFWoxXMEuS3Nh6LRyasbNuPdrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774953894; c=relaxed/simple;
	bh=3ai/YO7VdVBNjlAVPj8PKJ0zlp2Zb+u7X85I4Xo56eM=;
	h=To:Subject:From:Message-Id:Date; b=I1iEKp/5KIcpX9NE4IXfsLTh6cMhhA6Z1vlrTbxFWgesmvP1DhVrbM/jIcA86duDLEEoh9mfvFCtYy55VvRkgtfDRzNhTe7hafRI7YJn/BD+uAdCsHhgECUen4FY9KfIFIrWhkFwokzX/YR1/yQF4qEsNrpzaTsxAqh7WRHSkzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dZV1HPz3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dZV1HPz3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5979C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774953893;
	bh=3ai/YO7VdVBNjlAVPj8PKJ0zlp2Zb+u7X85I4Xo56eM=;
	h=To:Subject:From:Date:From;
	b=dZV1HPz3p2lsu2zoHoeFqJZZdscCwWYm9l5xN7uLF1oYRaKslZJMLfIWHSYaLvCGx
	 SdbmE5AEJaA2QRNUrblBl1Yy8BGXa+dJ7k3eOQpcrstGnF+R6ZN1eECpHyqpMbe8RN
	 R+/djnWvKollmIOLTwlPrZctm+hRsTBNAE0epY1tb7JIcOB02jHrpCgi5KD9lPETbL
	 Ix7ctTULN0DC6HxkSlzYGjTJ//8eSW7IGYUb93asb/tqi9szRFz7637ZCSp1a36AP2
	 JozpIpjSOWCNecRRWramilVZJzEGRUbdxdU2xns1x8J82yAF8l1Ti3w/gruHs16Lmp
	 t+MFx0blmdYCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3C341061B2B
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177495389365.19691.3292753688596590370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a98f7f593a2a3ab68d5f28064d3fda261b6c5109741050e1ddfcf277b6a434d6
Date: Tue, 31 Mar 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774953893
