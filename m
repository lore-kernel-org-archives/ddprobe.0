Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEB021AACC
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721960754; cv=none; b=Z+9EDRUDPffWvatd9vll1xn3i8XDLjmISelxXM7r/XPMpvP7e9dAhINi7yTJXy7Ot1kitm2ZVKu4hcy/nLY2Oxrz67inw0YHWCfmUkW04VV6aSq2OGd3dYhpmJlQ5DiL1KpA5Mh+l125kuAXPQWMYY4RMT8lRx8Ybr7uulO2ix8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721960754; c=relaxed/simple;
	bh=mzJdXlosFQv24wkbuz6tJUrRFj0fiTIut9BDBee5Q6I=;
	h=To:Subject:From:Message-Id:Date; b=XTnxeqQARb7VU8Mmxe1XP8YI/fBIdGIV7VkkbCtSIL61fdup99O/oJQWMiI9gGhuvKq24cQ++vLbgV80pyfbtot0wc/rmYpF9nbLz6VOrd34icTN6+Yk+gGpQQ9xBed0iJjsCCFf63+jQU6b6vAg5m+VlUsZv8wlOLqbwxofmjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qPyjODFl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qPyjODFl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0960C4AF07
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721960753;
	bh=mzJdXlosFQv24wkbuz6tJUrRFj0fiTIut9BDBee5Q6I=;
	h=To:Subject:From:Date:From;
	b=qPyjODFlK/qALTFad0ObcUqPhrC7E9egyqcdSoGkp1WUN+kcC1Z1JIZAGLDTt6lWs
	 Qu6M5WflRoDrE3mQ3fP5UNfW47ZHS496ux3Mn3lVDwPHmvhPheN0lnfy6BS+I87ZSx
	 E3XuogjgvhU/kd1wPReyB/fujIasJeCiDq1fEVsaL4Z1iiqWJMjpG3CcGW9YCx+v/c
	 4RIPvulhXVrydqv1v8cbbAeCiROAp0jRdAGexe4iAei7612s3Ks8jk7Nbu7U3GCdaR
	 e9wYq/wRkSUCdhIQbbirEo7uLBchMz3574uGjqMZ4rt6bIeH3dZ8lPok9ma75CJ87p
	 /aJlq++5sKXVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7E4C3DA64
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172196075362.20234.16740253000485820687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc563c0cffcffef14398f8d76644095abb3823fb58521fe3d0010b8139076072
Date: Fri, 26 Jul 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721960753
