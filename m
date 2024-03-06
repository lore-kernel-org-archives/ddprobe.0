Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8B557499
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709687297; cv=none; b=ZqFbp1dC+QY8TfDXn6WTwubhbuEfD4b5Z7FTZ+S3mtqqxx8WtJQmY+OINzWFOvceRwpcIdi8QZHC+AjiCCaldcjENOk7ENhCKCw9VrmbfHVey2a94Hdu/U9dYwsBcfUW/Fo59rrEbeBTX8ocoEMB0W17QisOtrM+xhQIpV2wMsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709687297; c=relaxed/simple;
	bh=FyOoCZWJxjEzup3yNnh0EQXi48SWOXYCtkAQFVEL72I=;
	h=To:Subject:From:Message-Id:Date; b=fduschgxG7o0BWJVg774wmOSDLDS+CnWvpChddqd05JiLu2Yxg7Y4LbkOiqmVoe3k3YAskrWMWClw2WFlXai9JlHtd+zOyy2t2xECSfy3COHrAUgN8z/mEdNjM4zWDOGIkls/8f4ajHcVfWwgGQX2bMQDu5fUXy6Ra8kVR2XoQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ouPUQkVF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ouPUQkVF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C074C433C7
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709687296;
	bh=FyOoCZWJxjEzup3yNnh0EQXi48SWOXYCtkAQFVEL72I=;
	h=To:Subject:From:Date:From;
	b=ouPUQkVFaMEUp5mrz4VjSU86JjiC1i6rdumgUAaoM2Pk7MDrUZ5RIG00O5FrWf9sP
	 YUf2ZctpO6LIvcxEVFH4wmmtgrRZwJW2nSFzB4jqtWSvtbqUgTuFskS6b2C9ksZFvT
	 42EjfTPqZofd78abiqnGofAVXo2DoI4RHznekQXtyAOJv6xeLJsXGb0uJZw19vBSpX
	 bAGL/ivxU3uKD4OLoPXbDmpPu304fYGnua0XSgEPERTFH+M6CXJKRV1CGsaAICYF1c
	 Py0YVn5gOiT3/EudwsoGwx9aDrnYAOmBwzeoJd3wiG+cz3Qrj0TQbT3VR+lG0sktye
	 xMFm1j+vKxDfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6036CC54E49
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170968729638.27002.10785872335293963098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37872439ba70069ff191027fc7399000c6659850d8af82a3f23c204e34557994
Date: Wed, 06 Mar 2024 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709687296
