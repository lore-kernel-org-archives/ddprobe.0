Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3291C2877D5
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752428994; cv=none; b=Y2UndZnUO6GEhvjTr/t2AL2rmP660e9BFHE88EJz30z6vzaa9s6CypKrfvQ+Gp6dNnXZVMTkEr0wiC91Qr+a0bZXpzhdcKsuFAWtQ3ZvaIBk/rl3YIHakMq4wT+9bxflf02zvo8Eo6nppBx47tq4R7k+czW0byncBJVLYtFzWAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752428994; c=relaxed/simple;
	bh=qBCGQIpNXUkj3H3bJsV5vTKtgHWqT8+AQumCBYL3jmw=;
	h=To:Subject:From:Message-Id:Date; b=ugNqsRhiRs6LbXkAGwjrm1tAXFCYuQOvE250z/9IHCUW+jGqXSXFev+XlrnW8txGpTquXzQ99KvZMcVz5nF0edbV0/RQOPkSbifIyuXCGfbmTB9qW65DT/lPyMLrFqBsE6LDEEN2ASW2XVtOZxGPftTq2hGagufoB8Y0xmPv89U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cqS/uyMm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqS/uyMm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5B3C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752428993;
	bh=qBCGQIpNXUkj3H3bJsV5vTKtgHWqT8+AQumCBYL3jmw=;
	h=To:Subject:From:Date:From;
	b=cqS/uyMmtz+KTwcHRwK8Y0FdsehUNOWRKyWH2Te1T2uiFLde+ojcnlHfj/8gFKkZ9
	 fD5lYqwii4bzgVfE+suScIjI3IBenuliUf7Dw19pRi98xRwkId3fetPCgalY03Le+F
	 i5OicWzU8fs2VNGmROqgdDRNNaqOBCeWJlp+w13pRRMSEUN0sMBT4O1eUDtBKk79JG
	 YvJ3dn4u37zAy0nr38nhiyi/nao9G5FgoWACV+ycwk8MqXYjYc6NJbqHwaN5AlQ8Mk
	 DrQwZXXTpfrNHLmLQg9BQgk2asAXCY6zQ9/RWHnXB0DUlLk9G79pETGsT+45rGlu6v
	 z1EmlK3flsnWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E618C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175242899357.10384.11091002830744259909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c34ec86300c2177a220f5c04f90dfc85f546d4c36e96f0cc7f3b54b64ded337
Date: Sun, 13 Jul 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752428993
