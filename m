Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331E43103E1
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746484194; cv=none; b=HxiBsMloYpZpXERfOQdaVe2sXtKDEf5mc7EdMl3pSJBLF/Jb5BoqkqKKlZwHh2JcwigJSWIHv+wxghuTGmTioH3lEH+xsD0Jxpe61zbRmpbaim5rdqnFr3wbqFOk6GLoGkM/YJHNOC/bp81bFMzUNnP0XET/fHThLutEIRdmeVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746484194; c=relaxed/simple;
	bh=hayfbAa0BOKcLWvve5QPcdm1b00+mPWdFQDf73L60SY=;
	h=To:Subject:From:Message-Id:Date; b=nmjZGVmXtyzNjCzE0BAlcBDKYbAO5MotMupRPi1GqPzDVbCvUebTKW6L9XwHOADbWK45T+gJmPSyWsXjT/0vYuOKukx/8A2NGsSS23nzyM49d++3g2SZGGxLUU6JHJ1zc1TiKAgxN7iXbjSh8G1eQBqtnOyuKpNqnAZgxCM+D30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bPJsFieN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bPJsFieN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01B8C4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746484193;
	bh=hayfbAa0BOKcLWvve5QPcdm1b00+mPWdFQDf73L60SY=;
	h=To:Subject:From:Date:From;
	b=bPJsFieNCS1jQsyPYUxLDF+9G0t/MUCvnFbMSZmqD+/F3WihfuFd4s2f8D74y89gU
	 /CjVQKttv32h33gdWfZx8YPnls38SpevIO7ybrTYzoGjXzyFS1wPdEFF6rhgwfal/H
	 zK4ihboTY509Pp6rYU4hRVNoqU6zRpuqeJU5b38kG12ynNE4cX4YOHgqz7xHVKrv8I
	 ZYqcBdAFWCsdepvqxVQG/yUL5uLFyd4ni/xG05yYECjiNx3uilp0Fn+BS1BVMB72BA
	 luXkvdk+xShNPoXMS0r1fhJZrqUHajqQF2MlCJYEtaEtro207KcfCF8vpOQYdY70S4
	 d3ixfZGgF78LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B1AC3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174648419358.20537.5644706898157797561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca030b45966ace5eedc40af8905283f6b6b704756bea8f34d5c7113985e27bba
Date: Mon, 05 May 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746484193
