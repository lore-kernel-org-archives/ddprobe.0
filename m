Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142BD7DA66
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 06:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776062254; cv=none; b=GwRPBTm1Zhg9zT7OPkwyx2Zm7I96ifTPjMp/RrjWszUSXNoEjzeDKOolYaG+50ZsRNzXvRAGZ1Z0oqFwr0usU0x9+GKks48AJVvGGGva/CpxAt4O5499YgzKn54XaMMGSbFIy0zWXcclvxHG2OIAuORLqwFku4VR+PSiUV2eP5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776062254; c=relaxed/simple;
	bh=Q+ThWvYyF25tEM3D2AtYQaAJzsaNmw/iv8HQ+62pDjE=;
	h=To:Subject:From:Message-Id:Date; b=YiRivHuniSzYZLuiGbT4FDeQ0iMRTWc3BQ5BYEUoMAcD3MUbkvT5GhKByFJel0derACskl072Ztfi1vLiCblz4VIzmCEkTNtoyM3rX8oAb5pKIwicfVFhpz/3IyQc+bYADCeSEmtO/WXnbvyIKxjitwWj+YamDVki4ejAFlGuR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bhZ234UV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bhZ234UV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A66C116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 06:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776062253;
	bh=Q+ThWvYyF25tEM3D2AtYQaAJzsaNmw/iv8HQ+62pDjE=;
	h=To:Subject:From:Date:From;
	b=bhZ234UV4OTeKZbRUfyHpv2kDtYmR8RxWelkPmcXoFAOeU8NC63LDusSmXi9vJAn+
	 4/9MlJ+KiPCMa+BPmI/wyNm9SzfcU29YDxmXzqj+JOj26funVXuBIGQU5hCs0UdQfi
	 PsUhDXtq+uODm+t674Xl71gV5CBQiQbE7FfkPP3uqqfrNJPetrjGwgkkEocHZ49veb
	 n54tZPcVS12+W8tiuVN5NU7A/Y46C18oRJau5Dgli5zdxjJ31jEUXB3CH5irg3xDLt
	 QYfRzt6tJDEDwyWDLk48zMeFzpwPgWsU2/gUAIoJDX5Bg1LQGLhP9AduXBXIPBpzor
	 2wcjg4Ra8Byaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF374EBFD02
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 06:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177606225368.16815.14516170215946420660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cc3af5773f6b327110555471a9b38eb60ed1ca91bf088fe05642a5f6a22a292
Date: Mon, 13 Apr 2026 06:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776062253
