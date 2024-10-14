Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365574A1C
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728881754; cv=none; b=ruleeJB5isRKQhwiUmN/ttojHe/ZreJfO7p1B26TWQ8UcP0ypEdhk9g4gTE0g5MsxH/u0NbXNA1UjmR+Eq4clRKMoIa1LyKKB6kmLVgDBqW1cr/ilWLRpsdlt1N3GxHRlSVrcpiq1Cj47nCgGIJ+T35a5Qz7K7zqbaJ4AlYsJuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728881754; c=relaxed/simple;
	bh=+qEMPsxNeQV/Fn5y25TA0Uev9VIsABg+Lb1I8ergBNg=;
	h=To:Subject:From:Message-Id:Date; b=P0bv0Ysw/1D0CPtAXtpmxMXjrX1xzrxiHd81dkEklyh81A9MZ5geT2lHc3EBazzrXzBbpWOS0HocT0CgzJ+yL2nyrpdhiyzFMyGB0sCQEe0j/abGDllS/0RjdFMF3szUEB1CK9aSt56LARU63wDB3lKyabovQPjS4LCOovRmQd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2094EnT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2094EnT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3470C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728881753;
	bh=+qEMPsxNeQV/Fn5y25TA0Uev9VIsABg+Lb1I8ergBNg=;
	h=To:Subject:From:Date:From;
	b=A2094EnTQikxmb7YzhEDCj0X09lW/6B6y2ewCe+7u12niT+pT+CEkvx9EGaidIhLu
	 eOeHoD3BGSZSRv4PM1+fEFAbl5Tt7f7NPcW0VMwHOoyY5gp0+bNdS4CFlUPcpMG2be
	 jsLwfr0Sgy+kkBOkqZVMVEnsfR74xAn3jb6Hgq8mTjbqyGiXRwvVNpBuASbwKmMaNT
	 ap5mgfa2512vgWi7inqOHd9ATKpyM7Juqyf8T8i9zHsUt/wmuvGqas+JAOBjx5vWd8
	 i8TipQGakQYKxhKAggiAQ7NqcxT82K8zg8/selzMDG4Kf7rjj1MqT2u0bUvMRrbbHs
	 5lf0jGNTNs2Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D747CF259D
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172888175361.22844.13366696198890433848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57bdaabba09b42cc5bce7498031e2848f22c418b3138b8036231a7fe7861ea8e
Date: Mon, 14 Oct 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728881753
