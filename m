Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3D520B806
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748606394; cv=none; b=RNb/1y9zYQvKmYjWNFtAemNKoeTtKJbxrdB0YPFj43qMvXD22uj1KdMuw4z1dicuo6+t2Z1HSDiHhVcZHf8asfL4edED62qPBHqkNg0CgzXgQdInK1q22FLXsH8kyCUkfHakJbhbTM0BnO1HVuUfqqUQiPUfq5M4ro9pgiOBEeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748606394; c=relaxed/simple;
	bh=XNf4Rf9DdkJAz5tKWcXUTk/wNfcsbuhK72slx1MS+Rk=;
	h=To:Subject:From:Message-Id:Date; b=WmyKuwNBNwYilA01AmjWxac8x91MIHhEZudA6BnJNF3nBNtxuz6sPHm2Xp/JNdpoM1CjXbbNJGqT6IpRiF+IKMt6gDOWlxYLarQ4cIYhmHf6p0zLMe60sG2FGQrVM/jniJFu1EhFRVWq2SKFrFtlTFTHgMrsvX97uhVauLouodI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2PmO7aG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2PmO7aG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45D8C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748606393;
	bh=XNf4Rf9DdkJAz5tKWcXUTk/wNfcsbuhK72slx1MS+Rk=;
	h=To:Subject:From:Date:From;
	b=t2PmO7aGj/P79gOdMIGs72WNYhO+xU9/hGgAgKQHmazPYnuEUzQ6wERTzis+J09b2
	 4QdwHuOLM9bFKzzM51+a6wm99kGTOcWxWpgXzWdXh3asRMJUF4KDqXrnfIM43DydD5
	 KjBo6vCzJzFLAj6NSlxJxDFUvdl5Lu6BFSNXT1zm+W3i2ztmyE3KvdBxU5fdc77xg9
	 pjS87T7UAHJjTZ7q1LLtZfNlkXLhdtJsQXLEhpVjE+nfNDV4ravtN3ipcnOPdHp3SX
	 V9V6kwAHdt1MKtI00UmUnZNTf1/DytPEM5X3x/7l1DVnzs4vWoBEn92sXTlkMRFTEs
	 LcToEnNz7QcYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92325C5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174860639357.8278.11252643462222770887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 095f419c998523c8528ee0daab73b03bcdd0a2f1050a9fa9cf4eeacaa537b645
Date: Fri, 30 May 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748606393
