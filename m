Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E31C1ACEB0
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733751354; cv=none; b=iCgO0lOL31LgNVS9zPQ3oBq+r//olgkdJdTvAQ57+LmqJ18k3xQV0NoxRloyPyNX1zXDROs2N4CMv+sak6ARGunoWBDgp7FAzjW7bY9W8pcp0QRpu9x3v8QYby3k5XnkqsyFEELrFegEZDMsXrWEQg5++cF14HaOAzwgXGXOxJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733751354; c=relaxed/simple;
	bh=BIPCAVKHufz0cxSz8mUCb1wd4kSTsSuvP36G1pLVZv4=;
	h=To:Subject:From:Message-Id:Date; b=YTzlCsFlhQlN3JuGZtPebtVAdjmAGBu3Wa/zehzCp4lbg/ayeDtTfpSFD1X8aZemv5JMnXkTpX5jnW49lk+jymic+TjLxZxgYk5kl0DJXSY+fU2S687omFlmFST1CSuSzD21dZoyMcBHwt7TEG5qgoj0lYqJsMMcVKRHEt1DKaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eh3FRi6o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eh3FRi6o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB7CDC4CEE0
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733751353;
	bh=BIPCAVKHufz0cxSz8mUCb1wd4kSTsSuvP36G1pLVZv4=;
	h=To:Subject:From:Date:From;
	b=Eh3FRi6oOnILBxGnQijEHCTiPQbfPgbmsahiKNpxZeqKuh5w3bMhS02PhM9u44cfg
	 uXr43GZzfR83WBNbZClxw6ulhpdWRvtAGBPR22sezcUXz1ak5gemWsbw+mgHqqEWHQ
	 OrskhSHHHNWK89BwsUvwlpmx76TzxRNj5SIPAKUHVUYBfMT+i/HxHmfZJtLIdEYWux
	 ZzIXFc9tWs/2M3AWmnpkko2bUVBcDXjCh9zej81D4HKKtW3oUvk986XUngWNr5ea09
	 BpCCS91nW/1fmsCmXXH4LfTUxjkVY1g1Bp9tjxtflS4aE3xyaCSpw2Qw+l1R0+dZR2
	 I+FbT/BizZ8aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA171E7717D
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173375135365.11605.1911876524069498590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c15af6df208ed86aa6248afb76ba17f67c96391f2abfd42836c34f9dc1cee352
Date: Mon, 09 Dec 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733751353
