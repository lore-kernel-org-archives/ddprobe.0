Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 671D3149C68
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 23:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716335003; cv=none; b=VFYB6cMydomcVAJxV9VD8iIN0GXEPBNfrALZCuC7qNDDnq20ZJNxRunGJgaMZdhGiN9v2rxTKMux/L6cpIq0wBAXKjt1wNWmvbnH2CoC0mBL2V83XXwmGyPfHMowNOMwmvEbI6dFKpNeVheUY0BaTCk8eEqaLeJ+Xt41QmJGq7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716335003; c=relaxed/simple;
	bh=3EjuuEpKfiV1KSTGm5UgkKJ/rcnSrB7eLsNo6zOiBgY=;
	h=To:Subject:From:Message-Id:Date; b=sTITt6PxUS47nJXPt0hYzdFTdmNLWc23NwgPJ+jYe+PUYmb9YZrcViaekVHoWoRQQz2nuElbYWm0EOSl0iBHVjvWVeFl09fUfW0R2/zH6FZ6q0XrNcAhHZ3HxSCvkW00FFybjZa6MFLLEL1nYGPKGokifsgKsFkRXvQ3JD8T7bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OdMSV54n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OdMSV54n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7A35C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 23:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716335002;
	bh=3EjuuEpKfiV1KSTGm5UgkKJ/rcnSrB7eLsNo6zOiBgY=;
	h=To:Subject:From:Date:From;
	b=OdMSV54ni7/IoSpr8ExOliYrRlQF3ubPW7PMUCZmFqUO2SEEkmFvlIIzKkkAeiiCE
	 mGXef3ys3j5Vd7wqhS4At4/zUKn7WRitXu+97oQIssY/ittt9Js3WzNtJ3LYGUegxO
	 f95rnObcIF2OGg6q5ctXsRA1xVrqHWKpHw2v479uAESabgWFRGEvCQUumrC3A+cmse
	 YXPkY1dS4dl5+ODbT+r9oc6DAkW+TaS3THQRH5i3dqd0GbNCLBXCiH6V1kVOcxByWu
	 ZJZHhJr5EZBAnmXhOWmDglZHRKiMDG0h6NWOkhV7D8RaM1985szTZfLk2+UlkJjDh1
	 D08Ctsb4Nz1Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D65CBC25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 23:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171633500281.11794.4326217473295502743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31a2a7adb54053996cc1dcfb961be0ea379c3bfd348f2085342dcc727a21d306
Date: Tue, 21 May 2024 23:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716335002
