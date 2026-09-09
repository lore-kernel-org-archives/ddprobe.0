Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A5AF340DB0
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788930634; cv=none; b=TYDvbUaWBPZz9b2/W/xEOwjoJ6QS8t+GewfLJbg7G484Dt02IaAI+tbKYstE29dSjXlw86/GbN1nf4cfjVnBTzt9mpaiWizBYe64hLKA+l8hHDIWe8ZRv0GSa87DCIJxuBYvpMQGJuuZYTioW9NKDrnRu0WKEGnZyNk9Zdak+kA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788930634; c=relaxed/simple;
	bh=J74HrxGLdfA+NwaVmdzlYPiFiapHTgMe8T1/y+Hy6Ws=;
	h=To:Subject:From:Message-Id:Date; b=gK2s97p9GF7/uERydnUG8FKiiLHRc7bukd417JQeMk9TFsOG5mH4DodwN7qqgshhuEJRWkYNZ7gQIec7L+rB8sTmVxXFz1NGLjEpIEe2D9abWOatHhqi1TGSdXaHGJyLCovIjuNCjju5m3UQncQcidnxKnTGztW+uNwXY4W3JsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fk/qaanb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fk/qaanb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FCDC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788930633;
	bh=J74HrxGLdfA+NwaVmdzlYPiFiapHTgMe8T1/y+Hy6Ws=;
	h=To:Subject:From:Date:From;
	b=fk/qaanb3UM1KUHG+bMUu3CcHcEOI7qjs+GRGZlsZsvQFnhw8XQLNb4DiWNR33VCG
	 y3znf4MzYV4SIdKNPDiD6Rz1tGfebyd3jhWTDpaxEXzi2GGlMI2GbF1sxM+gsJXUhn
	 NUI3SVvNqeCZ6o53J1M1NVhiBd/N0g0qc8W0QLwdxT+mw8rgusaLfEkmr8j3DSEwO4
	 MHdE3l/xwQxeXwBVohVV90I1bKEvIWHRYRMIgLR+Ceye6ix28GiUTduPfjQZk1yCgX
	 Ao28ky1dnDeuVBu2krRji51dTh6dGp0H9IPfC/1L8A0ZkRSgUSYyKDXf1gJ6YnXLpd
	 xNOwuJQxtmTjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12A0C79F8C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178893063369.2554.2047574553141026791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 858de6bb7ab1fd40ce64f710631e72a0ff545ebf0f08627329837d88d793098a
Date: Wed, 09 Sep 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788930633
