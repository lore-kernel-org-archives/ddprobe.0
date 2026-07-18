Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406F9344DB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 07:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784361514; cv=none; b=KrJNKLU6KSFBUAdvTjyzjclLKsVAJkY9Az5+cYLzW6O2ysJ4TWwLwPr7O9tkitj/iHbiCGlBTCujtYlzIMS3YFHsiOB65MKVVLZ6YzhvKJwmWtOIJq4PT4r4lVNR/LVHiDlVUT5F4HTXOkbIrjOPQuObOU1evqagVkBsjMe+oFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784361514; c=relaxed/simple;
	bh=8IPJMTssZfZr/eY3MoBQIITxTg5a9GHGSTZFz+w+Qbc=;
	h=To:Subject:From:Message-Id:Date; b=cAG0fU0drEwtOQ/eZF6l81cdGmPj1dobRJbm6La0EvqV9DOuiPoDdKg0l1j8sYQpIztED6IK4zkUahO4QPFoTGh/fb5X7bPSWxsNrpC5vGUuzBSvwKwYejx3hi4MFw8VRMCXrf7XuEEOnRUDx8uqgxLM3xXCDcbO6soZ2MC00gA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GuDZ2ogx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GuDZ2ogx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C69EFC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 07:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784361513;
	bh=8IPJMTssZfZr/eY3MoBQIITxTg5a9GHGSTZFz+w+Qbc=;
	h=To:Subject:From:Date:From;
	b=GuDZ2ogx4/DGWobXpNveoEnUSoF0HpM4f0vyY+OP/g1Ooh7klk5ohxXAJvgsGbCXu
	 /gike+ECuI5IPpf9bC3HpqVdRyoMPkqIgT4YU+NV/ydjcVT49qplSrxFgjPXK/30WD
	 ufNQJrEILrRO2WcXdBKPBweKqzhpjrwwdET/uSib4tYXyVtam1jzaMYct41evW+OQh
	 UINVhAP0AWODtdhPzyGIH4e0uMX/8I/WMNYD3ZUCpOqLPML7DZtNAi1RubC/x5652K
	 ENm4gSATW1gjPu7ey4uz+Pb0NL7Dd0kkWO0Er1JDOaEcanXXqhy12/7puWRgZqGion
	 Ma/XNAsz9jNSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD9DC4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 07:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178436151368.11447.4474591551734280006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43b642bf61114e46455632dc07107a04f9630e3c86a423942f40449574a5439b
Date: Sat, 18 Jul 2026 07:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784361513
