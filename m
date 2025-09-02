Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2349D2045AD
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756793994; cv=none; b=eXKb0y78Z0rTPQrVO4DoCYMBnSIBtP6XC8aszj+Tm1ZqZ5nyGekyhwKFqKTNk6PG4I1mr4zjxlSzPwZSTtrpkzFaFxHLOtqaQtZRUdmvD2FMW/Vmb8gsd+0sNuiUGQ1bkM2DaVOAtqqMb/vUSAsEKWgp5rad/mbRMS+926nvVeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756793994; c=relaxed/simple;
	bh=ul7Z+DntKr+bbN+xaGwsSZhbdpvIYM3Kdsjjl2tXqos=;
	h=To:Subject:From:Message-Id:Date; b=Q+vmA4P4EO1pV557nhrGG/Fsb2cqEds+KZgsli5VS96xcXnyge4l2dTLMTRfaue1VwiChvlzxZ+CLNCT8OdVpVmWdlg5JBzWFvCr3FFpNB44FG/wcHNYAkbNhbO+CUCC3rdBGUEhHsUkWGJF00g5YTjpfGpdKkJPL3vAfLicor8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LtUNomOY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LtUNomOY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A585EC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756793993;
	bh=ul7Z+DntKr+bbN+xaGwsSZhbdpvIYM3Kdsjjl2tXqos=;
	h=To:Subject:From:Date:From;
	b=LtUNomOYpHXiAC5Z91T12hocdx+hql/4UFMcvY/KUx4pwK+Cq5XZd26UiZMt/eTBl
	 IscaYDeJUuGf/til0GCfnOdhqovWV0RCfujX3D1tlimNGm0MXVLYj3MkgIbhEItQE/
	 JvXlY9W6DwNHYIDz9UdSrMMqqJy+9BIxBNWSpe8vMT2I7lQuoc+uQMK/tPluRYXJnV
	 DHsts62TWBP/e9MnetSdiSBJnllZ/K8ULuIZeGlRNcexK9WQfCun52YaXc5f6K74jD
	 6p1Tf0eshONDFUzS1W0ZVfpd6udnI6RHZPpXshZVOvbJ1M3IBDF/peQqHkh4QXZJG/
	 L7x4nlozPOJ+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ED3CA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175679399357.2104.2179848678624214739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df90f86b9f8c9e32de320920709b58b3559d9ec15e4f4df2d4fd7019f4c8e48d
Date: Tue, 02 Sep 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756793993
