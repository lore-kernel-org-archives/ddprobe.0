Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6B0C390992
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785166234; cv=none; b=jC/N4fvq0hPmKRtpkh5ipd3BEdyFNB1ivz2Avr/dpZMsfF/Ja/hmPNTE5zG4Mr5FsW109+9sKA+xt13QrFe4TTwYOr6CLekDVNjkvr8PWMV6LnLe7XGkFBE3cwVRZ7RBjcKT+5O1QIZZ3Yt7NPmLvR6X9oTZsoNUXBpMITNAFWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785166234; c=relaxed/simple;
	bh=G+0LAaTNdD8o6msuPVXIWWOiRmh7X8R2RaMj2KQbs08=;
	h=To:Subject:From:Message-Id:Date; b=TYU0Thh97Zo70anOaZxBOuxrOwvzKa8++vXVYCH83ppEJ55Yk14PrOZAmpns+Uio2pF14NjEw05UR2QyHhZDlKJRs9Wn2J5yKuSILZBhHGtGpbxpcEhUaRCWI8j6OVlXZGjFY2bwXft/9sqTDUEl1whyFHo9zIu9AEviMMn7JaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=msqu2yah; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="msqu2yah"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2CFEC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785166233;
	bh=G+0LAaTNdD8o6msuPVXIWWOiRmh7X8R2RaMj2KQbs08=;
	h=To:Subject:From:Date:From;
	b=msqu2yahngs27+fjohkc64hxdsqSI1a2GS56OzuFfuHeZCtWQLb2blgSz5TPnT9Xd
	 EvVfoiPa6Gdtfn4fFa8QRvuRVKD9LCQtwokrgnmEBiE0/3o1Q+wooUp2xtYV1aCeW1
	 NiO5mTkobZGmeFLgvbJehvTb4+pogTiybqkU4Va8zLTud9cUVDTT0HkhNo8J5dQtFl
	 cxO2yqvDzTnUfaTznb5cdLqTwft0nJTPiNQVmar5MVJdTsYNQla971K0jBN09wOv52
	 x366dv8AISwFpyqgE9Pc/NcdcPoW8K7Vtm2bwqIGx35sVn3ZBLEK3E2OT6k+qOGth8
	 5CYuCbBIAoNGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFECAC531FC
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178516623368.27265.10926450384384608415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f68fa9fc6d34080cecfccd21cdb7a78c978a261309acdb5b7bd41bb0ccd6e0d
Date: Mon, 27 Jul 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785166233
