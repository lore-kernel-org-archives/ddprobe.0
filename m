Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E1F382393
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788853834; cv=none; b=cLsmk1D2OFsi3hxQ4+iDkFnLigiHdVjxA3U0cIC1CX7Z1Ls0TN79ELaJ5nBfSOGM9e43FzA8mYn7IFzpH9QBUqDy9NQ0U7FIn+SLAl64daCFGYBbQz3VbxmnGYCpTwL3ewnbh2SebXhy4gIR/Nc7co+Pll9suwvfS2QFXmhOdEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788853834; c=relaxed/simple;
	bh=KxgqKuryVByCEez8EMTQNcBvJqFNYqTBtFJoedAiMUo=;
	h=To:Subject:From:Message-Id:Date; b=srW3zhXMT6gNz72dG1ZAqWYGA7Ol7EnUbzqlHNFRPpgPrktAqBMl4XsEk0JHLqZ9Is67Afv0P+Ykdo/ZIJI7lIAX37FwoIPAgDdQ7oVZSBbqAqSlcElTsvXMRSv4OFUeU5ZUqSSEVS05Tslb/L7+16PhQKSh4zo1pl/pXEy4xlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nw31WGQP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nw31WGQP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D50BFC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788853833;
	bh=KxgqKuryVByCEez8EMTQNcBvJqFNYqTBtFJoedAiMUo=;
	h=To:Subject:From:Date:From;
	b=Nw31WGQPClLghUHqhg9+f3GiiFgyscCi/q4qHKTt3kDgyxCd+/KuBkfBZnYBnbjnX
	 WMWG3aLJhlUw0fvFw7qr6sj+sWk1X/RSl76HO1m/vt74nr6QC88EgNzViKty1Xi91k
	 wgKNlYo4wAmgUtZLhMbxcjF5ZXq3EINIGtbkMNmzxeL5Vo+C9A/9+M+Kkg1EMdPKCZ
	 ynHdWEIKUaRNmJNzvcd8cuIYlyK2R7TfUUKzAwP+sBxsbF+jys6n7zMdhk5sTt/OHx
	 W/X1wW4xC+UtY1m8JhUAEGnWmCut40O3cBZ903ggrtWtbRbf40QMPNBidk0VlzKL1A
	 NYaNVdVy5pduw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF0AC79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178885383370.5922.14756849392870517328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1161a5a9ea8b96960e8b886b7347e49dd9e5829665ad95085493c71b6156eef
Date: Tue, 08 Sep 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788853833
