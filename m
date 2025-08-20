Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3F819EED3
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755667794; cv=none; b=juV7gX9PiNfmfkMVCGuQN2l/+0WlLTluOjed/I+oyd2Pazd+sjDS45yID4aQGq1VVYrAyhNwya6VoZocyTyevxf3VlHRhDXtRrbq16R0MWddggQ4rURlVfOG2/O26aE28BizpEFzDVtn2dCqNXiNorjxFuU/B8Uy7NpH+f0o7Zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755667794; c=relaxed/simple;
	bh=hhcuKnmlfqGPlEFyPsX9WBC7CXZchMEu00C+7v8leN8=;
	h=To:Subject:From:Message-Id:Date; b=ZFjdejv3WVXg1iIA9gyCOmfs1BEN2ygRMw4sGct396Wy8K33BlUR2zUmDLpuXJRjGYJzOUnhmxZCF97HfwE/Jzo7RWBSpTPFyKfQhVSMCeDG7gPpPAbXIfzy17omqJzPvPnbxiXbHhrEkxiJ904yPbeNHtNQiOcPATk6mWX0jXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWkllRAb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWkllRAb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A16C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755667793;
	bh=hhcuKnmlfqGPlEFyPsX9WBC7CXZchMEu00C+7v8leN8=;
	h=To:Subject:From:Date:From;
	b=bWkllRAbSDErNuKtWgxd9KZ4gbBwSULS2E+6PFKP2KgoPhzSwy+7iTRecPQG25pEg
	 KwA2zAn9JRMqVZzSJ2urzYPn9P8qO8wmAA3VS+RIBsFomxb3wwF87RdlEfVWk+UGzj
	 E4BAHCd9V2MfCAYILF7OmUMpVQAHVGGHokRME9+ooPCbcZx+ffTvns2THd8tm4rx5v
	 zgUIZ9iNSmqusyF1OfOZ8JWh3pahHH8fM3qDmjpTpu04fxYqtTT4Bfv+ZFUm9sf2vR
	 SysmLyW1poig+DXwhtcdrUg6JTX6ZJy0fp2JRZdRLkW8we2OYapyBYKOJvyJFfoYUv
	 XNfI99AlfLrsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937DBCA0EF5
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175566779359.2009.3876007055410510842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4fb68f0c5a8c329cda21947b40a64e9361c1dabb62770335a1656279ab69089
Date: Wed, 20 Aug 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755667793
