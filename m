Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4121E28E7
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742593794; cv=none; b=oLzcdTYSnsr1CXiBDfNNz02yNoQtskZOeXXwkWge1FUkljljSvV22J7frvwp4/5xKsA7lbwsiByq+n4f9R3y6h5ss4iZ073V6IcXCo0RJ2U5SSum5sshDrNQ1gTH0GPXOcDdcLgu8odghOzLxRahsFD9NoTiK4oaTxayYsHcAF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742593794; c=relaxed/simple;
	bh=uMaJ3pwYw3KA3oQpmDWp88abz1C024p5N9wL5EL+YXQ=;
	h=To:Subject:From:Message-Id:Date; b=YKZJi1pZa0Lr7rDWZXpHCijfVVxXoDYrFDt13gLtFJnmfp0+PdKqI36fxZkPydDZ3fI7UpnHIf1mNeDzzVBji5EjokNvkNBza8sDZDe+WPaoTOOft9TvS8gZKKuRT7Und2y8miFp2+ktAjI8gLf1TUAxFILPA2JQS6/2lacHptg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZaTBDPXu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZaTBDPXu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC7DC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742593793;
	bh=uMaJ3pwYw3KA3oQpmDWp88abz1C024p5N9wL5EL+YXQ=;
	h=To:Subject:From:Date:From;
	b=ZaTBDPXueTcOeIMXKONj5H+oNLXBeU1oRS4J6n2qC+Xldj6/Bph+469aqQ1E1O9aq
	 1ItXcx7kp8qp182doh1XPmhgOjAQXYoiEdHOE6L5g8NM/RDMXQsT5AnIvHd1BOEVEw
	 9f5uQw/OcH2uv9Ffa04x7lluI0i1mwuG07pk4Pj+bkg+uj5BVvq6e767gnHXFT/UOi
	 bIBGXTfa9+oyxwYim0C13Oux/pIJOy1Q931CK8EX7ubcnXb51nlIlGdFR3qmzN9wkk
	 T1aS+1Jl287OfEGgxJAEaseHGgMyJwV0ghYIJs/fzp+E9GdlWfp5g+I8ehlEymTXg7
	 2YjdZQepNcX4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E57C36007
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174259379360.31888.15421851388084144541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2f48b3044fad83be76f55abbb9144c67775fd238ddf8c7db2afb95f6204bc9a
Date: Fri, 21 Mar 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742593793
