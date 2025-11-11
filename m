Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0171136C5AA
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762877994; cv=none; b=RYcVu/RiaJo7MA2h/QN14bWGmTrbCoj5G8TLDHb31XGOMI6lQRr7NDFclokCqXO+2ecIvev3KjnHfA5m03EMQc6HaGEL9fnbU0GTJyRaIiH4bOVi1WBO4SZd8rvhdeQ4IcgSGbfSzowzG6ouZ1BmF+KC4XLWsAoqzhMCg0EI+Yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762877994; c=relaxed/simple;
	bh=kRELe3jxGt8+AXtDoaZgUv9wUTtmNitjW3ZdC3KXj2g=;
	h=To:Subject:From:Message-Id:Date; b=XCbIjavVFZA0AiIXk5wWkHmtcW9bvjsP25iBG7DovCb3rcJfY+6qr1OlMGXmiqiQkG3QwE4F/MRrWoRo0vfnxYJL5KQVN2C3XFlaeEzbJUYZXpISQmvUQialFDri+rk7vm6JrV8VcaQxtAn5KZlGZ0a6AnEa28gaWJzLvSx45r4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BbRqisNq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BbRqisNq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B7E7C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762877993;
	bh=kRELe3jxGt8+AXtDoaZgUv9wUTtmNitjW3ZdC3KXj2g=;
	h=To:Subject:From:Date:From;
	b=BbRqisNqWit2sTBFlDctBfdS816HGvbCxNYs0NX26d7eEbkfdFgkKtqEXDTyGCRXe
	 F9Nd8kBukGsCGPhUYiEFT0mhwH5NGJYlHkCuGuFb3RQTjezKZMRx1jcg1/YP6wXXVL
	 h7ctuqk75MOTDvwlbZD/+KxW1OGor5rJoCHHt0Bl/rnGdHBYcjJIu+8Pa1fzxlu3Hr
	 leL23TC8t3DIu70MCW3aHrK7VLVrbNwOamINmlzhuJVynJtcnBZ9kl2rDcNHT+Tnvv
	 idzVcNOXDxx+y8bJwkq2A7+baiFN8ZdiuTnh9qvUbR9WT5Q0ggEidwFvO+h2oxjUB3
	 xAsHoNx2zu+YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4DBCCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176287799357.22135.4095799133646204272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a18cafb40cd91cd38f54193a3130a1f53d51e4c3369e02fb96f53e1eec26b06
Date: Tue, 11 Nov 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762877993
