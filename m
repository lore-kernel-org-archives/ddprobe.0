Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28303184F
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735260354; cv=none; b=NPXtJlLrue9qkNMDyYh+KpcFAshKfpWvrqQ/rRdMxdNKiPJ/H1DnVaqtbt2S6xHv0YCUl7uDKWxj+p063D/EfRPaf63c7OIOTjEmq/n4RT6wpEsUvlwuBOZkeLs6esHisIWkCQmtH20TW6H4RBRUH0HhddsVXFY9oM6/HZm7fo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735260354; c=relaxed/simple;
	bh=v1loo6L4BiSRoE4abVpIm5tLGMj6hGHhSi7V4M/KuSQ=;
	h=To:Subject:From:Message-Id:Date; b=E/8e3mz+b2W0rEO/Mps7NpVd9U1oyyjKB1A/Qcu+P5tMeq5wdYGFVHXOuVL/Es18YHWHYxsDOAmcEmGPg/ZcoKSDH+PLY0Ypqct7Arun3SlBe67E+PkbAV8MbjnFIhOMu/ONvMeBGXdhoLX6RD29C5SIZAgGZNwxk1p6XL4D1Ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7k6zQ3e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7k6zQ3e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEAFC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735260353;
	bh=v1loo6L4BiSRoE4abVpIm5tLGMj6hGHhSi7V4M/KuSQ=;
	h=To:Subject:From:Date:From;
	b=N7k6zQ3ec+Nxah6SgxfYACnU9AGYx9Rr5vxXa7lMSnyuegO5a4QtwUZj+Nm7vcsMc
	 IYUy0zunYmw4uQgT6X4Yzm3XsbVKOFSSIoxRIFjbcBb1OkCGw7BA4L+N5twE0QTf3L
	 gmY3NMuAbYMhqnt/Ni/MedV45dn70Mx9cth5KWOL2qj8nioOtMp1RUbY3yms80wZDJ
	 kYWlZoM9zD4VGpcjfP3SYTM7DSgKVYm0vi9LzVCT3ubWrlS+s6Ce1N3DENsmMKw5MQ
	 jRYzBgWqJj6GauoRqlhTPjcIidYYvLaJC/d0bL2cRQzBD/3o0DPFtwFSIu96Zp4TUw
	 UC8/RtYFOAbug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FA7E77188
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173526035359.5157.9937359238764880038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d003f09a35033ef6be17596cf89524ad9a02100d70092d04b581ef891179051a
Date: Fri, 27 Dec 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735260353
