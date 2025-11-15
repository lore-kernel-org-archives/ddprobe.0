Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B1A1CD15
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763201994; cv=none; b=hie4KXgm+J664sMr5A62e9QO+PZt2S9ghi0+5sDCe4XAsyT353jQghc9dE171WusHhDIgZVWJ9C7fBS0vojVhIM6QDeCYqstpjjOKAokZ8F6mm3aPBkhVloFe3FpLb5ULGJGCXP1qnv5bv/rz2UViSXB4HTJcASwMa6gt9tVNgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763201994; c=relaxed/simple;
	bh=zmE0K+IDyEaTDXHyJFqdTKPE3GwtbMq99biYHwatipE=;
	h=To:Subject:From:Message-Id:Date; b=AjC4R1vmh/4Q/3p1B3y/obWTRA+DRAvfqqY2BrR1bSqnNVfXhDEN2tNVdmanrXP0LE0rgtZBfwqbDfh6Vb/+Lj4a59MEx5h3dJzltUjeSMNXY+iCeXwNLA5aBFiwwgK1rnqby5g9JQLwcEnDB4Sz695kJEHkQsPAg8wU95TLxLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pgG+XFT1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pgG+XFT1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3FFDC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763201993;
	bh=zmE0K+IDyEaTDXHyJFqdTKPE3GwtbMq99biYHwatipE=;
	h=To:Subject:From:Date:From;
	b=pgG+XFT1M1+6n+BxFKYYUM3KYoNApYwZRTlpqGcvo9CLOTef8Ng4MSD9Q+MLxDajq
	 QfbKhFq4v3hKtbIg2pjRUxPpjtIuaKX72rzegtEZhbGNCgE5y4m09YQrh8eMhsQcai
	 m4lp4Eq/mnD/VOLSO8GBes42fSaK9uD2QkZFIVhDrZZe+N/U6cA/BUFCaeErEfUlLw
	 sePnqqiRs20k5DOv9RIvpm+YeK5BRXoRMP54s41fdDzjns47+UTJC03jSor+wfpaax
	 tgxClI6yX1IbDGugxJWlCLwP00HlcVp4NLBbzze187NbK/aF6EDqLj4rOkGjDcEflY
	 +aeeRPeW5U41A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1559CEB2CB
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176320199362.31509.393114899836080248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb773c52ee91bcdef14ad963afd48d873b31561c94acc05d40396b30bcd68ab6
Date: Sat, 15 Nov 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763201993
