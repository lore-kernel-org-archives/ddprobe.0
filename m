Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324328632C
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750954194; cv=none; b=MEe06TB3xsO40i1AbACXD/NnsHkN5MskK36QpmYmUDChdyEByIh1X85EIhEyEMyffgE7XrOUrT+GIsYlglt4rkS15MVJML0Yhb6cPIqeiri5WCL8aorO2AMnJtyHhFF3cvMJ6y0tlHUKuo4sDjRgErJDSeQ21oR1Nf3ghFS1VqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750954194; c=relaxed/simple;
	bh=B5dIimbzZazQT3zPbxKd1llgZPT6tUMlesTs0lFdGIw=;
	h=To:Subject:From:Message-Id:Date; b=pqeCawTLI1nL/nXt/eRgsFNyCx3QwfUm2zyCM2P7Q7MYIchiF1uCQq2PSq878SslWLWNNHFyp4gGgFofiAuTaQlFCirzLf3OvBaKvlanKm9ekHTVYosAReOeQaB/7Jr1aQZ6jWO1GWa3WAeiCt7TkHLq6UVfEPwAiuyO9dYS21U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8V/Kpe+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8V/Kpe+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3245C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750954193;
	bh=B5dIimbzZazQT3zPbxKd1llgZPT6tUMlesTs0lFdGIw=;
	h=To:Subject:From:Date:From;
	b=P8V/Kpe+K7dAKZJR+qKof7JdcCTO/xROX9HNf7M/BPz6b/tHfOpceCbrXWBGZ5V+7
	 dw0q5u/10lDNvF+D3GmyDcutZs24I1MfzdUMyMq3zKEK4+c0j2xQqMOJB0NSgNcG1h
	 FTYe7Op9fpKzcBKs2hfscVRZyOJ8TXWWIWjuX8Q4SXpm8NSq1fLGRBSRGwpTv9bNL7
	 jQAQLxXgt3HqDcyR0EOzKt/kw9voavQGaxc3oSmSo/6kAAefCCoBYhv954OGA/r5F8
	 G1wwQKTNX5J6Y66uyJp5loHerYyM5CF3WmCk8viDeJ1Hx5dKR8jPCCKoi9W2o6PAFq
	 DnafG95foADFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9030FC7EE31
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175095419358.26648.4583827326545398000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 128451f445090d4f5dc7ba53eb3d990213dc14e476bba3de4f422d7ec628c5cb
Date: Thu, 26 Jun 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750954193
