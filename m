Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFC53AC1C
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757101794; cv=none; b=SLG/lt/DBOvNRS+MxfIuP+39E1bnL6Xnsid+Y29fz8Rc7dHpd9EA9iRYAVkid/hs1QScGyybnElieZ3TWcfdg1/WTtEOw0AxK+nhzVcr4U4i2s6ti/CrWzjgPa85PLVLCV+U7BV7tPcDJVfybKPjEMKM2EMk2paCp0jriShCJ9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757101794; c=relaxed/simple;
	bh=pKVZjfFzP94r/XH6vS2ZJjUPtY3WqyEny3+LUnIjGxg=;
	h=To:Subject:From:Message-Id:Date; b=EfxmMvkR+aTzirqUwXiA7Ykh1KFzLtWBvmki+fZCr2cU+ucJKzalT7cPTdDLtqaEJ1BSU3sV8j9ZjG+x9oWmj/WVq0127e8v/VkwggHfLVk6ZeO7h4X66Dv3+Ef0CUmxGTtGj18/P5t9Kj85sxSY9UNG0IZMb3Bl4NFCTyXTVas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivBaGqID; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivBaGqID"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EADC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757101793;
	bh=pKVZjfFzP94r/XH6vS2ZJjUPtY3WqyEny3+LUnIjGxg=;
	h=To:Subject:From:Date:From;
	b=ivBaGqIDEn61TdnLwf245emq3y0vo//gstKGjMKr2TmIhLUPNXWSMKuwvbnuPvYUX
	 BkjdoJnCkdHxtwS6Q3b55+3lJ4dhhaKdRnkxgVOO9M2hOE0pL0xUptpiJhbJAn9bEa
	 4c3Yf5Na6aLvTHMuAVUewOf6peid48MORSRqkXz76CKXBefS7kL+c0wE2KI2mhYeLO
	 aHebfDa6WwHD9lBRgqMczwCKXjNX/qaT1d+MTGLtcBWstaop5lDbzLgy3t1rdIPY+z
	 EA6My2PGVxDNCqfz1mr55qeqwSWnBtBm0ecmP0323PWlcvwjHBpw4pLxZ0AGQmqncX
	 mBZCZb/oEMNQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD7FCA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175710179358.23709.996750432342820931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fcba37d143d034481c7c117f9aff15a771a96425324fec8fffe03e9bb89ab6f
Date: Fri, 05 Sep 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757101793
