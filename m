Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37024292B2E
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 22:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779921754; cv=none; b=S20hXopTxUMGzFg+Y21x01Wwhm5wjdsQLzGEUA/KzBrkSVxk1bbQNdxXNM+dVys0EYc6OvS4wAtf4SeAPGx5x+OAtp40O9EIK+hQEPz2SJudRffiIxT9GQ3OghaDHHbM+Gmm9+dYZtoae4kTGk2jjtkgrNR19JMA6EA2hKyUUDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779921754; c=relaxed/simple;
	bh=nczKbN6GAl0NrhiH2bgZPvxoak32DofFosP9+Sru0nM=;
	h=To:Subject:From:Message-Id:Date; b=n5usutQ4jxRqKNXtXVRZf7sCFBejFDBL524zWu7eohrciB278zpSYgGjfxGb2kguev4/MAHLlgZtQtuDo8l7jskle+TOBsfGggGd8SlW+yqQr5gzYbCbOXPjwJBDpMpTMfUgpVJvMng0R61MEpCRd9kaZVa24pdbX+jgcoe6+LM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZW/ITYmM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZW/ITYmM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD18FC19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 22:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779921753;
	bh=nczKbN6GAl0NrhiH2bgZPvxoak32DofFosP9+Sru0nM=;
	h=To:Subject:From:Date:From;
	b=ZW/ITYmMAr1jgIzjeMfNT79TEyPH/ncAAj5OhzfOwelj63A+H/Mb37m8kWCn1ry71
	 JyA91zhOXxiwcRjAJySZHImL9HCf75EkpIokUYU8ssNE8hbwnfkOUaNX9//H5JfYbH
	 n6rrcpkeP6qKB54P64oV9CEALINOrnQmqyPjob9k4qhvIjXIiP2MQhIRub4C/5KOXr
	 v+D/tyX+/9pKpQEl6jtKvqEhCAsjIsxM9J4/Py7qbdg93+5aryGgsdYWz1WRqTfWd2
	 rhkjaOgaD2egIGc/i83H32JWNdWpzap2f7+Ez+dYB88XP96GlP5n6Yl+O8uVetGEBz
	 WVxADPSB18Mbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B37A5CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 22:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177992175372.23606.770405844095593731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a453d513fe454d73f9ebf17d110e1e49e0f01417a3ce2fa2d7be83d876ed8a47
Date: Wed, 27 May 2026 22:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779921753
