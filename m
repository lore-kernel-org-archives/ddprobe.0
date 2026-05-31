Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1132F9C37
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 08:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780215274; cv=none; b=HQ/fX9W8gEEqbzBY6QTzuLdLJ6uAqtmV0HoKpW1KVxi+ELiG6zY87uuw+bxJfMzU4dOR0LNyI877xmG3QcRYi3BVbtYhxeUgm+v4gS8oHIpp5hH6HkdWwOuvRLeMZhGNBPEJlFhLvodV87JvyHEqB/Em6rKAlwTfpweSkRi8uo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780215274; c=relaxed/simple;
	bh=2DuErqWKlOx8Vl2LZLPpO4/yrpKcRZJHgFLblJJtLeY=;
	h=To:Subject:From:Message-Id:Date; b=ieoT1o4a657zNuCCmwHC4Iw7NxexMohb4Irk+WPS0uNt5/QsapUaroXdGDcURbH9GbxPkmH3+BRqfyC03D/+Z0NzcD2Z9ujYUrPFfWAn7SYmKL9xoATN8Dp/SnBl+rH8qcu59jcNeSChFhuP6fk2m6vBq44tu4UpOvjr49oNxW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4Tfdmbs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4Tfdmbs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1021C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 08:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780215273;
	bh=2DuErqWKlOx8Vl2LZLPpO4/yrpKcRZJHgFLblJJtLeY=;
	h=To:Subject:From:Date:From;
	b=u4TfdmbsGaT4OCo0ujRk0pRRrXrmTSx+Ke5/YfvsurisQVsg3Yycn/c7NSj4L6pM+
	 XYaALi0fiUk/G5rWhWsL3QkABXbOoWJQG0fVwA5IeGnfx40e/AaXQkfjzxLzX92ciC
	 qpCaFDCYnWlx5lHQ4sz2l/AvlnGLi1FpEBxfiob4SDHXM+GLdZpN9VRctS6Bf0LZji
	 l12yJjdoYHgJ0X5/xUXeQhC4/03WZD9mTi+R+nWn0OPDKqDrL8bkN1F7rJ2AmV9OOM
	 JLgg1xff9g4cheHiO4bT7RBVTVmPy84TFp2wFsRN7lgMU0oTFwz+vgNuLiOIqurwjg
	 U5TH1O72TbOeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88B9CD6E55
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 08:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178021527368.17107.250030939730812002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96f51829df8dc5d63a2f46bd0b5614bbcf8631720c532052b822ec141621bfb4
Date: Sun, 31 May 2026 08:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780215273
