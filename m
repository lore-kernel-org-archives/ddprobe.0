Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02F06307AE9
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768524234; cv=none; b=bgzH4NDriC63OF+2S8QRPbZgt9RnhHarIFjYdFft/c7nyxw+b51LfiOl8kIWzxmHrcuAD21yCmU+mBB6RLe4iQ639xpKwYfqV0uRZ8ytD3RNCgwOfsSmtQi1bY5XllcTNqzFMYsmKaASN4KlPhPDRbitSYdk3A2NQA7AWg27o2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768524234; c=relaxed/simple;
	bh=qaHKml0C0GR9k67KGE+EbB6U1WSRl/B5oRHZSSgo6+Q=;
	h=To:Subject:From:Message-Id:Date; b=TFX4stzJSmjRa8OGRNjWPNi19k4VaL3QpqHtFXnrjmsM3zBQWyl0O/uATjjUt+oep/g2X/VfEFL/oICy6XefdWL2RaazS0G+agN8+/4eef1g4qpKjORCYF+q2rUDjeXWvRBlqcBpUkqyFqSAEn7nrhR08/zUzXl847++Z5L5WbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KKYYWjh0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KKYYWjh0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C6C5C19421
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768524233;
	bh=qaHKml0C0GR9k67KGE+EbB6U1WSRl/B5oRHZSSgo6+Q=;
	h=To:Subject:From:Date:From;
	b=KKYYWjh0WVT8FS3UemSb6Z9TWJxIt61xRLvRylPFADhm0ATTg0yxPZIg3MoKXazUn
	 raPFFoiwhq2Zk5D1iAykxguPYEQPz5XzpGob8AAmECkaxqwq1yfi4+p3P+q7aZY7ub
	 OpI8ZRAf2SrXZRUsvf5W+yEM4jzLphlkOn00QXU9MWk/kDvYwbHw3eC4gr+HcCbAxR
	 jQ0KfLTFof+tlyPiSQoa4M4UWzz9t/+ElJyy7jf333VrFAZBhxBGYs5zAVuEn/e56P
	 OfGcSgc2pUY3YU4+3jZk3ha4FmJmuRsOf3HVkbjHohQ+PFzFcbdYposjMA+W00IpB3
	 7OsgITWPUYlvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2E1D47CAB
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176852423357.6038.15863192496700761833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c684837a9e631f86451da74a889201ce69608e0ef7f93d668dc83e9db3abd34d
Date: Fri, 16 Jan 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768524233
