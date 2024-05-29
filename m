Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAF215B562
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 18:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717006463; cv=none; b=XH+358pihONV9xOyGKAlDkKvARWuGEU6kkZ/RLdmf9Gnbr3U8xuZGyZbbjuHYGRWszDk0nwZh9tRuVRCoQfUbpFk9rvgqA4d71SFV47egVoj0bAKN45wJOe6k/DJiRJzk+ihN1yKs2ZBfGp8QDcyrr7L0B+YwZuY/CiPPb49X0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717006463; c=relaxed/simple;
	bh=rz4fOw/EUqn8Ff8FQ4ihnJwhEjycaNq9cr7jyaDo3pg=;
	h=To:Subject:From:Message-Id:Date; b=uGzaWPnXAd3PNuf+6uBFQfwtUNoHEtDPGa1zxJFdBNtdyHR0SvjMOYXjPnkkOACm58eDEYLLh/cjL3YaPO/vrKl210HSny84AY0XvXEPsWsQ4mhfPRB5+O9VDsmpI4IQJ6ZUgldVE1pyHxbdguuedU1fmtall7xTouB/k4KS0ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RPoyzea0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RPoyzea0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38DFC113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 18:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717006462;
	bh=rz4fOw/EUqn8Ff8FQ4ihnJwhEjycaNq9cr7jyaDo3pg=;
	h=To:Subject:From:Date:From;
	b=RPoyzea0jEr1y02z70NiA/WS/bX+ABnizHPxM9aWsHsIgLUOux+1depzOtVH7FqM+
	 hlhHN/s0NrbXTk8xJRLIKIVMQu8Ew2bfMoYQg6cM1kY7XU4LlSmQGaE8wKYeBwje7/
	 9SKfFlpfrCIibV+HFTkkqSCFIF0uxDV9XCs175uJti/+S79s1gOM+HVCS0A2qflBP6
	 JKST6LAI06t/Jv/L+5drIZb+m+aX/gNcM8dMi1Y0VTNWDUJLL5ICrHkRRTBfCFON/M
	 zJN6+pFcMVHt8eWowNJWmWOXocF6lrhYIwVt3xa291dj8r6tYa1hoM1WsR2Svt2FZs
	 6TZc2FxTuElrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C311FC25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 18:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171700646279.393.17119334568910124863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67fda1f9574762f863cbce00c1ceb97418daccb07715960f8f2aa1dc5a48c31b
Date: Wed, 29 May 2024 18:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717006462
