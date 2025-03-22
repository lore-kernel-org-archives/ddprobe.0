Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452732E339B
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742619594; cv=none; b=m3EzDi8udJX9FcMXkVw8gMfEVnOSUhphJINCCNlynse6O122wrjVJzXm/H8rz9aq7LA2oMuLzhYdOYmrQ2cui1x6hdyZnKobic1PE8It0i1w7lCedKO9Vu6esA35LMvMs+f0OoPmyUzZ7s1L1t0pLN6VJDtUXeiMRJq7DCm3Hec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742619594; c=relaxed/simple;
	bh=98uZXoRt1tOT6QjG848j6/RmYt67KZFXK7d0Bm683Vc=;
	h=To:Subject:From:Message-Id:Date; b=MgCPFqhlqjzs/fzfHRenCg9fpwrZv0O8HszdQue0wR81ilQTpIgdMUWMjK6yL6ptfIZpiODZmvKDsQUr49scKuMNRumEc78oK1CTUNC20OcOI0BJqGnSA7/uJTwNCr0QcCldzlKCCTGo3ArhYVClXMcZz8pPglhLq1ljBptsFdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQ3x6yV/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQ3x6yV/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE539C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742619593;
	bh=98uZXoRt1tOT6QjG848j6/RmYt67KZFXK7d0Bm683Vc=;
	h=To:Subject:From:Date:From;
	b=JQ3x6yV/WzklDvEYFuvAaumGQT0YXSMzoK/Np0423LOYeZ8raayWUHdlZeiA3f7rR
	 Ngi5YvZPaG/Yi0mmMB5efo3GIcytsgbRbhMmgm7CCvYIg0AxiNiS2bu+RQFaIvWlp1
	 uk5wAlBpW9SNHUMFdTg0nHcmPqe1IiHO6s0Dx/QzKeXti1E0EW1arktr+c7ygugyOy
	 oHuO4KGDpyn4xxd697py+IQF9QMqDDLXSjsXJMM97mMVdCFMIFyv2UIBpthmG83jxj
	 aW+YsI2jx5jOtjtKMclEn8WxPPCS+AqHoO2Coaws1tDeYU0lsbBpyrzpLTjUsOnqGQ
	 DT1dP2ar7fnpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98AAAC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174261959358.9727.10639841633834953879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5295855bcfd4e9576e7214b86db498db64f1758519e77990aa341a299b6610e2
Date: Sat, 22 Mar 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742619593
