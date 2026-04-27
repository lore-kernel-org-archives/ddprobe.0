Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D9852F2917
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 20:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777323454; cv=none; b=OTojAwUUTH/+AtgiC2z/Dlwpq5w3eOcgEYsmyqjCVpS13zvJPuDuiILhsjcJrHgQ5N8uwLcNHwY83nej1nh3GzLQeUEGy+PtErW0FuYcPwO9fn5vy7hCitgn0bvGpl/dn7mP3P2e4WXPAjftdavzurwNqf5+XLHtR5g7VGhYhSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777323454; c=relaxed/simple;
	bh=8Uoe6OclCbcdB60X2ltzU24fmZ7AIma5bgDVSRrBjnE=;
	h=To:Subject:From:Message-Id:Date; b=VrPBroK6COT5bQQTPBu7vrN8cMDEB4qxUHXsJjeKXIeVsx+R7mxeDJ70AyC0dxQ3QEe+fqOD9JPAH5goajyWqLXsg0sojkM2T4O3RAqWos5Ql++jxD61M/DP4aIGBQP0pjXtqPMoiunmlIbghQShVWz3nKfdJH10sDJJPsggbO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kda1iVVn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kda1iVVn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E21C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 20:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777323453;
	bh=8Uoe6OclCbcdB60X2ltzU24fmZ7AIma5bgDVSRrBjnE=;
	h=To:Subject:From:Date:From;
	b=kda1iVVnv89RiHZ/LvSsb66kvomN+BI08a+ipUaL4tYpzk/69GPVUQ2IOFlGUpt9A
	 UMIMC6ifEUFkPdamURndWUpBExn0EJmWQThfgbx24Ny7x3N6u8vM9tAEB8hf+nozgS
	 DxaPWuztWBWgAqPwoMsZ9GrV0pz4QEDXhtdG+Q9GpJifkSOTYgmnDGs6wbFPUTjyWX
	 j/xEeBJ7F50IWYPoQvsQt6htu7dFbNM+x+12GbQ6mhplR6vkH0ZeaRz510IkP3h6qQ
	 ARL0Pml/zQxNXrK7tIef4ftPa+ZzciVORVN5DIZzN+KwvOWF4KcoXFdXdisprs7n7H
	 CM12sDMyLXofw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94FDFF8864
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 20:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177732345368.19829.16785710566549630518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f7aef54c960fa8debf4f359886847bdcdfff0d2ce032f0ff01ca7296d4a2773
Date: Mon, 27 Apr 2026 20:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777323453
