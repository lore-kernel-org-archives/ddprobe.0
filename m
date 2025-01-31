Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CC3139E
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738358154; cv=none; b=NlObaBQXLyT2YoEu+krK9lVDOZuh1yoGdIBHsVgqaq7DYsO4cqRks7lkHVvYOBta6nd2ZvrF9nlCcKvvYyvZ8ZPGjPKR2Vs0yLZipln1O8a3CnpC00UTNI43o9Wq9l6DZdX2JIhVASM8pFozaOjoW3zz9gakxzgPz3T49D13uPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738358154; c=relaxed/simple;
	bh=EQcHdjWWcAMYexv0IU1Ya+5MwotODIXsiBy6mIRj/aI=;
	h=To:Subject:From:Message-Id:Date; b=rES6DHbsT8EdMxHYbzTX5UolB1LkVNYD75aLpmHGBBn2pNFjRJYep+GjYL0yh10zmmbMGGBYUQwDmyi/4vWyeks5VsbiVRxVbGDvxAPsiJMgpE/VjqyHsotVTvQumWokKr/H4X/fuqdFjJTKG15L63qKScnndH6WwAkpjbX7qiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZ3KOqU7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZ3KOqU7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B33B9C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738358153;
	bh=EQcHdjWWcAMYexv0IU1Ya+5MwotODIXsiBy6mIRj/aI=;
	h=To:Subject:From:Date:From;
	b=CZ3KOqU7FlwsypBozYTsgG2WW3M/pQz6M8G1/Lh+1fHk1sBOsxyrNhfKSpIUe6KhW
	 kS2LdoYVN662oMs2TOaBx0cNxuDcQbm5T4JclhTfTuzZkfzxzOfLC72+MvL1LiBhi2
	 uSuljSV5fpEOuchfttByH0qDyFhhCqb/DRMkjWHFyQhSaF8HOMc8wISqWoCG68gQlo
	 DktERWckirGFtwftknePuvkCjeQyBaeAdHosi9RK1xbeIpydRF01vlHeNjBCAXpthA
	 d1BTsMAxKTl9xRCikOiOm+jO6QJDDhrJeTI+ONkvoZ8cYccfVA7cxDgW1Q0xbmMUyw
	 zQHIbKduZHT6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F270C0218F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173835815364.19627.5160351590601027455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad2d5056511a3776b4456a62cad56bc6b73563a2d09869173431c00934b46ab7
Date: Fri, 31 Jan 2025 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738358153
