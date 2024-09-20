Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A4C3B182
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726809354; cv=none; b=WThE1V14uAtYArRH9r5KiOR0H6sETE4Eh4DELZ576sQEwsFfUSgRG24SAeaCBiOJ8eVo5o1YUbt+lpj+MELUDb5X9ohWw0IpCfaN9tLMdgJL/Xqy1O/fIQztlwLa8+WVF+f2XCfj3s/mfh/a1zwMhClXgCK/1L1vinEwb+djhzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726809354; c=relaxed/simple;
	bh=sKSihB7WH33JC6keGjJPDZmok4WPeQE3R6wgEMa/zQI=;
	h=To:Subject:From:Message-Id:Date; b=l/PCdMtXtBjNMbBLGLM6do4wv5aDstYD3Juw7fdJrD+chYpqAW3zqAf3/pRX1pLl99ofJb0KPu34NWAOxpvGYxvcxCnz1kaOQzPVLXABgeIBRc+9kL8/TQu3hngz67JrHXRuFftlTTNLnmL9Igh8vTXyogLwKC68hf4d0MXRHF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U0vFK2ze; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U0vFK2ze"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B47F0C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726809353;
	bh=sKSihB7WH33JC6keGjJPDZmok4WPeQE3R6wgEMa/zQI=;
	h=To:Subject:From:Date:From;
	b=U0vFK2zejsheuHzI4q9p42Vyvj1ACDNDlX5vNYMB+SxFzH+r8jVY+J1bAGtWrm78A
	 8nRcPgJiCUPfES41hUFhXzJcd7b5FJazwUrKmmAUq0uxqFIHqw5hoM8i6cixD1H7DJ
	 wbW5K1tPFV5VqDcTJiEOoy0jwIH7UG1Szztk3AU/PqoDxQ3pzib/JSN7BLROtc8S4k
	 tKkAmwM1NP+tmyKCzIb5pNQswZtEQeoa+gwM8TcSbtvm+tL+n1dlf2pk67Sugn7Jl7
	 EbOI2rmwkRnKSF2xZmT6tUweUmnCxcLT7sjNy11nYg5kaJhY5eqoAQUbax+v29eSuu
	 7kT9kMMnHA78Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A434CF58CC
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172680935360.31232.14051125200215769206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f8a95363761a41f71ff46c2c5a95a79e945683db5b0644163c5ed4a310012e4
Date: Fri, 20 Sep 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726809353
