Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA902BF003
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750084194; cv=none; b=KpHb2IHYhezjzURrqzcvwwwMT0SdPaeSFJGeRnmerzbj7Ka3kGXOpa4tUA+h+soRa1mH17jc2djtwKNdnXkmxZTVOiEDtXfNYsrZvnf3iT6DS6rkbcoq9mjLLOq+oQRBpTFzgcSkRBrzh3OnX557ZrsXhumMQoHpojX1DZKGzPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750084194; c=relaxed/simple;
	bh=qgNy1En5qjSSodsJZJBWvrtvFlYlTFWWL2djucTDadU=;
	h=To:Subject:From:Message-Id:Date; b=eTe2VrD00zCxDzrcZGbe+k8nNM6b8Tc51eiNS0qUVM9DdnzgDhqL3mapkQXZPAowJZGoLfU9vm3yaFUj2dCqDlYIZII+oFbdZqTVSJmmROLz20wvGCakp/m9iQJ5vfjG/dL/6n6i/keOBeRhOiAwFFBIdSirVrQsP/HDsECbVD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZqQmo/uJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZqQmo/uJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36EFC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750084193;
	bh=qgNy1En5qjSSodsJZJBWvrtvFlYlTFWWL2djucTDadU=;
	h=To:Subject:From:Date:From;
	b=ZqQmo/uJ9ysfgljechNZAtVxEs673U7U/iJQWiK5hbKGl0bvfyAr0UIEVsOvc+n5d
	 RGbvbamNd7hv+b9aCs/2brqrhAGY4FLVNZ/IFycI9dN4eBTLrtrqK9zCQfkbLT3BKD
	 jJEkdVy21/fBsc07lEDvpqzZ/9N3OXoLy1kMmcIIPYXTB2GJuN/iScrRdHCx5f+op+
	 IZNyAyNbG5Hb59T2iriBdtZg0jkV4cFrchCRL+Y8+j/4RWHDRqdPewzvIA7ntxOGVQ
	 s/9kgvPZ+rEpf2LOnlJ5ZiQ2xO6LBLZBwznjnDu9DQplpD0VVqLWGrk2eCKn+Mbl/5
	 RBTdhevdLQthQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B8BC71155
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175008419358.20129.9316190647433293619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ec0c757554ecdfccdb99d11e6861b542a025088f43bd7f9df9493ca8305d30b
Date: Mon, 16 Jun 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750084193
