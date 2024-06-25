Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0021BC2F
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 01:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719280403; cv=none; b=M4Fr+V6VRawZCVFyrSN72x0Q3Uk+Q0qWb1kDKQtj1KExa1zSRL60kXpUJGpkCYyPPFFLX0dad1kX5+K+x75A8HA+rSjKDuzdCdz6N8trojoF/CpkhGgtjWcsbmpsyX2SBH5Ke/MIO5CMqdL8UUC9oCl2LLqiRKA4SvAi5nu8QLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719280403; c=relaxed/simple;
	bh=BtzFCXVLrRTa3GMIaVm0oCRG+I/l5bco0yV+qlqJD7g=;
	h=To:Subject:From:Message-Id:Date; b=ivEv+pGk/yN7kcDTAZ+qJGzuVKI2WFjflvfThuY8oQQ9ss8s4FUTfCeTOkzB8FOrrFarQgtvS3D6JQz1q1ZzSJbbka0N3FNST7CE1/jY8mzFVbesW2XphzIPXBI2trde28zfM5TPPdZCWWcIjCtkudcoxPfmj6f+0iyHjt+4QOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ogj6TctJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ogj6TctJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF504C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 01:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719280402;
	bh=BtzFCXVLrRTa3GMIaVm0oCRG+I/l5bco0yV+qlqJD7g=;
	h=To:Subject:From:Date:From;
	b=ogj6TctJZ/RR8g2NwRStMhqGdJwNpfCnS35WQ3YQqXAjIVveFbUZMIiIXUpmB+23/
	 6/Xnt2tGo9tin6fVx0Hb1pG+YPGKA7Cfbiso3C+zPlXJShwyUyASV8MSGI4+9KX6CS
	 RoXu37Q41J+88aEQWzoncj/YYxxxhHPn4nVWK42MZtH/vWbJ1UzZo1lvA8ph8JvoxT
	 GYKxlDubyXy/TPgrflHEbx17sirUy7upwB/5hgnCMum+8ulTr/RaMsXHvbl0+GFSCs
	 BqYuMmARdyTGz4Ide5L+YND/ruyWRuwC1BWMqj1vx+qGknQav9T4ZXKfXFUROXy3X6
	 UKrXT7YuXbnuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C86EBC2BD09
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 01:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171928040281.6991.10332072836606926520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d2f7c64f6186111dbd2c2d9d981a7ab9cbb4736dadf18c8b4a4d434ca382030
Date: Tue, 25 Jun 2024 01:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719280402
