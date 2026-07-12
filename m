Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2275921CA13
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 06:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783838914; cv=none; b=orkxZJtIBDdwkMRuw2PM8Wl64vJ4KBq9EMXPaMBAK20YIY8xYHmA4p5vzDKulVt4gTUcAYVuCh2ADTtmVE9zF92LUyAofz3N4v5KtviDdYO/IBE32CvIH8BmcFZyoNn9Q+eLkPPHylP524n5vVxRNnB9zSe4nwr5H50wd1zydFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783838914; c=relaxed/simple;
	bh=PQnGoJ6qumtddVYfOfGwRcu5cIowxndKEZClwTUCkm0=;
	h=To:Subject:From:Message-Id:Date; b=FWXOXWc4DOdJx0dRG22YXtpgL7Df8XnqYmIGmqVvEQUePH7i7GTBzoifY5xZrWiU7rvxUQbt7u9YWynVa6VNa6hfT6LB8+dFiHKolKpBKbuIpOrjHDKXNN7+W33A5SjRVKkFYY1MXoOyppDcSPBL+GEsrBJDVpMS6uVXVR9o8qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DoTQ+bgs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DoTQ+bgs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D506CC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 06:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783838913;
	bh=PQnGoJ6qumtddVYfOfGwRcu5cIowxndKEZClwTUCkm0=;
	h=To:Subject:From:Date:From;
	b=DoTQ+bgsvu1d6kL56lBCD8c4unUDNWb0B37OpoV9agK8g3bVsYxyOzjJCBZtadQv/
	 e1lxj7cLZu/zblQC5IPB9JLQGRnJRtfCJsIoq5En+R3eXb0dZIlV62wmr+bO1JHlGh
	 PS98J5e6oAq/kgZVZibttdZMwbRR1fWJcYOaGQgu2tAgm3EHsmmC8RJzu1K6ey4A8R
	 2CNlbOri2DobjRpr/2SlcC4brUtyCPHlSRAXa/PWmDIcpP34Yf62s4C/NxIWcHCNkm
	 dgGlvmsMbx972G0TRFwREqZEMNWD96FOOAKq16dApelatBBmRqlOP9IowjYG2VMKHu
	 LM7CL18bCJdZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE905C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 06:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178383891368.4173.4212141247400820490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c8e3e6bf0dca95508098a6f2a0ae5ce385366b7a4a42defef6941446dcf1112
Date: Sun, 12 Jul 2026 06:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783838913
