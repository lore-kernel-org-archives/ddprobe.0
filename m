Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3118242CB09
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 14:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783435114; cv=none; b=NycxcgWJyUtj3TGXElrowj/gu7v8pI0AtNwQZCrHYwXasxN73guz1vk4of1aZhnEXmSUAdmlaph2yby7VJX9u3tQWht+WmSkJBJrG5R/h/G5DCexiZRz2DVDDQz8D/m9rn2d5b3bAuDzaSKlzJA35Tgy5NXMTFzPDMV1U9Bhtv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783435114; c=relaxed/simple;
	bh=1sLyc3N62DCL7bnWswUVQKMr9WauXaNGy5LVDAOzgQ8=;
	h=To:Subject:From:Message-Id:Date; b=LnobrX8pyxnw5LMMpc/URqtTuXv+x8Bb1eseq5tm2JDau13nvlKHe6A2ZJiAPOJDdtBBWrO9cwSBpIMxDJ5m83g0bN3jIqwFCKLoi6d8+NSRFOhfvQlNiDiysC9gcm/Gm5aqRckpDRGBBiQPQ8jiHBZw5dPlkoeV6dSw7YFjG4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P5z64bf2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P5z64bf2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D55ECC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 14:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783435113;
	bh=1sLyc3N62DCL7bnWswUVQKMr9WauXaNGy5LVDAOzgQ8=;
	h=To:Subject:From:Date:From;
	b=P5z64bf2bbmAAvhR83/q0oMAh2qqOHg/H5lVpU31PX6YR28g5DfopPAD3F1H5C0sp
	 5b3hIxhxHDzC7eM4K02M3n3pY7zXyG5vOjkaz40Le66nSDVG9YgtYwbOWgVEce0UHy
	 R5UaXFcuapOXkEOqi82y+J3u+XzZyI934McqsdPLPxErpi8YWjR69kDmZpva/LFheh
	 Y1Q+VR2BkohQ8oapA82Dn+67FRAORhKMvmVGUymJX6MSA0/Q2GIPKkJSgN/n2c462h
	 Nb8FUogX5X2ON1Z5g7xHatB+cwr7Iol1ISfb3x6IEQIstERIpTCaKxEY3f5Z36PFRF
	 +VpW4tJ1DZdgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0DEC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 14:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178343511370.12101.9476862151163105378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa2209c12075498914e73bea5a1053f38af5565d20e7a43ae05b03528f096f78
Date: Tue, 07 Jul 2026 14:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783435113
