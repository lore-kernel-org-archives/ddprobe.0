Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83CB2C8CE
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756963194; cv=none; b=GRWqJaFJ6DLv6fGDmFQAH1izjWT4APTuDLH4olhL61Q6DqNjS7YN924DTp2C6hzyBOcF82iBfcrrv/mhjqKkDIeZGUlOwzmLjQlSqbm0ZEha8GveuYs8sY9H7muivPQTaPnPKJkFdmBawMc+5De3VqPJV3+JwXhWWQivd9uZ0UI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756963194; c=relaxed/simple;
	bh=5epzlG+wEtzZlIwm1hWgOmq02Q0YE3WDPR0Yc3WUmSU=;
	h=To:Subject:From:Message-Id:Date; b=TAh7zBWCLt3G3bvdzmvbkDgpsEEF94Cnyxb6zLngIJoln8w/wRZiyzFBI0SRA8I3N1nulxkPjdG6hA3DXtq5BwuYOhMhPUPPM0BW+NYltldc+VUEfFmPwhgfoI+k/1vPLFGCPnLaRi15B1HApdEIRULUAgD5TnweYHfyqLvbQ7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k6wY2EM7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k6wY2EM7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE82C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756963193;
	bh=5epzlG+wEtzZlIwm1hWgOmq02Q0YE3WDPR0Yc3WUmSU=;
	h=To:Subject:From:Date:From;
	b=k6wY2EM7kDzWPxcFGl1hDlnxQ9shr6zyPT4bXXaKo3eSbz9xkXjmpg065/010v2WN
	 9AHIQeJTQy8+5dI4NOBWOlT+QTcr0ty5JTUHGyTHs1OddmTUqeeR41QC88DIz9dQKR
	 TFXSwJHXK5iwov6s0gP/W8R3Y5oGMlFyf5dpjAkdnb6QAkxZvK2yZq9kGUYk5fXBT8
	 ueLvJrG2//Iym3bE5ji1/vd+D/qMEqgw5CaCR/lM+iU/KloGR3ITm52LQpckCAf1Jb
	 MfGPrg98ZM4VF4xEULS5/CekgPIkmB1wmkSLyBD9gMLAU2WbAibyFTkceN3YhYpVMB
	 7y4t/5ZJifcjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED48CA1014
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175696319357.17343.3249696731825264883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2aaae85619f0c601b1ec9937c685de2e0c2a1a25ba5cb495422c5ffcc993176
Date: Thu, 04 Sep 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756963193
