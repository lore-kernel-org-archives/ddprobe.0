Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C49284A5B
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 02:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718937083; cv=none; b=ee++gn5gp1d1j+iv8uLpI63FCkP/xVFPls0lM8CzvadfgCWds38DkBewUZWs3CkFF1hyqJfFp3klPCXEPrQ6YFpIH6mPFl2b6YrSgGLaoN+QdS4zcjMpGGXEuzU0lDCLLNbGSe+to+BC8yBINM4pFyof98Wn+5Ulflrn3Q/4J/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718937083; c=relaxed/simple;
	bh=DI7ROis1tE+8OlpZRfTkzW8l+Fy26v7REsONxW1Tm+k=;
	h=To:Subject:From:Message-Id:Date; b=mrcvilPN/nMK3RTLDL6aa9kIzByfRhwnmlVncBJKq8XCOTMxhIch883+8FczlIMK5EtdCcN/WXJWtheAul3AskZygvjt+r9zG5L9rlt4C8qIteWPuNOBPwZC4ZKp3+GZQD5RRyytCn3zbmW/DugZxPCMNr7VwM6Rp/2XZR/06zE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hN4gNSui; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hN4gNSui"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD924C4AF13
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 02:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718937082;
	bh=DI7ROis1tE+8OlpZRfTkzW8l+Fy26v7REsONxW1Tm+k=;
	h=To:Subject:From:Date:From;
	b=hN4gNSuivsnKWM31qKxuaQerPvKoUhU/Pb/Tc4jtByW3Zdg2o/i3dBqEvXMVrQ1J1
	 6PJqTjPqyZ44wrZY1p2qyFnS+6hNQrU5JoBaNfrMCCiiZY19CynEDppFVK+0oz2tdE
	 2mas7UV0q6NASvg2HfE3KwWCJbIQQN49z9Y2AmShK8Gswpr4E8IzcwIlOWuhW4DjsF
	 x0Z9nhEli2KwyhMpPVzYuaHwojimUvgvWtPyjL8LXryjcQhaDgaPt4dXz9j63w6wns
	 Vm0DO8zCMQG1/pQYWckMAcIDwX1ebfwx0N2hWXlmwfyyMN7tjp2KE/aCLEN1XITEFM
	 WEF6RdBbt/S2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB0CEC2BA18
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 02:31:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171893708281.10608.5913588616408643074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ff8dd88af39620fd11430dab4341604eb05fb101ff88bd2e0c224b44fbb166d
Date: Fri, 21 Jun 2024 02:31:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718937082
