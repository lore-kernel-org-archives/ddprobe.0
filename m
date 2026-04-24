Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D601C3264E6
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 17:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777051053; cv=none; b=CtkqFtm4JSFBALERxtnjByziBN2m5dlut5b6kO8mLQtLozf4XVnZ/POQsPHVIgJSBMzw9vgJ5FuGIEB0SWA3b1/nOB51k/erT8uIl301q7fU7CxIO3GsX5049zZdycRiYAQ38/KPZqtfORWOeI671ACSqCPyVchxbJLeJRG1ZGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777051053; c=relaxed/simple;
	bh=aGBhpnmJqEp5Zd4Bwph4xhzwX/OFXWUyYm+ayOZcxcA=;
	h=To:Subject:From:Message-Id:Date; b=PLYFQSAVeQrAvQdztqNWu0hvpRI4gt9bU070oFwaIarkJTdP89vo4qThKoz47INKn/wDAWttuLvsYrCpNgYNYt7QZKsR7Pd0ntaljYxNn5ovDSzb7YdWFJrIW5rRaDDXH7RGfZ6LE9ifiVD0mkJ36p87Zo9fEVTn3JsiSb6xCEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VR61jtZM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VR61jtZM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8BFBC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 17:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777051053;
	bh=aGBhpnmJqEp5Zd4Bwph4xhzwX/OFXWUyYm+ayOZcxcA=;
	h=To:Subject:From:Date:From;
	b=VR61jtZMqKkeVpk//EFd88NaJ8dAF1bkZOojeZnu//NfcWHIXtHN/5Nv0AsoXYDgV
	 sXefWi+20oGfoFj56jTc6pTRh6sjnN6Wa8wwhwRTnOB0QKzsrglyTjeA39paed/vEI
	 TbqXOKrJ6N+RzSSmnRrsUmVC7yOu67yjNo3rW8THdR0QO+RCW0eVvphOOmRiSd4Cgi
	 pVYX7CXwMcMIMzMIyAUV3Yg+A6aWnGuLPRh+VKwY+toMhGrYuia3xlz1oJo4I0TtXH
	 /DkTSKoq8LmjPN2kAHxnYmnAe30wRQKGQt71bizedyjtTJD7rWa0EUI2r+hbIIOYMX
	 KPh+eWeq4GH0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D75FED3F1
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 17:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177705105368.20426.11507702259450108080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92ccb608fc14b77772d224e8b938b42f1cee8c4022ee10a2241b54d1b5d7e427
Date: Fri, 24 Apr 2026 17:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777051053
