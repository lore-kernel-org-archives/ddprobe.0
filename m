Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7F8311C14
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767359034; cv=none; b=nAJJmQr4Yu2qBaA2sOZ7xbkJlBEMZVTfDt8Jhn0ki2aLs5Px7cZXc98UG4+BJMTWg5zxWehz2kKjmtN08YdW/7Wbxu4ojXQfGHB5okVjuLqBY6NdwvNr1iIRIN6l4SJUL4JHksg6StQP7iXpUYOOfade5bhTypAqoCeE5sHG7ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767359034; c=relaxed/simple;
	bh=oJ9AfKa94V6cUqC2NJhkrtJrG0xItuewg0Azhz6G3Ok=;
	h=To:Subject:From:Message-Id:Date; b=B0g6SZBVhGQqEhrc5ga1fnsboonJ+yMgx6/v2jjftt42MixB+j0xlhYISHC7vVL60r7CMnlv9MiJXWdtneemAxZ+Owuu1OIh+PZsejFpsTWM2Aur6SSURnP1U89Itn+FIDFuDAAzJCTBsh2M1lR+cS281dPISXjh5fr4Ov/Efog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X5oYkeIK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X5oYkeIK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71BCC116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767359033;
	bh=oJ9AfKa94V6cUqC2NJhkrtJrG0xItuewg0Azhz6G3Ok=;
	h=To:Subject:From:Date:From;
	b=X5oYkeIK5RYIsc98Yv5Jn89FFbmew948YcAzcjcpW5D0MFOW3yA3onb5FthlnhmYl
	 8+8krFqA9TaWMDLnZGWRBd0Mrft1lJGab/ddLTFrLqCqP+NbAoaMf2MpHHV4H6/yiT
	 lW6GPxHCF+7YIz430LP4F/VDdlf+DmV2iiP1wpfTISdpd1Ez0Yof/kKK/e1zVOXcdl
	 ejI/ku6Ke00D/uwJfaAHEPd+f+ZDi6EDFLDkjLFulZh+t8bxz+0xfqFUpOWCNMeChG
	 Gaf6AaEmByPZrcKkmeBi5s5K4pejLQgruFs/Aqi+rjAjRF+FsQs5nXplMu09jx263m
	 aAl5SyV9/3NCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9259AFA3742
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176735903357.11631.10706025651740432954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c641bed9b3e24dee6d874799288363a1099a19a2fe3136e6db094af520b8ff13
Date: Fri, 02 Jan 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767359033
