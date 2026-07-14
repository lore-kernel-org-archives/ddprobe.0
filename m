Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C140847D952
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 14:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784038114; cv=none; b=HeXmBhtZtlVmnYLRCsQEn77xPXn4CbwiOmSVo/mh9uxHEDY5HzSsSU596pYfSwZMwFw3odaQxifdnhduLpZ3LUDtvduE34YoxzN0D4oKmCaa0fuu9g22CHq1gyc7ptW0fdytP0ZiDP9ZurP5sQtvaHc0w1fGLsyN/4r7zRyENsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784038114; c=relaxed/simple;
	bh=xxDRBUH2ydbfgGuxnM77PApMAOXeGvuYAChwoO3b7YY=;
	h=To:Subject:From:Message-Id:Date; b=BgCJYUfbBTWh3g/lFXdWR62H4FVHVKfc7jB2yuR2gS1IUhrPfLqt5mPhIKrcovdUjooMA2+yA/vNeQo9ZIczG9kpSGXxg1DrF+wy0/dF48+qYCmzF4c9vUuQQox8nHJpcpuY7lC1G+u+pEqmnIdtxyP2d3SbbKFCHX82XVHZSQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UQZZt34o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UQZZt34o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12F9C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 14:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784038113;
	bh=xxDRBUH2ydbfgGuxnM77PApMAOXeGvuYAChwoO3b7YY=;
	h=To:Subject:From:Date:From;
	b=UQZZt34oSxCJuJgN9upONI2up+Gt2dldAKzYC6JXVi5cYtwaYC8lZ2asoaLWdYCo3
	 t26Cb1rh9Y5xSIVeJyvFmftP8E9ZGek3ZZF6C2C1vRupAYXkrqx7tzy3uwe/m1x8hI
	 pcTTU1LA6Yi9mgqfEOyMrDsBOg0HLeU+DcCfKuiO3Fr+AC2NPqe+hVI1GTKYl1+0SJ
	 YvO/ynOEKWo2WroOiSX35PK9u6HqiWggPVxQOeotFoUn4D18+p4HDC8cMLHfS21rtt
	 zmGHKAHm6Q7ORnSnOlGt4eX/PCE/7SRqRqLwhc2VCt3tyTNhbSZovAmV33T6Ogts72
	 f7T/7cEzle5Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACDBC44508
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 14:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178403811369.18712.4138205809016754890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f7278618371280c0a5d2d0031b24826fd8e90efc498cdbb94a8319089337c38
Date: Tue, 14 Jul 2026 14:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784038113
