Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06BA41802AB
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 08:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736239555; cv=none; b=EzLACtQhLdIAWppiEODnjv2cooW1+94FT2YU63vqobyOHfCnaw1SeQneK1QxvjHTDgiCcj07SS48lGm68nBrG2tyqn19OWXk29GrB70DFTrSDUaJJTfqxIg4kTxzN0pY8dAGI8PkBy/iBkEWIBpq1f/pV06zPMI4HBX3ePAACbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736239555; c=relaxed/simple;
	bh=A0xIMhqUF/bDMATIZOwDURislrugd4ysYqQ4uGe0/Eg=;
	h=To:Subject:From:Message-Id:Date; b=QzP2OQ3QNY+NB0COvQ00fENsO2qXNF4H7M0TI573dalL4MB8TaFPDhQ/lzJnpMbuRLvLu7Te7fPCZwjElSR8D35+1N9ITKEUafXuaYsW7XjT8n6XQyENTy4KaRVMcITjeINXXsClVRMOOrvLo2WWY2EMi8M6tK+y70qPy+93SwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFbbqzbB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFbbqzbB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCBECC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736239553;
	bh=A0xIMhqUF/bDMATIZOwDURislrugd4ysYqQ4uGe0/Eg=;
	h=To:Subject:From:Date:From;
	b=VFbbqzbBs6GXuWV07f6VjsNwNN0oJP85oEVDZEuqr6FLPSjIaePmXyYxo7J2Yx00W
	 B+LVN9vdff8GYL0WsRbOvwp4cyR9suqqlH1HyyCz+LcglGbEZapvurVMEiKB9foYbD
	 H88r+RcRx4TBJ9vKhLdLhJyJxcVJMYNoZ92+ngAhN09/9czrJO3vx5JSX0b70lfWlR
	 ohlAqEVZk3eiILY8sGTYer00ZncAlDWFVu9ywJcrdph7zYLahchVtm57EH4IuFd7hU
	 lNpO2svQMGbsrKN1FjEeJCjI6CLGTVZgusSIbwip2ShTZ92QbNUcOVqU8Ob10GB93G
	 uAtWHOIZyHgzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD51E77198
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173623955364.5032.14417885700447430732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcd03d88ce9f10e5665d0dc751e5c395274b6ce532bc9a61844141c20fd5b6fa
Date: Tue, 07 Jan 2025 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736239553
