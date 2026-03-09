Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23435333727
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773035094; cv=none; b=TwYf9iHRonXTZMPcY/cLDyqAbnZMvDMVDKT7Vd9E+qbq2YjYCDjsqAA3ZQRE6vMDMiyn64yI/RHUTn+OO0zgSKBhNnFqaf+iWKMYCIkyGPchJpQptEyU6FsniSuecVhlEI8Whn3U4S7pk1Xodi1botI2NWy1d+SzMALCTdHJUqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773035094; c=relaxed/simple;
	bh=o+YeP9WBNrU4QWdBTIik6/G3N7lZQFP7Jk2ATLd8F38=;
	h=To:Subject:From:Message-Id:Date; b=AlS9eM6K9ULQs2J6l5lNFRsObHBHY60ODRAROVjB6DapwpLUTyM2Pn2hilYl7rpzECrREnIp0uTPe9Jj5qQYcbFIDL3N4ZeSjyXc+NR3TSnuoI9qJRfCbatSylt/+DBn8urKVJ99LICNn9+3Wmm/6rXK8UVf1EXkBNLb9A4CuNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Roch8bw9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Roch8bw9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D12FC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773035093;
	bh=o+YeP9WBNrU4QWdBTIik6/G3N7lZQFP7Jk2ATLd8F38=;
	h=To:Subject:From:Date:From;
	b=Roch8bw9n9CO9WoQvKr8/hL6hKvVW+veZUQNzdIT+UqKEUtnozxOkNCsTYBcrr6FU
	 vlLskL2wjP/MoRurh/1yunQD4QfqoZISWNfsYP1vSNKNqBoWwC63RrGZbZLqESMazf
	 O7QUhE/FdnGIi4QdBb041nG9El2pJarbguzdtT8yXU7WAgzS17MnYfPuVd1+pveHVJ
	 WIRyxTAe9zJPPyGA5kOG5adr6fwh3xTVFlzwxpyiBu+BmtgFMY34fosh4qFFa+5jg3
	 olBievpw8B0LUXLwOAi5o/StJHCR6yGTOe+IrqjKi0ObhqcXU97CMln1G367Req5em
	 rkvuj0X8nokmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F04AEA855D
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177303509357.16568.2985102821089991448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6963ad1659f87d834bd2360e4d6c165901aa39de59a020847c791fe9c5954bec
Date: Mon, 09 Mar 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773035093
