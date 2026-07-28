Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D78275AFD
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785237034; cv=none; b=Fl/uqUNCxDZPzoBJ7Lc+vH56tOZReU1bqhkHgeUEa9Ms9icnDpoYXsFb4OMmB3lSsRWMQbuHgq7hYBvjx3gkVzWqzGSt3GozguReV/5SfQ7OevQQrXejfGTq+u35Zu0dzcgqA6LKjGuOm+OqdE/bVe+dwOBvEAYVCvcjsXmYt9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785237034; c=relaxed/simple;
	bh=Pw6YZ4s2nLGsOtXJ8eg3gTqwWHsGxuZHBosW/VCkBWo=;
	h=To:Subject:From:Message-Id:Date; b=D4I2+0PQPOcrt3B3U9y0vklUi18SXaLX1zNOcziMgFxVxqJQYZQsaqLDRtXKH309EXnev0AQahSLml11zAGruVnEsSbdc+l4rURLC0d7jtFfYS3Hn17yNNkkC/F9Onka+vKrRvCkn7OrXKYGG1uOLXM2s0xVEWACH+B/5pdiKu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PHFPyzs8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PHFPyzs8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB689C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785237033;
	bh=Pw6YZ4s2nLGsOtXJ8eg3gTqwWHsGxuZHBosW/VCkBWo=;
	h=To:Subject:From:Date:From;
	b=PHFPyzs85bC8/yK03N54szOUYmv+MTeW0OdpQsM+ILXKNIHmDkNuGpfI/j8Ajd422
	 zRkauB76zSpNZvHEF+xgw3STlyqJSYa70dSZzuVS01NiR0J42tcSDZmhTqqHs3RX9N
	 u9cf3i+L2cLm5pZXWRJC/EPgRvNI5gyk5baMHduTVafddpiVQuOKh9qZprzSnYcd3X
	 HsgOuZmPL6Qpt7B0Wb+tLqHJtg6znQcHA8cXQyum1VcP4oi3gCU62gmoEb0nZDrPpZ
	 wJ+uA4z2SBMUtnDeI74mYZmf89xrN6QSa+Ke4NwRf2ckl3voVGSGofh2A7kY5LM2Tx
	 m5LSZXXPpEfHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4884C531F9
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178523703372.14990.12656730932680557547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bf4dab5519e74a71c7110dc0c83875d7c5c1d98a3ac4667181b9e541dae166b
Date: Tue, 28 Jul 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785237033
