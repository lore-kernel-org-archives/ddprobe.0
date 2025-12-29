Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D398488
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766967234; cv=none; b=JHoHk8MhUufhpPr4wv9xpPWB+LOwstk5P9F+KXeeRr+nH+ZCyaxo7D0lZ8alrmXj05PcrTLgpJuMq7EtjPtuSofM0UPHsNIl3AYCZfDwET1Z5RGbKNbOg07fBhK2HCzwcO0vJr+PLYVLaG6xXI5NFWIye1jYOI+e1jCJ86Tcacw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766967234; c=relaxed/simple;
	bh=Ds1J6f35RKfrU0CDCeGLx88osxZ94yydInVB8qogOnY=;
	h=To:Subject:From:Message-Id:Date; b=D1EJ+hJH35/FmiC+wcPaMVcua3nnpHTWBwHOAn7od0SVUv3qUhhxhiZpRr9WnHbxP4Zye0+xphNKhl9WP1quwA9Jx4ABuemKq0z+Ug742tXpti8rzgAPechkuKLWTE5eTCUIj4msOkQGMzHxv1rw04j+8w8BDbihtOR9hr8koOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BSNk/ij+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BSNk/ij+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B175CC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766967233;
	bh=Ds1J6f35RKfrU0CDCeGLx88osxZ94yydInVB8qogOnY=;
	h=To:Subject:From:Date:From;
	b=BSNk/ij+RocLe5d8QYmxLbZO/t4T6Ui8YZnjJwFvnON5T1oaZTqJq0YbS122j6n86
	 QQ87Gvzn/I/aAG2f8+lqJTGIQOVa7XVfsTf78E+zCO8z9EC9sk8IQ9cjEWMOTgR5ah
	 aih2qajdiC+wO4TshgytHH/cPHchncGZ/ehRYmVJLctHgh0qpZ3OKs72IVmD71IsIQ
	 INCPvu9LaQGFR2NMg9d7CMipuq/ecx3P5BC1q2k9JvPTmGxHloG7G136+h2iSIGZHO
	 wRSobrzYaH2A65lHhZgLNZXAJHInLWuafrgWphepHTfufECIODSY5LnicBYdFkTLBy
	 AQlirEVJ3Os8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FEFD3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176696723359.3549.403791586800300148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9feaa6893472a57f601488df10d5e94359f3bf0409c842e951d047942c6800d
Date: Mon, 29 Dec 2025 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766967233
