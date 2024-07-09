Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2061B86E4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 18:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720550183; cv=none; b=uoGvgK0fFH3anE1+20SRs8cgMI3VTNTsYVsfJuqEsI5I2FJA7tGibEcc1y8rkgWuq/eHQt5rgyrHsrPYwzMP7cDsHmKqLMD0uXBPPTO0ldgbdgnuWht0lsHbHeHdmPNWFYFnygKw2tWmxyS0KgFLYR1PxjpBbwsvus+2L+RKgNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720550183; c=relaxed/simple;
	bh=4yWfhngi9SEAkOWtLdehm01Ipni/HvIoCiJa/N+r/YU=;
	h=To:Subject:From:Message-Id:Date; b=tdjAF6l626JfyIjVmqz1V1EOCQVbMnhItVRHrC44zjJJh+yDO8C4MQyBL/7Fe68LFfwlzlimkEef3+FIMURxu6ZYhJeUO+aPLgofmLvkp4VeaTG3+d2lMTBbvrUf4m2NksY859YwrmMa+5pnOAmR8V4EPrL2/FPTPP9WTN/gi8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vb5VDkgu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vb5VDkgu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD63FC3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 18:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720550182;
	bh=4yWfhngi9SEAkOWtLdehm01Ipni/HvIoCiJa/N+r/YU=;
	h=To:Subject:From:Date:From;
	b=Vb5VDkgu/KxUvzDJA7cWTiTmitBVKobxzW6YHb2Qfi+vSDcZdWk0oQXDE9BdGKFKm
	 /ALruMkn/ROLRi1cLAFthzyCGwBX477sIDkb0uMHc8o14m9iw4OLmGXeJusBJQyguv
	 T6Y6bxw544xlRnKUOjubQgIrfUriWcuZH6/EDIFhbgIGXBEm1gp2JyZuPREHJtUII2
	 f8a0x93i88yWvPNkCCaJLfuJW4rbz46FwAESrNXsG7+Z8rnIKJK+1fg46+GUi3m9WF
	 wkk4sOIp6TlS3E+vgGMo6J6iUbUbvoLXsh0DVmf4yS89BdJ1W1Fq7xqIqtlr4kY+m+
	 H5PsS3IiY5O5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD772C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 18:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172055018276.28701.2493338420654488443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa50a9a4883d1b93f7face4034e6dabb42621941d955e1d89569f009626b5b78
Date: Tue, 09 Jul 2024 18:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720550182
