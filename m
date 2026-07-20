Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9DA2E7369
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 03:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784519314; cv=none; b=l0tUFUPbjsWo7IwmbA8CHrWom1FnsWS94Z3ny+4s2/zU9L0gKz0dRmzNKMcahpjhQpm8MC2lBYv0T7maKclCG5IIoN+EP+nQb4i6KB/0XWuWuuyxukzn0VSSxF0kUr9zY+0py5HlfGHWFceTykB5mhL28kMA1drAazllBYL59zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784519314; c=relaxed/simple;
	bh=GVZJkZFGSWkVD7YMG5j4WXVJo74gKYna+26XedsfOD4=;
	h=To:Subject:From:Message-Id:Date; b=c+YULJ5WsRqT9s+zzrlbNlgh9DVH+sp3Q3AzH/KftuuhBsrWbsoiCaLC+x/DlWHkM7ULedKsTqmKtYy2UK1gnKHlbij5Gh7bjN12Pa5wW8jPxOomDqFNI9rf6bx+suzgh7FsofR1gt/nn8JCVPUbtl9Brv4UqG2ILEcozbT/oDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ExsjU0xi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ExsjU0xi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA35C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 03:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784519313;
	bh=GVZJkZFGSWkVD7YMG5j4WXVJo74gKYna+26XedsfOD4=;
	h=To:Subject:From:Date:From;
	b=ExsjU0xiMtulNIzSdT4JtMw5xmWUxeWpxdjbym7HbeUanh1jko4ttlqpcFP0suVMf
	 bAD2qMHPk33m85shockKi2QbX9OMJXFuvhWZVaXdjCBumvzgnDElrgIZoFnQTW/07/
	 sq8VJRE4sWnr/H0B0zAYkFjSKq/yBWUZSh0XytTvHUVxebhvU05pAn3nf8TS7nbB6Q
	 R9bV2bB/v6NMGSfAbmfjXkZGGU36Mf0Qibr8s6LcSZDSueRdBYIGXxVTJ9w6L1AWoF
	 ThP1ynfKo+8vthF2bg0wAPyD+Yav7lT9NMrYiI62bknrtoqdh/xUW6ivlIhy6q1weV
	 S2Fz8STG08HkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE615C4451B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 03:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178451931368.7048.9523287829584968310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc0a712f641749dae6e27147caee5ce025f48b5a68300dd7d5fc5c5ab9c98983
Date: Mon, 20 Jul 2026 03:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784519313
