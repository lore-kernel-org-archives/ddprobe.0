Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0734B2D9481
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 07:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777276654; cv=none; b=VXQdilfJ65VoEvfiQQC5Zm7uFkfSE0UXQvQZHNaF5SJEjXXixq0Xk1rR1jmigdV+VdUxpASqCRxMnBZ1i4iqNZE5o8ABGgD3WzbfXdHDNAuUYX1kWMw1HKD/yId2EKn1a6HAL+XELPlePtALGs/R5LJUSjInCAYG+Q7sMfPZfZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777276654; c=relaxed/simple;
	bh=DpAXY5bp8LNP7Q+THhmCA/C2OyEbGPq5jvzLWF+4oZU=;
	h=To:Subject:From:Message-Id:Date; b=l/rrQpunyG5tJPApMSyGCRB3cq8Me697j51SKcFZ36r0HFcEyN3nCzp5vAvyZ2x3gQooADnJaBPJvzNhmMXAzXwva8b/TLM8FQDghYVztIHW7VBrmRdhrJK0WlW19GzLPqH3dHyXQKPkqxX/XDj9MjdgW0v1fdwM8ekrqP0wO9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5T8sZx6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5T8sZx6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B67C6C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 07:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777276653;
	bh=DpAXY5bp8LNP7Q+THhmCA/C2OyEbGPq5jvzLWF+4oZU=;
	h=To:Subject:From:Date:From;
	b=s5T8sZx6lTD9YK9925FlCEr6Z5elHpl0wPVPJw8DCn8Mkvl9JrGhXlFzIC0DaJrXS
	 euXFadHwRftlaAiGX9m+cTuL1IIRwARegW75PLphRBw202wj/XbYiynaRmkEcKsreo
	 dxDcrAoRUg8P3xqTZaIKub0DAqOkt2ioYFCT6aLTjDetBVMNQf1dnO9EX3R2j9wDJO
	 I6WCiEyM+mCDD2cAfily3dV4JC3sDnbA/wQlxtGnU2OAAWytKbbYCrg4DO2pJL7N4h
	 /pPrg6wl3W2xDIH8xyO/8Uu9dQ6P4qF/pe9HuFjyryad4B/pUSBOI7emK53kh6Fyqn
	 cKF58brBBYpsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA327FF8862
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 07:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177727665368.26508.6450388739608367406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 564a6dfbb87af3b73c1284744a5e2dcc5f67bb69da387698730f3f18e8e3dc01
Date: Mon, 27 Apr 2026 07:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777276653
