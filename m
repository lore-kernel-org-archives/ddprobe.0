Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375CB36D4E6
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 22:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763851314; cv=none; b=JCBPp90aBvCy2fY+Sti+39Hz7fwxKahZ6rz/ZnWB6EVolJN4t+tsrW09twDsNSHtxGrl1QTzy5Mi5vDV7vJEkhHRmtl6qpd13DZlontJ+OM1dWjpkJpphVaysqU+FbRikxDPXTTNBpwH5vZ+1ml8HYWURq4p3tddaeuKSwbcMFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763851314; c=relaxed/simple;
	bh=jLyTs094DHXToJzoJnHk3PGBKf33RRfOF7+ShUiGjZU=;
	h=To:Subject:From:Message-Id:Date; b=IwNjqoCQtpdmLGiVs8Blgqbbonr72pNBeKUsIP5HnzdHZ2fULboNs4g38WEmCviXjJQvR03oLRLwut8sbajrEzHSkkA2sWDRnRikF4GQjII/4YQegl1uARfOKY8g6XwibT2wTfI0hqj8BjW4cz2nIsiGtVezg4PBOOWTCfKTgro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=txCAKIXq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="txCAKIXq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEC5C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 22:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763851313;
	bh=jLyTs094DHXToJzoJnHk3PGBKf33RRfOF7+ShUiGjZU=;
	h=To:Subject:From:Date:From;
	b=txCAKIXqgthyuigdQya5cj70ZaeAkysKrxQ//tRciq869jNhXxVUfUYXCAUp7yyDD
	 cxxfuJ4GFyczQugUdgwDFtDYWusvOmNlRAs50qAbzVW0LG6uL/rJiAviugdXSDG7O/
	 IwaO3lrp3jpxG2izGuhd3KFVMasdvY7SvhqHuPlqd7VKKfkt6qqcDDqCTIeZ09swPq
	 942UfR7MEEia9q9Ay0v9IDWjxy2rfMeeqVJTd6Heb9ARs5NKtFebGXDxvCCEQ2V6A1
	 QfIeIopNpK6w0oVEyP7U7IZEh4W4/BgaSgrOATg7ZRBdsC7z91L0vzh/zgv72MH3+c
	 gy413qAiPsqBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94221CFD30D
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 22:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176385131358.9939.9835068798538785119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e928229a96682940a493e05613568a002e34b0fa2bf155e7106db2fee62f75fe
Date: Sat, 22 Nov 2025 22:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763851313
