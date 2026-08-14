Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D466184524
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786699834; cv=none; b=uXw65a5dr1EVYtMJBk1uv4mYugfV3Eaa87lCTT2FhObjacl0NjF3xsYr8fRnkPb/4/Uf/3CRXazavLVEFZPPJcS8Od2+0mn/RLltRy/VHtBmZv5dpKtAZKGMIJ/l8eS+sLv90DVePOZWWVFMPtltiwm2AvZ9WQe+OMInTHT70Nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786699834; c=relaxed/simple;
	bh=iOH4iTh9pnOhhRt7LaJy0Owo/ew1NTlMBYnek/tp/KY=;
	h=To:Subject:From:Message-Id:Date; b=PcBmXgA8CggR+EVtO5PAIhfxTey+N0Y0igzF7Yr2xrJqS34bOVF2bKisYgNdwS86t3P7iWTXDWUJRvo2YLt/GLD51MVARp2v1aItHn7dMiH1xbNv2f7XHhTI+j6m8k6FErA1c6VB1EAWVEoVEVhhIpZquKSAJtY2PapJYz5KYZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EA2Dr37/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EA2Dr37/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C905DC2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786699833;
	bh=iOH4iTh9pnOhhRt7LaJy0Owo/ew1NTlMBYnek/tp/KY=;
	h=To:Subject:From:Date:From;
	b=EA2Dr37/KGk5arnD/Z0wVj9MIuzVoIozZ4qK4dZ8t3A5HsZPugAq8uFudokylFhyF
	 c2YRGCYMkgmlGs1DwVQAsc3n0dS/ZW2y34O0xSSqwDmNeOXacuMtweQNZKuic3K5yz
	 yTbVMIEw3+pVVnuy2yJLVdFHJAmHwdBnASESFvuY4Q49ZWg6Pm/LOoi9jsOp18jkzz
	 Xfgpxa4k7FOhwkREyQYyy+dXlCkBLPB0+omQPlpICAYlF133fjLroYGYPFlb7DPyzc
	 yv5ccFUpbVTsrsDlDNlhtSuu/KVt/XJgaupnxKMmztEoE3BoeliHWVhQJOrzzOVRVS
	 zdkIxUFZkG4nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F28C5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178669983368.2643.10193276499333168535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dd19de170d460954d6f2d16d2c61bb0a823554528eada8075c98e5895acbb00
Date: Fri, 14 Aug 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786699833
