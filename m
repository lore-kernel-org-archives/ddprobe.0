Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6690C1C9EAD
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 15:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719588263; cv=none; b=mfv1yL0a7gatXDHJ7o+tEqZ73jxT0bpKaXFntzHmJZvFS9pfCca/BRyVEtrude0GmSKKtkVA+lKhh82NI3u0xr1VU2+8CjFbrElHnXb0C6spEdw4nAxBSImcixZ8tt1OdWjlnY/ndEgeuq/4gqA7vjIPIK1mB1uuI//tL0Tgqlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719588263; c=relaxed/simple;
	bh=IeYWl7HoJ/Q6hV3dwkQvz5SIWvi2n11+x3Ye3RmHgBY=;
	h=To:Subject:From:Message-Id:Date; b=G5+KKDhExvE3skLhM1C7198tn2Ng2N1GBQY0YE69NWk+UrQMAT2HyH8wSG0rTC1TnoQJvUR4bNH+K7QXPPVKLzd7B8Zv0/ZwS6oPUk9fPHkOx74ZYUiuYijqKgLJQXROvbBhHdikss0biMvLxo4yfBCuGsZunDMSwwyTcNzJM2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ErPh2Rk1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ErPh2Rk1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1C43C4AF0C
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 15:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719588263;
	bh=IeYWl7HoJ/Q6hV3dwkQvz5SIWvi2n11+x3Ye3RmHgBY=;
	h=To:Subject:From:Date:From;
	b=ErPh2Rk16kw5m9F0FcsYkkV3cxZSc0CElQQDCMwDv1y05A1PuWYMFvw1M3xxBu0kM
	 B6dGOpUhPVPFYuCoKVOnu+MSwIcitLBg815BcxpkWFp9xcIFiwwF9/Od/xJ0DOJJyH
	 OXA8JqQ1+wCO74B2DDSRkuSAcKbpqcdTdCurGdetx1h7uZpaAcIgE1+F84fDKls5se
	 lWzeIV+XKT2YNTMeCqg81m4MY24A8ouNN6aU80C5q7naVDjunUzeY2ScN2DzOlBV7M
	 4XoLNxlm00b6QUHFKGz8gDzYEYtKpWe/a/YjikyDyC+lnhI5clpp13MmhFC32yjMol
	 FkAdUbufwb2Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8591C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 15:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171958826286.21909.8988614446151386170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f0bb4b2b689c2035362d96231ccff5b7dd190859a9eb27d4ec98b5706ee9ca2
Date: Fri, 28 Jun 2024 15:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719588262
