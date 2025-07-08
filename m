Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E58239E84
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752019194; cv=none; b=lP9fmlf3sFWcGLPmGulUcjFCwZTjKYY33hXhyhYMNtv1oFAxddFtlUM+HFaEzSu8dvns4Tw7cOp5I7CloYpPH72ra3RuBhX8hGZouWYLiMeCP0oQRHG8+uVH8dfPqqdsmxNjx9fddte0pgKprVSpnmOPjquDnL8LvDZUjA4biTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752019194; c=relaxed/simple;
	bh=6SYJYVT5Xv2G717STh2zIXoC48Hf9ZWyi5qnXza4iPM=;
	h=To:Subject:From:Message-Id:Date; b=KfPiFsJYXCe/UzV6o0o3nJa/xh6GPOUHhMQa5CqE5KzRoBN/YQDFJgFzG6rTKzPbQRyfXTK7jxlHCL1tLNz9m2c5olRD3QFJjPySnkF/V/s5Fp2+UzTGVwuAihbZ/GHGpjsJYH7mKtpP26oMOaTtbKMFl51kg//nuna1WB9Q3ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZDxWOpE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZDxWOpE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E63C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752019193;
	bh=6SYJYVT5Xv2G717STh2zIXoC48Hf9ZWyi5qnXza4iPM=;
	h=To:Subject:From:Date:From;
	b=aZDxWOpER9YGs8a2M10x/SZYz1Dj1Po+T+nnZUYbESLXueKJ5t1HZrypuzFObuPbQ
	 +Q6RnCl38fJvsDox95Rw2XN6ce+jMB3bn5V5ATAXabCOeQsVi+jrFWaGIWS4y+UpsH
	 pI5It5SXexvxRrOkMrwqcSNr27qlrVQGYa4lLWBc2ixt0oksFSIi7iriBaVSxZojc/
	 jJzLizToaBCEdJ5YI0pf3jkYjkUMuspsWT8tMB/RjDfJh6SleHi3dsn1rUPDouTR+U
	 GFwjxm4+0L4zomy6OGQ5MVwltmWXqj/T4aubbDe0+bfcmwdco1VG07rGtm0//p73XR
	 i3O28l1ohm2OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965FEC83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175201919358.20395.12439749978493658152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aefcb0a75dc6cc485b71ea3e21723567c656af1456b58ad101b9a9530efa509
Date: Tue, 08 Jul 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752019193
