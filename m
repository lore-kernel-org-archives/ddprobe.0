Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E247358373
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 23:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780012354; cv=none; b=EqCPnMps5KQlywMhIT3ZuWxr/M+UwZ4mkFr1WBarvzphtNaduVlF0fIMumVgMxVN6/IjTQ7roqJmx69JPfOR11PlX12pmvIZjmuLWuXyOeUEF5sm9AEnPlDGb6pSRn6mn7JWeCLw7CaLEli7k8uvCzOO/UGFCzv82pvX6N/WVms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780012354; c=relaxed/simple;
	bh=taW59rcrKIBwpiBq9OfVrjK5hpluxkL+WUMqhnHHVdk=;
	h=To:Subject:From:Message-Id:Date; b=bMOmwTNYsW5WkMZCWrCbJJVUbyTLxVSD5Hj07AbU0RMWVbFOW4AY9eoONH7qWV0Nxg/wl3YVDdUyZO/BiaZ+bXvKUW1XYsoR+UwwWSs2d+xvaapnd6g2gNncUfzJkmeCDMitXJLSoC/4GAszFz1e5e0Ig5RvNBfCerbCLnHe3uI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dRNutD0D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dRNutD0D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE7BC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 23:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780012353;
	bh=taW59rcrKIBwpiBq9OfVrjK5hpluxkL+WUMqhnHHVdk=;
	h=To:Subject:From:Date:From;
	b=dRNutD0DPKYjKnjtyvtfZiilJ62Ha6V47oPEDcjYg7sHYeRCf0hiXQXC5E12Z0itN
	 eAQC+f4UVl83cppj66z/z33k54dRxMVEb12OuqRUvnsJrkXA34cJTjmkaLfEj6vo0t
	 gMvwvHy39EICydse46HeGNfq6X9FdYpigTtO3AW46r4OhhgcLabtthwGL45D0qkmbw
	 kqjU0s1pkQI26X2IKwkrcJshgT0PVFRsbxT8c1qTTFjWcoOLyb6F5WcduBTNO7MGAV
	 5jo4Yvwp5d+XMbJsrNq84fHTLe+Aw+ba7aVslaEKEkWVpAKM8PQ8ibul6udSueV/6C
	 Fm9ua0Qnt7/LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9226CD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 23:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178001235368.11489.9351236355158300127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 537ca682f34ff479bb97a706aba115e01ec0e9a27b96d4af0a751201f95dc9a8
Date: Thu, 28 May 2026 23:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780012353
