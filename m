Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53EB42D8378
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791541834; cv=none; b=F4rjDTxDdASxYS7ZfnpTb5331Tq8rklcPMhkfB7ogqgALLSr3QS4xkaNUQCXC88/g40fzJDe6gCWE9o4RzytsZJBYTUSPVQrv7EOgWiGAmAYeJwbkr9DmMPumvdUTXcQs4ifQgGj2IldRlML7fOkdB43LPcyGWpRIbfGjaKIJLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791541834; c=relaxed/simple;
	bh=UqHt59dlwPQMWj1RNfr1YVFvFzqjFhsmVac5s/8dZrQ=;
	h=To:Subject:From:Message-Id:Date; b=qgfqRnem0aMQ/nbQf2IcVnPCaDdW+W61jMMlXnzFqSX3GCXDe7z1RJEZII+02IoLJ7zhK0rN4jMj01D65AAC3cugFGPTzIvJ/M23lny4ezOsh/W3sxkXEHZDEFBmEPllT02IVg0XEvNMydYK3MEDZEexXkSto2d3M/njRSpN294=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jk1rC91o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jk1rC91o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCB4C2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791541833;
	bh=UqHt59dlwPQMWj1RNfr1YVFvFzqjFhsmVac5s/8dZrQ=;
	h=To:Subject:From:Date:From;
	b=jk1rC91onPL8pwMT30U1+Nqct1Z3RiKSEhubU1ldvSElKTRJ3KLGdXDCF7/CxZ2NX
	 MVyXME1r6h+CLDceYRb37JLHCIx8J4LLOgVwIG3LXx5uBHYKyZ9iGz6gkeMZ4a/wUr
	 6I9vnO9twvF09M90RZilW48AAC6uzNbCaAs+BSKvxO2JiMUIIqFne9+BouAK1tiPOp
	 8TFutUYiRzkgc/TLTkkKwmApfHW+22jEbxVPqR7xvGtRvIe7rjzRzjWr3NQX3rw3pf
	 AvfuDw3d9PmQ6Z+lVPngUZW03SROLWTzeQnAO3ZZeKAUZqHBMHxR6/5iF51v05IS7r
	 KlaPLv+LAtpFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA38CA6012
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179154183368.4814.2754193692463011430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d4d5a2b49a40718e4282fa73d08991263738b1899ea87028b17daedc7e3e211
Date: Fri, 09 Oct 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791541833
