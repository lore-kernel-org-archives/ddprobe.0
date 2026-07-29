Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49FD23BFAF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785354034; cv=none; b=peG8efZ+EPZr/nqDoiLwPwdRKsZT9YnIabxBrcD4DsBpxJpf6/mdv+oh7VJPfbfo1aFMRBA/DqiHUUzWQUOyY2ObtmO4Ys/EH3HqxB1BL6zdcHZNudOZNhaF5ECZYp1A+8KyD7GS2ugB6HdV/ixtcuxLuDDYWhfLy5kzYGKsPVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785354034; c=relaxed/simple;
	bh=1xizhPtgd7juk8pUN2ih2vv/am6uB/Vf+5wxMgSBkxs=;
	h=To:Subject:From:Message-Id:Date; b=f9A2jZO06dFjEJHUMDbMMnVimchYjS5CQ6mIb9wsf036gV+zDnj4KkrknTes7KQttkVe9TjFOhdWzSbbfHpghfK2gnHQExONnT9dYruoEDhmYKf9qCfg6JIdNJc9OSBlxVx+pgKz/eBrGfnKX8nF8OXzfQ0ftYvmHKWW1ffay2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F+KXSGvZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F+KXSGvZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA504C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785354033;
	bh=1xizhPtgd7juk8pUN2ih2vv/am6uB/Vf+5wxMgSBkxs=;
	h=To:Subject:From:Date:From;
	b=F+KXSGvZrafRCN5Ij8g+KmfSgOzREoV6l0pFWfA1Hkht6Iyfjd+t5UpF7M9rI7tXZ
	 GyG1qOHuo8dei7cvpLYSIOUmIfabap6c84cGR+Fc7A7OjsszOeQ2vd1M5dYBeM5PDf
	 zmpzCc+YGEBo/+LQYvBnklt8OWs5PD7EOKjPm2zUhGu7Jh+H8dPQGvqAf9KKIAlW9M
	 /O9+us9e/horlBLta7c0GELelxP97oYiboM62jvlFozAF0LSLwFvKgM+GhcPIpFmTV
	 +AHxjshO//fVmH1kfhrqKlR0yW+vTBpo6F/+WHEyTG2Lpd/K5NnkuxBB/TZ0Q+MiSJ
	 kyA5/qatGDFfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B51C7C53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178535403373.21536.7797879088725887246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d318b6cebe39beb175dcb282946b62a3977391f77e395d6e59037ccdc69209b
Date: Wed, 29 Jul 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785354033
