Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6BC2D0C66
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755746394; cv=none; b=ll/QxUZixWeUQNiOW7P0EdTLbHbQPrvX7TlOgQL+Dz2IQZ5BEHvPNuLrFVwFgax+HVoZ3wEze8MVPCIaQHNHc9VIIknElZUl5nkVt6auJwuI4F2VDq71YSQzWUhtQ7jPcdfUSbdXJ08eEyEvZOvu6y7EyFgggoS1l51lkWeCobU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755746394; c=relaxed/simple;
	bh=QiTANWr3DPPqtkNC8wy2Lejn8+4IPMyrWvvBH1IJm/A=;
	h=To:Subject:From:Message-Id:Date; b=ns3htHY42ix9tR1Yzq9a2EfD2kQUBoRVlr653Bn+KypKRPkNrnTDl82//f+7BVpU6Md8kDOEbqnm77SfNb8MI/CqU89yHt4adtxo4r3IwB7hhTG1kcOh8LDvj6fzL38w3NF4tH10yiBzeQR0D69UqSp9pkWmzeYHrKhIViyO47E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SkZkXt/y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SkZkXt/y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D818C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755746393;
	bh=QiTANWr3DPPqtkNC8wy2Lejn8+4IPMyrWvvBH1IJm/A=;
	h=To:Subject:From:Date:From;
	b=SkZkXt/yGSIpxlpOLWeGxiK4Hz/4afpmvDkrbFUxrXSf7i1m/AqrmBM29ZkGXTIDM
	 IQu8ICMANqExoGSrSpdkeuwem90NUURN5b9UwwcdeBUk5UCRquxXon/iNcnTe/0Hdd
	 j68hSErbABqzVs7smoTnNsFxfNzyzTr0m44RBqDY5cjXAoxldKEW8J0kb4dUq98lyl
	 ++DBlpMhf2yJflKZBShWsCF+7IHxowvsLGMYHrPGK5aNPhst7dNZDFsc8Bz2wnqP1G
	 NgB9ihPnyyLe8nvhuKEEij8P5meXNKr7VE62expOrffwnDBy8+zkHWOEIbAgE8LF0J
	 2N1BbgtP/oRWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F005CA0EE6
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175574639357.628.16423530501814488916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b8f94133c1957f41ecbb5dd804c3b2df1438b5134c47a4fa13615781fa8ff26
Date: Thu, 21 Aug 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755746393
