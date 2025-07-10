Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CBA18FDAF
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752166794; cv=none; b=kQ6GXKw49kMwwBjfIK2QwYTuH0iNjXGo9x/RaorazFOcJ1o794SZdmgcGa4IC+NzgdWXEIbwQwk5X5j4rc1Zd46nFw9LFpihf+Lw7K+r2ZAQW/mG0/DUyqw6fgjWPuLZHVZ8CpruU9MvatI13TzbUZWusdEQE6+XwJW89liSkG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752166794; c=relaxed/simple;
	bh=di1S3OC3lvewl0I/VPF7A2KAzLQflGwVPeXBJMGoMFc=;
	h=To:Subject:From:Message-Id:Date; b=Kj6GF3QwAImrEeR8i/APHHM2FI87ulZRWS0bIdcTvDE9pU6mgr6sg9LVf5Er2mEc/8ze3hB5wbLmFC0qE1QXuwAKpNF8JjqpQ28UMPwVA3KCyB5pTqLru8Cos0w8FDgfZkQslNqSen019wsTvC7nZkT9D21s4ip3C4taqVUEucM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YmMX7ZZ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YmMX7ZZ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C3FC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752166793;
	bh=di1S3OC3lvewl0I/VPF7A2KAzLQflGwVPeXBJMGoMFc=;
	h=To:Subject:From:Date:From;
	b=YmMX7ZZ/w1Rd92NNZhLYxNosyLL1bmTUeZmoezI/yOxJ2rfOx2bd1U03qEePUYtcA
	 G/7uADvJ0QcdixHZ4V5bhxjS4odVyAivBcOqUW3lmJYXFSrYkgOiMpdQWL93oUp61F
	 9KZ6idKey4yl5Xw9tAOwfsWL2CGCnasa+jgDHl+yVCLRHc3qRslsMudo8ndGwU5a+Y
	 I31aAqbZUFZVR1OjdXKclGg62GQRXO+OciLvqa/AxA3mLjqVQDckfYsaJHLvabENHz
	 agaFod9TOzHQgNhKtvY6yChatW5+P75waGmyxEueoFn8w2RkUqLX+jjkqjK09ZGBwv
	 /MmClRIne27dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91466C83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175216679358.2421.5354944904931345478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc0fe87c16720702a923e2d5152b34111148b91cf4d0d5ed08dc172173b6176d
Date: Thu, 10 Jul 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752166793
