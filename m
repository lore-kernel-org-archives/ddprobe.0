Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226F728E37
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733795154; cv=none; b=KNvdEJu7ybpV8gRnNFRbbzQGDXLNcvTW8CCXn4MjcJ6KHAwdoOta/Q0IV+hgEIbVWI71T05xkBoaS6ttDLSbv1prNDYSO/UOq9Hljotjbbu+N9Fg2ksHNNYSwhnL8moFW3hZhyPGQ/X/w466FrtipeglxGokeuYk4knpiHM7zXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733795154; c=relaxed/simple;
	bh=fUcq4gaNMPjc4ECXlUujjUN/NF3KAqsGHrkqSiQTe9M=;
	h=To:Subject:From:Message-Id:Date; b=kSa6Llj6QHZhruhfi3WNQ1GjHsh8cw/1+vGucs4uGb619ckhEfooy5aBC1Jr9MClqEw8k5NnjjuGvyxgJbZ/Cg0h6OQziH3sm8c4sPEWeDRW/J8fnQrXVEZ+C3ca4/j+eqNDcvP/BkmP5zGzgCp430xgaykPoZ+FOziDnftix34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=utFPjb2w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="utFPjb2w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37EBC4CED1
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733795153;
	bh=fUcq4gaNMPjc4ECXlUujjUN/NF3KAqsGHrkqSiQTe9M=;
	h=To:Subject:From:Date:From;
	b=utFPjb2wgKIX7Hf0gercN4yFuhEOvc/sakZdjTJsth0/V0FhxGhyCGGo4Jccse/K2
	 yKcuAiQzgwyRIvf4SuVzxdHLO7fIQebrHhajGhg6o66N3bSyS81qH74xl6Jl1UdjxO
	 1D6L9tv1x3vMK/EaHmfB72w5fBHkfTqnmnSCA4F3tIIhsrLcTB152byFsAn8UeuFPI
	 CdZQ/xpVZ7p1GbQgT7K2AMNXd8oiBT9oCDu/ZyWvaiuYlA8WQ0Cm3FBcHxatlYefqy
	 2vak7Yo9DEGPzVIPklelXM+Jvwimnw3u6CaS6QQ670nl5icF5ZCyFBGzTwRKFqE6vk
	 cLW4VT6ukfM8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947F1E7717D
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173379515360.23055.10250495522336668806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ed7d81d871877284773aeecb8d12734912b6a62e4fdd7a35c86b3f8f3052106
Date: Tue, 10 Dec 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733795153
