Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8A21BDCF
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742656794; cv=none; b=H5FSH5gVxsQQ1WU2/nysNi19CIcuvC1PLKKEz+EibpmGIKFiO4uP0ZfjR4AfOBrm+9z3FHrahjoa9ps8a5Zs3IT97S3ttz7cIXXQBioFcLeluRV1k5r6u5QZS3EBb4mNijDLT3fnKMShv0VOFQRwstahefT+lQzTeJnztugwfOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742656794; c=relaxed/simple;
	bh=EkrhyjSgavEhNIfuEbd6klZ5YljxgzyNmgADHsghXHQ=;
	h=To:Subject:From:Message-Id:Date; b=LR+85ZeC8tWA7Y8pR7U1pqSgd7rIXkU4G4CHPnWwTEOxKmNHRUPzgTJ+u68Y+dkAZBCBlHio1GpzfkDZgDL6QZH+z+eva9d1LmvWF57bu3+PI5rJAFoWWjGpOKqg+jxAwvelHgLNXZi9s+pDftHJyIF3wRtPE7tX2cilL21nEss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rmk9JM03; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rmk9JM03"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CC7C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742656793;
	bh=EkrhyjSgavEhNIfuEbd6klZ5YljxgzyNmgADHsghXHQ=;
	h=To:Subject:From:Date:From;
	b=rmk9JM03dJUBbuETGQXLtR1mkB9gbsJ939Os4c8Vn61DDr09HcVwttm7bQKVhJ22X
	 U0shF1Y/GU/MB1ytuDySpNGuog1cQetyzOSksCeq52qfFHq3UWFIL+1o3/Zy58WA29
	 IveGHFDscdgqOrnmT9d7cU00keN4RqDgDL5JYn+pemDYbvUY4UQrUwQREOXBc6RAN9
	 FD21SNHZ7D1grInVLPaMtWoYw1ePTODP14Ys6qeySwWEMFvyeFFVTRFmBl2B1kQZWO
	 mFVbiRiwVpWU1F+T7r977rqMxZSxnUe4uzVE0VZTgPoyi2XgUTk4dc31cUL1ela8Uf
	 7NaU1Ug2vK72w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A7AC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174265679360.15207.15398742756576279824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d8b96755bdcc02ac8a647ea09b9ce5e0fc8c914af5efd2703c44053b2cd3f0d
Date: Sat, 22 Mar 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742656793
