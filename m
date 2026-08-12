Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474D2449B09
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786556434; cv=none; b=SWH43aCYEH3oQvCLeA49gWIkX4OxUTWLd2cJACfSIrv3bPqQJErYI9BlD54PxyTWA7qLfuEq83vZj1rj5/rq10fGQI7K0B5nm7hlv8e6GuBQ1CVLhEaePe6nRIVvqJYDTh9cuC59ghy5F1OQ5oiLvsAxFIG9BUjjFD9rmrVDNss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786556434; c=relaxed/simple;
	bh=lXPKMOJKdgWAHof6QP2jOBgspW5j/Nf9YYymCQ6tZNU=;
	h=To:Subject:From:Message-Id:Date; b=iaRmqD/Q9iWC2TLOZ08Xxauo4pZtTUC186EI/CyNmCPHYtDrPEKu+0zT51io0y5ihGcewIMYpIvnkSk0kS0b6PLIBiaPDj43+IjQnjdkR6rBbzQPuCwYRdOjGhQxSgo8GiSfAkAYOVYEmHPaZTT26ua5d5DAhDmUCShanNIx+C8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8ouCNIy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8ouCNIy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE351C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786556433;
	bh=lXPKMOJKdgWAHof6QP2jOBgspW5j/Nf9YYymCQ6tZNU=;
	h=To:Subject:From:Date:From;
	b=c8ouCNIymJWdPQFE8cyQJSWduLvUY302MBlWa27qvthOm/GPRAuvJSCL/U2zdyXvX
	 +88R6RxdlHwSPoTWVJMKS+FNTHFAAFQl0W+KnvM8+Zw2qhWarwdZTb3COuvySOy/RM
	 wJQQp4gesaWfuDZFV7eI0yJfgRSE+20ehRFTl6Pa6DCw4GrpmCrc+29X1tnRDqMN0X
	 Y7mwfgBo5qvJi/xrNsdULFxUPOI1NgJEB2gs9Ati6xjm45Erm90XuX4uPsN7kjDIxU
	 QEsIS8JJkdtud5zGAL9enqkZhFR3GrsfWUnJF8AWsnA58wBK2HW8Bp9/BtzfABaXU6
	 SJLmZPSeKEtFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB3AC5B572
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178655643369.24949.5623944763060557113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3252e238c8469d65d60c8055eeb6b5179db4ba5253f5922fce4f39320499a61e
Date: Wed, 12 Aug 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786556433
