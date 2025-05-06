Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2616527876C
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746529194; cv=none; b=LFmCqNBNGZuan2nJVpyGTFdijELoU1y3zqPFNvmOz7kqU2FMFFT74yPSTeTIu7y2r6hlHUbw/YDKi1LfP/3+APhRHcZobWs+DzpAC//0QvfWtCQFXC7GukTD8GhMkNT3jl3Jhafn5EN2s7x+qbbnSZ8k45f8OiPJQqe2ELFWGeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746529194; c=relaxed/simple;
	bh=cWamv1AJSEopQ5rc/7Eqej8fpcN3KmMWa7saUyFg478=;
	h=To:Subject:From:Message-Id:Date; b=KxmTArshbG1gKvJ19+v6bsRsgAT9Z7o3axmNn332srRUx9yFAaJUpxMblyvrveiNfvYwNAhJvU/gu2SdUSAfiIBV5FLtV8+drUSOuKyhT4hVYhXusMzY0KCcFBNpeZET3QsHG3IDYIn3uhgeMav5Sw2FBaTpeTzsEQa2AG9cRSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOMgW4b+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOMgW4b+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0865C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746529193;
	bh=cWamv1AJSEopQ5rc/7Eqej8fpcN3KmMWa7saUyFg478=;
	h=To:Subject:From:Date:From;
	b=jOMgW4b+UdVyTPaWE+Kt27fcN5uA8rejcj5Y2TIBK4Eers+fiVOtqb9zx0xqbLxw+
	 +Jb0ksGwEavKynYsXZkjLMlztTfHv57xWGLLYhuh0KPnWKPQ4kHTTECx5L18QRnxll
	 /l0u15iXcW8bjILAkPln4yvk9E7Su5+bJPgWapEjhiY//017KhMp6JTzSXnr7XcjDq
	 hHqghf9ad1Li+HXe3QBwBVteYKs2BmjGuCPj4aqU26Z/K3HH2SapLf7edi4M4Ei3AP
	 ckLDI4/Loosdrrfso1OUh/oqOkWtGuCpi5ke0Avx06WMjm74rgg6WuN3YNgqN7f5HL
	 NnCcMzyHMp+IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1D9C3ABBF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174652919357.4793.11411077332518358015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74a17db4e20272abf9afbd82121d7d10e2ec4a5b47c06e80e0fe48bdb70666dd
Date: Tue, 06 May 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746529193
