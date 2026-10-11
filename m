Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 954B32D47F1
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791757834; cv=none; b=V+JjwPk84Ti7REYzMHPkn4GDzeQ0LX29ktg9ljYarVPJw7sPZoOjBXmJreCPyBaulIrUcw3hdg6yFJ0Z8QqQI7dmT85bkwE5//KP971Nzf2TJZ05CYe8osHHwiEtO6Hk1ITnbRguvHYaMraxvM43GfwKwFI4X8soe3W6brsmkTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791757834; c=relaxed/simple;
	bh=D4JlaYjV57u/olBYDhVGzdS+ECPLkJfpyJFQKuPLEX4=;
	h=To:Subject:From:Message-Id:Date; b=j0R/tpZEik+PIvP1igvpMTH2hPS9zp96yWXF7AdxXF3OrlNEZ2wLA74Vp0veLwT8ZDyiDBQnx+wG8t2QWuOQyIMO+V8cWrdoDnPzPdXUQS9H8cghKMoTYbBhpsIjnSAuG4dOc5tpz+47yazklOtIIK+b16Mm0ruV14fEgU9hnmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ctXl5pnE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ctXl5pnE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF16C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791757833;
	bh=D4JlaYjV57u/olBYDhVGzdS+ECPLkJfpyJFQKuPLEX4=;
	h=To:Subject:From:Date:From;
	b=ctXl5pnEVks5SgkNpUrnX2JE71sEfxXoQNZ4plwDCMCqVMUj+OshXpJy6drt/LIhz
	 80j/ssbxSJ1YZs1yqsbGCZtNyYgDt9DPj7qYSgryDP/1K8n/W86+duWD7RvBtBZi+v
	 XKDkzP5dqGUY8q96IBJj/iL1Eqhs2Vpb0iUgkIIwGmjuiJI2GXkQcIHfIKlN7jDVOE
	 H5y3veK1Xh80lYkGNMGz3VYIJtWuCoT+Y4wUxMotxroMjgtka//U9wIvXTf7U4tZGn
	 ZutxiheClFJDnUm9EMbqx0LPyoQ+LEmAFT4Ilcs7acdbjSVK+/3K4yEt4JmLg5lKI5
	 aGzeLW+hFVNUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4B9CA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179175783369.18197.5154605552381542049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c67a592f0c196fa37472d7704673377a41adb6b6688ec687c54acf3a9c740f62
Date: Sun, 11 Oct 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791757833
