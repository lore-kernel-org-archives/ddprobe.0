Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248C52BB17
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 01:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777859254; cv=none; b=nlj2ZbmkSoia/GGZZ2WYoTh6/FwGqdMV+Or2sbQWnTz/TsCHYMqvQ6F5T716qavDHkYUkhdFrMU/FnrvnwoOPe6vav/ahODPtPTsUf/4gGzRtSop9pfkiIbowNnKndVZ5uFAEGojHeafcSKusfbijSYCcN7NcH9SO2/dMVxKjSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777859254; c=relaxed/simple;
	bh=mhfsi/cpCmQ2KKfbSLiES0Mirn1tGbkFr9c9TWCf+uw=;
	h=To:Subject:From:Message-Id:Date; b=k5LCdrHL0sx/2b6PlbgJhrb0wOH9yZCFWq7IhUv7GL3VFn4mcxKSP8vMy3WzPOQ60FXPd2hxy81kb1/WXpPddojAQtleYN74+9QZlceXFBkQh6M7G3AoH2kU0Ju/IHkbbMtLz2g4ewf7fFuix6ZiwBA7HGSvXjcEC0DZRxhIMro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXHPhvQz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXHPhvQz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8762C2BCC9
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 01:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777859253;
	bh=mhfsi/cpCmQ2KKfbSLiES0Mirn1tGbkFr9c9TWCf+uw=;
	h=To:Subject:From:Date:From;
	b=XXHPhvQzMZLK0snTW5hwLiFzcKkPN00oZl+iN9i8mTsR/FKUFqqGyU1Kpy+JnR8I1
	 LTlRVAVJbelHYpj/J917RsQ9ufIl62ndRSFitZ2wim6YGc0aqtRk7ourqhsBDtTDi2
	 4W/zivtxBp+iXWDzElsK3fMJH3InxfHjtNaxUlwCt+eVKouydBpyYh7VVtwuLUeqkM
	 NfknatTH6KebJ99CuIORgRg0YqgI15qFXv1MDfm5Z9tlHSnl8aFeJQ9i9Ch6W+yGAv
	 N+9Fh6jXIKMloq1o29S5Mwep7J94BTteNWAY1LDt6dLb8REnHJGqgcJSkRQLkZ86aV
	 a5Mf/INRPDFKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9360CD3424
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 01:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177785925368.15957.17309324550304406906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 304f27fcd5b0604b7e9b644c0f683763077556fd297216da1e67ba2b89bfc78f
Date: Mon, 04 May 2026 01:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777859253
