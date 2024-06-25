Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E0F149C6E
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 22:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719355403; cv=none; b=IavdUkWMLkZtZ6jD4WDSAllsqeyYMnUFWWz77pAXRXF/kIDtdbVDMhLBWbjMtl6cMPCH9Qlrx4+gfwDir5+YDNWmInQersWnxIEXWKDCU+AKK61vtGISmPmuagkpnpbaCj4KC0Jr8lewwbYN4zDNJBxCIAUfOaa6PoTqHp+UW8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719355403; c=relaxed/simple;
	bh=AoFsjbPfj6xKM+bDXRyAOdnKjLiRlqPIEbFW+1NPgGM=;
	h=To:Subject:From:Message-Id:Date; b=s3Rmi94BPOlKbjb9s356nt7JUm8oBgA8Pmlsk2t8qkZIsvOfriEsi1msRM/kq52PHBuGp4dGbdxsc906WLZVfSDmcxzqe1JAouy8Y/CuX+0hT2b9ADj/rQREfttwFIZHgxjoPgPd01yFnyWHQGg3OCeSpjO1ptBmuo9qAKuTPO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cHItSB2E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cHItSB2E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D824AC32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 22:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719355402;
	bh=AoFsjbPfj6xKM+bDXRyAOdnKjLiRlqPIEbFW+1NPgGM=;
	h=To:Subject:From:Date:From;
	b=cHItSB2EyZUnGn4e7Ykw1qOVwsJqmSD1nsEW6Kli9lkL+hdKA1Zx0IVGRiDRgyURY
	 GgwWBK9dctnErf+yyJq6Hyqkd7+4FhJPKrXG5snMFIgRKj0M/MAIuPryHcSWjqjYXh
	 tbDy4925Tvf2yltnXQ/pTKBx/G8zIUoualJigdGcZSntqWm5egGHkkMBodn4u3SYT7
	 uStdsDlvIKzxvQnmzYxrKzn7uu24agP6M0meM8d+WlddfysUNivIKrNIfzPFNjXO7q
	 3HnpFcdsiZMG7c1T6gqyc450l/9Jx6ktKItSHnDpJmS6Mhd8rTpNbtzDya4BDpHuIJ
	 SBH0kY3NQDs1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1C5CC2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 22:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171935540277.4625.5687386156102968503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01ff5a5bb3f30e3bfb82185fb014ce15755939a5dab219588269f47a6d385384
Date: Tue, 25 Jun 2024 22:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719355402
