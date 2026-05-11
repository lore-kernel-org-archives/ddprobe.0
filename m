Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF2D25F7A9
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 07:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778483434; cv=none; b=YAUoWa1Mfj9n0HqT+P5mGtsT3sBcdBHKlfq9BnztIS5+jN2DC4xlnP+xlVST4H0u0cAxdFcU4yaS3ZZltwWjqbMzcGznYN58rkyvryvTUHY5t+KE1GXK1X2gM5gVihb1Hal6jqAqOX78g4q4YaVxEQ/9Gk6SRpH1mcUwVCIM0/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778483434; c=relaxed/simple;
	bh=Xf/rcsazaBwpuYSSO5xQLjOFkrd9hSUics5RFzo2jUQ=;
	h=To:Subject:From:Message-Id:Date; b=ne1TlhL7ETnWRd61gCvpTMOfnaTuOF4D7j7/KTFoTq2rmu8tWKhsTZIg9xFhh17+vhaJT3IWCVyQS85fgcQKj/Tz+zdk3LSEUuOgFs91ezjeComxiBm/6rnTMWMMh+10b5rMdjCwN3Jw94Urq+FXR0XheLaEW1BxNAJlu3e8wlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LkZir6O6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LkZir6O6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B79F0C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778483433;
	bh=Xf/rcsazaBwpuYSSO5xQLjOFkrd9hSUics5RFzo2jUQ=;
	h=To:Subject:From:Date:From;
	b=LkZir6O6nQ3F/jzrNMGQO3cdMZsah/qLz8n08VCfBBzIXHHuA/W3x4lbyoAPmuXGm
	 CamczT98o3qowO7qMRpAAKAd6mFxNJCMpqGWnnNqEW2HhNGmIzc9NbxvaMVdT0pjxg
	 AammW/rk+gfDuo25DAFpAD9xExK6eFpRllDTh9AXMTq4S8awljEK1LAa1mJes6XIKF
	 LJtsa4ht8EUMLrP8neJhVJoNIBeRegPZL6szkMQd5tLCfjpBdzejodGLAsSTMD0JId
	 rfdjVYOsS4S/r0QrMUiovqE6b5082IQYj0QfAQeSGH/WCe1g/n2Rt0w/nqwGoCY8RU
	 UPUZeAWXmaaBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99EDCD37AC
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177848343368.14557.11026418882281252840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1d4a4e0c211f58606721c969d3047af8461cad4d9b5439dfd68bcba8d53cd87
Date: Mon, 11 May 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778483433
