Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3AA1CDFCA
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 01:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765417374; cv=none; b=doH/EPgNA3LlQ8T/wD3VGb0AlAaVPoI4qP14mNzCfzO/bbLWxC5TNbEs43/qPfu6Syn0TBtAUHQDH09V2vq9I719uMQ93CsSUrK0bLRTypRvEz4qIa6MXFVA9WV7sUMJI9pAq8rN1w67AE22jh3Gb4cUv3zSYBfCplzjZirY5R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765417374; c=relaxed/simple;
	bh=HD3wRf31bS/rkg9KxFtptDZcvlPhx7h+SCofTufWosw=;
	h=To:Subject:From:Message-Id:Date; b=JBqPC5MqP2uVAonc+thG/JNviK7LiifqUaDdTwz+T4yURXHfYwKCBIiZwX1Xu+X8M/1QInzmlYbuPed93ap/QM0hl1htq9PwPCFzfwlXMRPH5kVO4iM8QvYEFY9d+Nq51g5NU4BfmbruMYEBZJf24yATjvcwgBpAOfzZd4MLQBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZYTXAqSI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZYTXAqSI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6672C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 01:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765417373;
	bh=HD3wRf31bS/rkg9KxFtptDZcvlPhx7h+SCofTufWosw=;
	h=To:Subject:From:Date:From;
	b=ZYTXAqSI0uVQqt0W3Xi19VaPRgJVw6Vf+lJjRIFR7JKKwByqBWe5tK14ISJT+h6mZ
	 mGrBkoqTGqCYWeCXddqTPOAvp648LxmID0MeNowV55fqhZJ+5apKM2mwv0G6HZ2Bof
	 rMRN+VoPQTg+oLF4eqVfmToW3mEnL02KHdMFpEOvxuWcoJik2IXocSLewXLixzGP3R
	 t6fA/fF7i2TptP9qltjtutG94xUl/suTu9mvDxDALarlNLpx2rOQkXDknOge7HoUmm
	 zld4dj8pV4QaYYZTC8rHGfr4BxiWAc6i0rsxDqAEdOQhQRu7BjrnHoWAzhdXG6gOFf
	 JwCxtpxB322tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92910D3E784
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 01:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176541737358.22548.4331633911387017628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afeaad1fa77f1aa260e5b6034d1b679e5c2f1b5c251ad8863ba8c7ca265e94e3
Date: Thu, 11 Dec 2025 01:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765417373
