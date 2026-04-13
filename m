Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A9730C359
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 17:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776100654; cv=none; b=mcnz2N5fvs+CZ1i2O5Rz6UzoHJZMKEM0vbjjNYWAa8uCVyvALZZDgvCLYqqcMY/v9H4vqZnQohyVkCVANTWyTeE5FE/f1/PE5rtcxjlm1tGMX33X6Pjw6CbHP2YVuHvcwtWpuCJfQLNXwa+oxxaRSf108iynDLPqXzkGZiuZoHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776100654; c=relaxed/simple;
	bh=eG8AMZ1OEHMtkOSVnkGXfafcf8/lX7Jh62Qc+MVzqko=;
	h=To:Subject:From:Message-Id:Date; b=ZbtrrkyWsEtCyvc2WC1M5Bje54VAK6rDzaMhMoIueu/KfGfvaiVjq+iM38cWVCj+zy27WHboJSIZ0lUvgajLT4OEMdMhZGbq7TDvdalRRN5lyFhmQfB4k+STQw8p5XD+ViBB6bjaOmCjD2KOfq8/gN2UDdlDaYPlrV09NjUz3+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=otDXhT2E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="otDXhT2E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8DD5C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 17:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776100653;
	bh=eG8AMZ1OEHMtkOSVnkGXfafcf8/lX7Jh62Qc+MVzqko=;
	h=To:Subject:From:Date:From;
	b=otDXhT2E8fU5jcV1HZA54abVFCYLXRg3gejZQb604mcUMAseaaipn9O4l5j+Zo1SI
	 11Paw9vridCrVGLIiDw3cma+gxKBg0tQ9jRWRh6CbE+Rn4SGt4KOx4ztQuGLOchbNJ
	 1VMxW/DpZkf1EeAwA1AsRNPovDLaQBb6qPTiA7OA6lcxnrhom1wOEWR7HFcw0359Ax
	 HaM5Qm2stHaF4owGvBJuZDcBKGqdod0PW86zjfta6/p6Lu9yuYgXQgyGJsi6t9T/g0
	 b68Y++QYp9qsVfM4k6bpXZ1UZDM8NIzhSrZcpYIxmhix6fPSZZK27prFbvGAJJYvbo
	 AU/MB7/lrS2jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF77F34C6F
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 17:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177610065369.27067.13619954340894859884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a99b554a7205e1dc37d8467a327c6ef81591fb9573d2e10c54470990f1deae6
Date: Mon, 13 Apr 2026 17:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776100653
