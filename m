Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C23947884C
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790372434; cv=none; b=u43PYkspme4FEAUJTxsy2kn69hRN4TRkwKFQ9MwGQLGsGOfs28sRmSjaUb4Ulk6qZjju8LnA+k7ugixSvcx3Gdzhis8EpXo4/YS+zEIshat2Lh/HTstCx4YEr2N1gvEzzZ+3dHTTVFhIBP8YJ5TBpGVypwXNcbx5uef+gUhK2Yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790372434; c=relaxed/simple;
	bh=pvRB+y1ty9IqtHTXh4ogp64f9kZJ5/A2VWQ69b1fnI4=;
	h=To:Subject:From:Message-Id:Date; b=Xq8axef3r/FsObsIcNlO6EW3hiM+V+p10M5YG93+5hBVV9Fi3St2fZSZQdriByLgNJf2pZYdxLIDkJSxGmUtS7yJpMp2qDjtVl+ox3LYmM9S3j35CKeIO9wb3h43ymjYEf0jgTVO7D8D/iiReBjDC/Lc6wRdkt3Y5qJ95B18sA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O/wHndds; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O/wHndds"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCAF6C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790372433;
	bh=pvRB+y1ty9IqtHTXh4ogp64f9kZJ5/A2VWQ69b1fnI4=;
	h=To:Subject:From:Date:From;
	b=O/wHnddsBkQb2DNLNgHvxuLtsnt/s6Cgm+HCa484LNe81ySszILzWH3+FSpcmVLYC
	 bL6uDzWXWaM49hBnOpLYwoFgwI09/M2uPPjUUTJ8r7kTe6qYhAyngG+bc0ZFTjci+O
	 u4gLpG8KgK6RfRUBj/+KbD9eQydrc0bqkkdMc9AL3Pk9hdr8kWYNEaciLPu+OsqeDh
	 GgKarVqpQolvZ0EJenBf8rQIilKthH+HvOWF2tn2TYa6nMcMsLn17UXtf6fHSQn0tb
	 goKOUbmuAgDsVEg+D0q1yayWTRv+iOPenDKkAGIqG4rOu8ntZ8Xgnh9e6wyNPUkjiy
	 0TQFxG9WGL1BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EE3C9832A
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179037243368.15003.5500890862962061514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f71591cea548c4616cc7c17ef1c29fbf72fe6aa64f3120abf8855bd04abde9bc
Date: Fri, 25 Sep 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790372433
