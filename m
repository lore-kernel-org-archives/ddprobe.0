Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278B2230D0E
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753443594; cv=none; b=tQ1EM+IwAlH4j/jpXaqqZ4AgHXAHh9k4292w1hf2+LB4LyvomJgJoEeUkavolFTnSwql0qAarXSYA1eaJU/qKi8J/Y3fEPniMvyPLSaGVl5htlg9OstvHQXyrNw/iNMARUNtBlLANoAGEVfvwIWIlx9OQxgGYfiWm9/37mKk8vA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753443594; c=relaxed/simple;
	bh=Nrpe/WQB3v01a8zpPuhECCMo8rtZgbBsO5r4JClXeP8=;
	h=To:Subject:From:Message-Id:Date; b=e9c6h94eYy7TVYNlbaHileTHWWS0BgNv5lXhjXbyPdZTdTL79jIBlAfwG69vqekRqrAIi3Vjinar4MTX+45UdI3N3P3VXErxtxeMkl2Scg/9+qDQU6EjDyqFz18RHFFUUNLGqO9X4swPCXRW3NLCxgt2V3uK329wtN6UcLLwpBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HHzgJlBv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HHzgJlBv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02E5C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753443593;
	bh=Nrpe/WQB3v01a8zpPuhECCMo8rtZgbBsO5r4JClXeP8=;
	h=To:Subject:From:Date:From;
	b=HHzgJlBvbuHS+PasELssuUBphn8I6DXiUaYz7QIY1k6jeUdncujnRzt0wfYLmOHlk
	 fCfH/lOMKmauCOxgfDumz87/6Ue++v92ZYWLMSQd2S8jwXxUwWhKIRnuwfN2kh/+QD
	 xOrNUMXSvnIY/aut3BPQglbKLq+a0bFWJ9qYDLP+RZ19JIOpc2ZZncX8iLIPs5fByR
	 1ok0hUYNa7XaHFTozH2EGl69JSh9akqD/3eKWRIpSImQVf0rIRD0zO7n6gnpgxX3wi
	 khOOTSil9TlhX1DQQCUvmDNt02XS7HTUiZVp7ns0aew5Q8aM+mzqHUFngMfTNsUu4I
	 S8DUqM8UIt1pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F09DC87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175344359357.5072.12296685835867772486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb58b952b481fe7d3278a9354638593c8d6551385c339cba0d07c0a9a7da5758
Date: Fri, 25 Jul 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753443593
