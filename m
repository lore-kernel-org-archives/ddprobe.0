Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0321919995E
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762759194; cv=none; b=R5LkOBrsxdy1easGFdJdfa0/mLj4Y89wKdW0RA4tZBY6XgK+ivlqEjSVuJIQlKhuo3sX9c0Bbn6DAdFv/NHGnIbtvYg0qqovThjNQN4eHGva5Fq5Ny7D4QqzLFAEktBPzKiakFTZ0RMFcf2bJGb+GRgVYldGGn1NmAjT9ra6gMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762759194; c=relaxed/simple;
	bh=jj65AyS8UWyIsa2p2AyU4QyCpSZ7RkdNn5EY8FCmc6E=;
	h=To:Subject:From:Message-Id:Date; b=mF1kJV3f62843Gl4tTLXsPMK45P+s9xYhGWG72hbHriuu0FXXEPUlg1DDHNttAtedsz15uGHpuR/2wds0NeOwExV2XXoZ8HX3TMF73kFJiA8hcf54WxgWGxzpyw6uizQL/taoECqNxb/JIhWS/3O/XIiIHpgpvuJHGfU4pjf4uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4W+63bt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4W+63bt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF9DC116B1
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762759193;
	bh=jj65AyS8UWyIsa2p2AyU4QyCpSZ7RkdNn5EY8FCmc6E=;
	h=To:Subject:From:Date:From;
	b=R4W+63btP1u07NN0ecrtIY8fFd8W8ev/HAQaitnNYkwv5VuojiUkalOnKgQ+8iqka
	 GVCqy0iedv8dNKQqmqQfB0lMcQxXfmaa5kWU/lLqvv/fOQXhmF6qc1SHwq8wei8LRv
	 610yZzFHWLHuAl40yd3a2XTNjz/TbydEDkB+5LAhALCt5NK6x6bezJcamFkxI3bzI1
	 XjICfOAO3npuw54tFXHEElwuDzHzwMZUmknXhyLGnpuGS6dc2dCeQZVHpyEvoyI91w
	 JP2uLG9x2a2FHf+kGkDRMb39llaB+TiXTFzGRPw/nLSLPZd8Je5XmQYTLnoa1kyaAC
	 E6T6i0w3zUCLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD0ECCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176275919358.2511.8038423818760892951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abcfdd5bc77c9bdf6119b2b054150327c630b9f48a4cfdf423c85bf6644bc21f
Date: Mon, 10 Nov 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762759193
