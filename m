Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F44D30CDBD
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 12:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764244974; cv=none; b=K81gWGFMgYq0yGdaVtuUe1adTkd1o8Jv0QL9wecWm6wrYD7wY2q4E/h3QgNIv8TuTKDe+OutgC4Hie772ZkMu19mzExsWsizkbgV/nHhttY/B1+Jprl5DgxeqrB7kikk/PpWk7HjhfT2ItQEQeahrXbAwna5PASclLtJotgPk1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764244974; c=relaxed/simple;
	bh=yZnVxMLmbZzZ6MrbKojc9nf9v29SAgTEGr7a7+pq4Kg=;
	h=To:Subject:From:Message-Id:Date; b=LNF7SRBj2SE+x7qEm4Ljqfqpyo04hiBGmrpnnLx6bMwKJ6COWwf1Jakt5pSl6jBq4e4iUL14IyWw9dIhirSBG0Q5rZHIO2sH3sk6aO3o4Nox/vNN+PYvBjXGTDdV/lzANNx3LHpcHe8j84fnNb3vG+1ZDN6AFITGoPz1tDANWpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXZnIfVo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXZnIfVo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7390C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 12:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764244973;
	bh=yZnVxMLmbZzZ6MrbKojc9nf9v29SAgTEGr7a7+pq4Kg=;
	h=To:Subject:From:Date:From;
	b=bXZnIfVoR3XjJQ+VJPguLgkhx22HpXHJj23hyPKuGBnTFct1pr1pDper9jlWqn6gz
	 l39imwjqmvd+aqLQJgxdx2ogAUZu9220A9vS8kahc+zFSc/I271StalMkuPWd4Ui2b
	 i2lBqeEYkRg0Ei6frHQAl+BK5DYIQaZFJ3WTAuqGXA2F/pIxalioYhMzNbctQj4k4Y
	 lJ22rCU4mFfblRd5fidoBuYK7xzcC6wOM+kTAsImaO29O6qnFOoxKYKgsObrHwiH+3
	 u+ldNR5lYG44Rig5kojboP439PIOM/UzdTdXkN6y7Xfn+Dxh+0HZAoii+pn43moMRy
	 3UB/ylHYBPcWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91378D11183
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 12:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176424497358.13122.16786338289792438365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9f9f37f928743a31b7458fceb570d08ddaa68aa352dfb58cad2256e6b6ac1f6
Date: Thu, 27 Nov 2025 12:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764244973
