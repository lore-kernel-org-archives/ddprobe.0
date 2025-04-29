Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B48B8F49
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745910594; cv=none; b=CYsFQjtghQV+c0Dusagoxt+vP+DZKZ6A5New+iO3Sq3o2oUvVZ/nX89l8El7wpoGVBudbotENeg4OmKqH/VJ+X4idW+7M/kgn6mU+v9NTcAnOsfwOonhRSZpLf09N1OUnWnQtaeXl8DV9ga693R9Gj3IX3cWGn7hzAyIHHUgGHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745910594; c=relaxed/simple;
	bh=DjXJNaQN4+e4cYMDaN54MIUba+x5o3bXwkGHaf/fP1Q=;
	h=To:Subject:From:Message-Id:Date; b=N7J4O2yjzzTQYzQK5WxxZgWTVCVWm7iPXOf5eoobaWceKlElzd35R6I5XPQljjBNhbPY5xmX7IWVsEOi/RILlh1dO3uthkLgpmXnt4LtshXXKdPpqzbnkjqx6akA8SNd5e3DYk00F1QbpNcA/xlEDwfBc0ep8rTE1hJ9803oiu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HwVdysCL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HwVdysCL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15B3C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745910593;
	bh=DjXJNaQN4+e4cYMDaN54MIUba+x5o3bXwkGHaf/fP1Q=;
	h=To:Subject:From:Date:From;
	b=HwVdysCL3A4DJ7MrMhvMJUYpPQRThcvrNnu7LnxzEkJc+UZ7jxlgO8tdsMrDQXTvY
	 N5I2JVL+9cLXAp0C+vW/zPGEuR9eFB/GeYBc4bM/p/xjZYmvMs1XI5OCgg0+ARHmk8
	 3x3hNwgWGhkwD1h6ZL2ES/yoa5SIYb0H+iagyT+hqrkn9D3cNI9M8o+ehDWFdm5Kle
	 O0HuAOH/VeOCIwHFkn2qrvm3+mfeblgwP61zFQgoHIyBU0gqbQJpglNKIMS8eAlsZW
	 qPuMFSCo8Lh52tt45S4PTebgbpAzl2Fs3/AT5yfb4gAR6WA1lMAuxMTOtvv+6vS8Ff
	 NOSwS2POpo0OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928C9C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174591059357.1797.14257432921021340943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36539e7c3c9fd02a47df4fb56f06bd663728f0e17442f7357be481a1e8f0ab5c
Date: Tue, 29 Apr 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745910593
