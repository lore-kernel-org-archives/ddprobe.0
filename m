Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436C4230278
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750789194; cv=none; b=RbGXlBinbFBxv7gsuky4s7/aHBxz7Re1hwXaFYodOgiDUj5EP/NwvDPffEdaFUlzJ/Ecj19ZoZGxM2zhEJ29GXWUZ9MLdHB/0ETFXa9T06QUOze6D7QUfpiWBhZmTe3jbFEbu+jPmUAuvR8DCh74Fvh++8amSykCpe4NmuICFHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750789194; c=relaxed/simple;
	bh=WZsxQVtPFRjcGAVm9/vG7PRVwNYa51c5ZfZ1dGQ6Fe0=;
	h=To:Subject:From:Message-Id:Date; b=b67+8zlff11/kz8Pi/jvdr2nnMOvj3CjuJ67bZW8PdL/38/Bv4sr+Y0CS+vFl01NpX7iE3wyi74wFWumUHRQp1fXW7plg3Rut5ptiiFOWKf4RZZVoLQ6sx2Z+mnDq3FM5bq+aERop0fFbkFfF8AkZ8WH/zNPMO8dU1sIwwFnPvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FXa1s91i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FXa1s91i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2586C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750789193;
	bh=WZsxQVtPFRjcGAVm9/vG7PRVwNYa51c5ZfZ1dGQ6Fe0=;
	h=To:Subject:From:Date:From;
	b=FXa1s91iJFmveJFPkmCFpQdUJ9REm/34LgoHhKHXzAqZp9/py5SHwRT78o3kpKVO6
	 YzYa9e0AbcsqlwYJDEdx5Bn0QZlDlbKw7duK+dhjmkvsrnKQRyafILDRSvJTdynJNm
	 V/9y0CQwlUkr25hNRIOsmbkkH0YZ1Gw/JvIxcH09UPTk7tGyVDeJAezM/+/rUrGZaS
	 ZLFKeWaH3ezAeS05Nh8iDmFcRn1/V8kN2kZcZcXOqUR6g/sCQ1FYfkmx8UhyprXVmh
	 db6sWz6l3kOJ3RLN6sQjmO7vu/c8wYSolVfWcS2bnBuAmSQiMMXCXxSXJcGsX71QJF
	 J3HyrrKitxNtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F69BC77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175078919357.25851.17645597483017665409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95bba59004f195498bbbc4e35077052c7303e4bdc3c63621ab91653476897099
Date: Tue, 24 Jun 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750789193
