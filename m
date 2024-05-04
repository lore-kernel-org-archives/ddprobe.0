Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C66381AF
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 14:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714834343; cv=none; b=iNweYk+/y3Xb3QnlfWBbmoPI5WeC58Ccf53DOtu6dXYyhcBkavdE7V/YSm9j6gd3PWfdiD//YRg/YMei8Vx/huYWzeXAoUwU+okwq8d+/BS9C4IJ61xkOGeAxNypiEvlzO/ymewydr91JWyLQe42YzD3PrEQraKksLXj5fXUK58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714834343; c=relaxed/simple;
	bh=GjV9ExRvBc4bCfxwgR7kUXndulcOKKJE7rM+WZjlZX0=;
	h=To:Subject:From:Message-Id:Date; b=BcyM2IEXA68SuYObDIU6hWNkduFSqlltDc5O6hQlZfpnZ75AEupGimUJNkD+6nKBZN0IOzM/L96R09NvALpJ2k6zH3nsN7rGTzsy5uc7amer3cI4mqu1971gQxRoHSAqbyEtoN8OIM4ag5eg0og1npdmUM/wCGRCay2lJECNntQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2GBDPqk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2GBDPqk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E89C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 14:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714834342;
	bh=GjV9ExRvBc4bCfxwgR7kUXndulcOKKJE7rM+WZjlZX0=;
	h=To:Subject:From:Date:From;
	b=s2GBDPqkE0RnN02AZ/zM6mtyzLPQPTEbt6FwTs2kalOipc3iZnnUTNHYFOS1E87iA
	 wK+JZ2Oo5fw7hQWngl2qpjnlru3heuB2tDw7zTJ0meFPqzIKaINZSbmcZHlwJZy4Bv
	 N68Fc0WrzCi/3PdDkhnfZOV9tIw4I1G5m8FTMBSlNdL6dMOkuXPHuaW8inRhwPc/gT
	 PL9sW2AIFID1iXGGEMCzbAyRHf13uXTn/KyV+2fNLFINq5VXHLjptZZCATJPG21FRF
	 QJ2BO3nvxCpH+X7ctRnuIF5ft8CDSJNgYgQuZ54jlZzCEE1A36HkkHLTzT9+NISp/J
	 RdKDizgbpuzug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C87F6C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 14:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171483434278.8497.5286300122495461993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25d68da43615a0f7421290acedac10793ad6648239ba1b52ed541172f4a8b02f
Date: Sat, 04 May 2024 14:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714834342
