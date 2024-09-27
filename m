Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4AB82481
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727454354; cv=none; b=FHA0NnWjcc3XYD5pCBG1vMaszW8z5QZE3SyNDVt9IK6wb8RADEyQbwPpSO7WTTI/gd2BfkqUpZVAhsdoCytorTPup+GwKga8DDGcp9+3bc4UOq1DKXvDemJr3wwL3TgpCItsEzDwzfzyRwi7asHgzrfp7/0FfRnyY3EnGCzRLhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727454354; c=relaxed/simple;
	bh=1GXNxLkSF/fXCm4V9qulHLOqPS5jOUUEBycS7g8ONxc=;
	h=To:Subject:From:Message-Id:Date; b=epHml/SNnWF22cP1ywkO6NbwMo/tYNZ9regByM1yEpbiNVdVJZmYwQTm2Vo17DpVxTG2EZ+O5cugKQysRhpkHFkMdScuV3q/j+vga3Iu9B2DCa2GtMSxFBMhm4VxwkWo6nSulZMYbGVTZhx0EcMjPSzCPC4w8+Tb5TC1tWy7x3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/F7M06M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/F7M06M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEFFC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727454353;
	bh=1GXNxLkSF/fXCm4V9qulHLOqPS5jOUUEBycS7g8ONxc=;
	h=To:Subject:From:Date:From;
	b=D/F7M06M48IArMeiSn/RdOoJ+CGrcarQp6ejgEronJA6KtYa1W76RUtUqaKa2f+CM
	 lLkKz3+tJ7ahFyD7zZljm61FXDLRID4pvAze8dW+EmKHz2TxtpEODon2AZL479MLui
	 s3c3Vv5YwdTMElZZFrmIAFLyxho+8tvBzgOWSF9XOhqQ/z8HvVHh/QwJUgQLsjGZr0
	 5w3c5lUDjyxttiQvztKB9aesnU3OosT9LJPX2bjDgVjwPHtijuwq4TTgETFCPwx6On
	 dwBNYBBDGZ9++p/EiqWNd9dzu4PlpW089FmLx9/Pwi44eJqkPzvUgI8x+K9eDC4NMk
	 UfUdsQP2i+ltA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D572CDD1CE
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172745435360.4729.8562952863073676446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b30966816c1f028d9979ec0bbb78040d124a6b32258eca69da6faee5c687500
Date: Fri, 27 Sep 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727454353
