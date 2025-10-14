Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E1130F95B
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760430594; cv=none; b=VuVqqbCMLp5hh8dQTtkeDWtbiVJV578ObrC9qwT0iCayEQ9FZOYRJCFESJ/bFXu8sHkrQFYI0emZncrYclTEgCxCWXRKG4SovtvNpJ4BGrOtpbfLFsK0nG/xc1H+teiF/2nc7UZtk+QkR6j5qi9Mgl0soG0z6mzu5dhma8jnehU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760430594; c=relaxed/simple;
	bh=vkWGBxUzg5jB2Os5sw4cyZmDL0OYQrTxgF+nC8NFy70=;
	h=To:Subject:From:Message-Id:Date; b=dyiNOQZnna1T7KbEGE0ZcMbPPsE6AoTnCW2tuxd587Vfq43D4x5wgtmPEG33/zCfvOKcvTcx3ho679BE2nDbNEggsotNdzQWTTJ8bwmtW888rxtdT7tY558NIQVKLNsx7Kzte0y3z0ZI/Tv0ne5u+JJva/eLIPNdUfR+yTtgCH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cBZ2Aw9B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cBZ2Aw9B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69B2C4CEF9
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760430593;
	bh=vkWGBxUzg5jB2Os5sw4cyZmDL0OYQrTxgF+nC8NFy70=;
	h=To:Subject:From:Date:From;
	b=cBZ2Aw9BAPtH7rA1MPdR7fy1jF/uHFJqPa+eDW1fYFek/b48+Q9zwHggYzv8fT2FJ
	 +yETq4Q+9/JuSmtKWhkQzS6mpuV/Y29BA9TMcCmbCaWM7MxYzQdQtShMvHp1B6y5wK
	 OTTlO+46QMjMDKhOMpQ8Wk1RYZzTZlPOKk3V3u9jAGYn7xCbmRXaGTGk4L+FJ8hE9l
	 ws6ZiIyf8VPNx6E0f9VWyS2GSzb03q6v4tGmr6MR2GjXJ3/mgcD/vfsH+/OZXQH/Ji
	 N+4U2ZplecXb3fjI+9PEWMnwlZbIG5MGP3219V+xqYexMJglnvaNlqXtDx5HbtEWFi
	 PQVnptcnMNWKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE08CCD18E
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176043059358.27212.14216436511275471181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: babdffcf19bf4e8edfb093bb8944238379e75a2cb68b1e6489e3aeeb2a521b5d
Date: Tue, 14 Oct 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760430593
