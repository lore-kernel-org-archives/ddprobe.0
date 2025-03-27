Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59FBA1A8409
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743043794; cv=none; b=CwuW0mi+1I6WqeLBMqrJbaljQPi16nMjmIHXqQ6XsHmuOVod3anaLrEfealwhiRLZ5XRWsByYh8/85omp9SeMP5NZjVinyA4JyXKRvE8JU9KdFe9XbdZ7zQb+J9U4Z7K0njK9cvVIVioWcbFhh5Q1POWRWuAw59IJnq75fSRkro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743043794; c=relaxed/simple;
	bh=MAp7IXs7IYVxXvzU1XNdkzkwL5u5B+jobZmArHX9jB8=;
	h=To:Subject:From:Message-Id:Date; b=KK6vVpDS4Mp4LdML1UVhIR8c47WVB0HMCi+yQ+NECAzWFXps3EO8iTjZkzEw1/YXIM4OY1zN2F8YWWEL7nAbqbZq689rTzpUPbyaRUS/dvkj/UWgPr0nG3Y6cyO7n/IyMvPGh/JTTrB6dYM7T0irjsJYXaGF0G/J142R1vMbuQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VKNJbqER; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKNJbqER"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D016AC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743043793;
	bh=MAp7IXs7IYVxXvzU1XNdkzkwL5u5B+jobZmArHX9jB8=;
	h=To:Subject:From:Date:From;
	b=VKNJbqERPJdQVwgNd5xtTqynfoh0gBAAYiP8mtinfsWnLPpaP8O8hFm4Mtn0b/tSE
	 SeND4GpKsttpXH3u93QPlrZA8IcyjRxoRmbtProUu4kKK+tx3tEZdoEayoWz8ANJg1
	 fHjiVklAZt/FmX/CdfP0FOJ0LQJVNb1yydPq4pxUlOBkr3/zngzsW9EVzOjIebQsO1
	 x3CgaAp0vFu7nDspfDpnz8hZ3YkquFjVX2XrcS+C6DDFX74uRY5qYvRp59NYQvbxeU
	 cUnVTFF/XL6FxyKt4JggCe5UVB72S7FKPyQfsOuySat8ORGUIJB7D12cznU5jyINMt
	 ydpyf8r2XM4IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD002C36008
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174304379371.4425.7504381653804210464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40cb58627f652e0fbbe50723f7a8570025552beb4ba53d08e84355bc208c044e
Date: Thu, 27 Mar 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743043793
