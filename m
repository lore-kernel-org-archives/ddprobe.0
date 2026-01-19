Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FA4F346ADC
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 08:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768812234; cv=none; b=JE+muNGNOQLAJIiYIgIOjOgSZgJ9QCCYjF8unxKTcdf2Y/7ORiy8mS1O9NcIUMLku5Trv59Am/t4Iud3a4QD1thbpnKNPNsmQePTAYUGyWgxSiBUUP2691BZifxuRfBBzfMtKz/BX+zRw3Q6kfdqvvPZwN0+EUToqzL4ib5PIAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768812234; c=relaxed/simple;
	bh=65h0dj/IGraL9lGh4MsffapiDzaZp1HrlfBtOUhLOQg=;
	h=To:Subject:From:Message-Id:Date; b=n9Lt+eh3JS6LybMk/W+ETmytZYJc2bct/dXecSkW51YU2g0p8yp7W6Yhec4cToI3pYYdYDr6hZ08R2Gv3LXNafyIrLa6fpYBrT520PeUpqWiYWWWnmdzOhT/R1RrkFK3asdgNWZpfIb2+TCrBPrILR4ZvLXhrI5mnKTg+AwB/v8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kKGIRPPX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kKGIRPPX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2553C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768812233;
	bh=65h0dj/IGraL9lGh4MsffapiDzaZp1HrlfBtOUhLOQg=;
	h=To:Subject:From:Date:From;
	b=kKGIRPPXoqdnFPFBxqiddgFgPAMk9lM6sralQOVM0tBngdQ3ilQozLla07xxpDALY
	 yXCn17Xsg0mr+hXUHeoE6wRoSfv7m9pdg01ME8YrzZq4CRsN52B17F1tj7lXmRW5l2
	 bz924LsnU876RJ40QWxT+m+PLLBck3r6sQvgX8LN8/lURtIkrGX3DwSzVTaA4SRfXg
	 1gUVaZTM8lzBpJ0NZjTIHBRui3691DBDlaYxlIHM8CfF6OUE1UdxRNqWKfHv+S96z8
	 181DlYj1gz5/XVYrgsPAauvR7jnta5eEOj1Vjlm5e/xOv3ym8vp9rTiEJEwksBHlTg
	 dseZe7B5N3GdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3FDCA6005
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176881223357.1213.2638746158846544557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a50ec73f500e5eebd152a9ffc90240f5d99d9697120617bfd5f327238995f6a1
Date: Mon, 19 Jan 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768812233
