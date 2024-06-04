Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53099136E2B
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 06:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717481723; cv=none; b=Hf4nIE5BGDFs1TDjMyltffHTRGjy++/Y0l8rRDcFugTzR7fk8SgQyo0fRKcsM4RIHNzKmv56HzmBYcK6IlC5MxsD9eghvINLNZYJAwabvhBNB1NksOetjDlug5zVqndkao5+OsCnTvRP0Pwc6BpB9SpJBkbEwHQ/zpbdEQZf7H0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717481723; c=relaxed/simple;
	bh=3Hq5CfvFuBZnB8iuU1bFPdAzUfBMRgZBaqN51K7aGlo=;
	h=To:Subject:From:Message-Id:Date; b=kIxO4KRE1zK1A0zcA3ewJTJNIQg6GvND/ZkwVAxpzkAysufum2vJuSf7/XOMVNX6JFYWaH0shdysBuJsD7yAJXQ6m5YtH5U4CB4bRW6M/i6HMjgdXyrl2GoR7v2TSNzKVp3IjJbBNnJiMDpXD7uFjzGwhQ9qaAzlNhrA4i4CX0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qohnflw2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qohnflw2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E7FC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 06:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717481722;
	bh=3Hq5CfvFuBZnB8iuU1bFPdAzUfBMRgZBaqN51K7aGlo=;
	h=To:Subject:From:Date:From;
	b=Qohnflw2GXmnooQyvhXVSBO0BTw5C2gC2LbQWSpIvSXt3UL0I8Q/Cr1JWge9pndcg
	 bOgJk57OTNhGiqSlLjd5j3OtpANsZFFddGtkDgROTpGXVun3M5TnYpPxhakIm2BFVd
	 cvMSBrPk1vWVqUWMVZmIIqDXWxRWfxj3i0npFYPtNTQOl/Vs6wsY5vZqqdTmh+By2Y
	 Zc+X/RemfwtZr9JOlx7/kPIg+644hfY6rWW7ItdoZEMqLyLoZFtXnWC6ZbiB1G4s4t
	 7R7ayUD6vZFakHKqtuu0snfRDTtLlKPoQHtLeWo1KvpAFmbBZ7CXRkEnjAMQADRivI
	 yJvnuaBsa2i3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA490C25B74
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 06:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171748172275.22061.2691460311499902080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f153915bdcdc4be17577ca3ad4a522bd8bf5d5576356090f4fd8f4d57148adf
Date: Tue, 04 Jun 2024 06:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717481722
