Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F81288524
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756179594; cv=none; b=vGguuZzFYkhnyPVTELWctCk7MdSomWgEK7patW3hfIo1CrZw6P3vI0jLz9KxEjWFSHgWXfsL6tpp8zF/KjWi7MymiOnBHRj+qKcivVSRuF/hixWiEBMIwdizvjtRzN5fykYVeGcQGOj4+/f9HEgznE8Djj3H6nDTgqdSP3GYmAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756179594; c=relaxed/simple;
	bh=aEkavKpWFaw3lvrw7n8e37MrmIEI6or91ZueMVnXkLI=;
	h=To:Subject:From:Message-Id:Date; b=swN060gPvtlhQYsc/7eZN/n/K6AqMsGo6AGOh15BGXi2+Zw5rupV0DLK0euc8D1ayPXoJ8Cvc1bhx4RbyDUXBfeluI8la7eLgAyTy7DYwdDoV5/uFgZIze3Snp8ga2+mMNOBCUcpTTGy06B26131jEg8XslLr80V71EtBPnv8I0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k/gsuqbG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k/gsuqbG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B2CAC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756179593;
	bh=aEkavKpWFaw3lvrw7n8e37MrmIEI6or91ZueMVnXkLI=;
	h=To:Subject:From:Date:From;
	b=k/gsuqbGdztjaXUA0hD0tFRUw87PuERcARYYoIzeO62EYxsrCK4MPo+u4mNypcYxI
	 3HD3P0NS/1eLjtJFlff+xKxy4yw0Lr2H/JPWF//+vP71mFyjHlZi+so1JD0+5NysIv
	 vD4RmUeeIyjBJkXpAPS1qEiB9+nLw4+nE+x/sFmGfXFl9C/uktwU5kDZhHvo5O7EnE
	 RZFyy35jF3jJj3S2wA5nBHFzaWgq7qnTYRIgMPTN6WiSPcxlu63fcoYDo2Su1Xhl7S
	 z//ngru6zEl+ionRq0IkLZnNkB3tyTTLaXUVk6ZhF6XmXkHq7UyHZb2o0q8svg75TV
	 ZiWZ2H7BtbSuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC3CC8303F
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175617959357.8698.12999643715519560792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afe345dbf30a1adff28743fa14066ae19cfa23865137d22212f580ea492f5059
Date: Tue, 26 Aug 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756179593
