Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A794C39EF25
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788388834; cv=none; b=bTCCcjEosie9THZBXj9nOW9yWz/ZMkvJaU13qlK2D776EWShyaBUydMM7GIoDnneXgJYa/TXSEcGNr0l+WjdT6C1YbSshDH4xnnYBsQOvRVTxVFmvdVeXoCVugucUWtSwTokDDZM9dlBMRNcn98D+vp7lU6/OZAZaEDSqFY/cyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788388834; c=relaxed/simple;
	bh=DuPuxGrJkREUPNLTAxrOJKohNAyzbNOCQe0jTJ1+vJA=;
	h=To:Subject:From:Message-Id:Date; b=Hn36hH/SO9TEeVBcQZ20IQpY994eMi8oTy8JoOcy1CNqlsnsB4zsuJG7QfcEJ6ZOb6/O8PYO27uXlu37wB7z3InszllTe9r/289cPqs45kUzh613vj02ppjPagFXJKBjZ5ahDUaitnVegQo6+G8ErfnaVWqGTKR/uD2lk1lfJ+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WO+FBWG5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WO+FBWG5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D25FCC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788388833;
	bh=DuPuxGrJkREUPNLTAxrOJKohNAyzbNOCQe0jTJ1+vJA=;
	h=To:Subject:From:Date:From;
	b=WO+FBWG5j/18M8ML9CxqenlwLZ1UrtrXClMa++Lhwvx8U21Zzy5gvKgDeO8nuItWl
	 oAujqqKC+gbhFyb61Dl+O95eznJ4+OMsOec/V07NkgAMJV//YodUUcaln5TcyJZXo+
	 ACFEdTCJ9WickDAAK2m24fso327Hex+4y8oWcrKQTxULRkJ7Kg/8EzMYkNfZM1sOAf
	 MSBfi4VNKbmmKyXGVElV2UPEzBfgtaFONpklDO7vA5ZkZ+3AOUOJyLc9WYCsKwqMlv
	 YPLYyUepOzBZOQyyc/gP12y4ITAwNQxVWXS8prJCCxUhcCljdxxekPrntfo+poe1as
	 P3fk3s9njTobA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB35C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178838883368.24443.10024536448236214106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 557b6da42991f1928982edabbed8d1160e2d9bb87c29ad2f6ba1b2f4dc2f2a53
Date: Wed, 02 Sep 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788388833
