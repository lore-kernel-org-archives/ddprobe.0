Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA78384239
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774983294; cv=none; b=PD11QWTRFBVce7kYxtzimN4inV+cP3vfWhRidqB2zXxBTQ3ROvCJxsq2PzWQpuwWEBihM0OeRVuH7UXMU4/ONTcyPr3ItpExcAxCUhXFLnEXBKlWtwNCtZU2Nq/AeFNvx1Q/J/KR/va5Mx8Z7ocgtf1lu+onH2IV5qXeOxWncCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774983294; c=relaxed/simple;
	bh=PVWmbHZUY95X3G6kzzMZfTyDL6A0AYLtlp5yx1A2VNI=;
	h=To:Subject:From:Message-Id:Date; b=W0GDwJxnTBIeWY0XWSmfgKuKhoIUxmbxSF3jJJVvhJCY9UhqtH9N7VveTgy8DJTS6fGVxJzKq/lz76KXgg8UsHr0RkvSDxSTOq1zx+ddLHDboq8wRYXV1/ws52suwClZHg4R/RFJauBBOqS6Iy5RIftvMDptmezW5cRwNrkv3MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qXMrk6Rx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qXMrk6Rx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2662C4AF17
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774983293;
	bh=PVWmbHZUY95X3G6kzzMZfTyDL6A0AYLtlp5yx1A2VNI=;
	h=To:Subject:From:Date:From;
	b=qXMrk6RxR8iIXoAVARR6kDcbX8d5WQxz/60rw/gZ6iJygpJadK0Pf12YJ2xaErSZK
	 pIeQyhl5UlZvgqumIeBtdL53QA47ZfW0ODu+w9s7d+MU6bGzQzy4gLfUntSUjWc731
	 /33UgYtb2T+gkWG02UtWMAiY58GFPdgKWQ3WWSPXMh79/ukwgbw8WEQJag92eOcwQ/
	 iHGrcK9AHUf4K+SsBSBESuayR93j/A4lBaQgFUMlzraRpT6rCqGU0RZa72MOAodTtL
	 s0Kmu1YPGvFF05EuFLPbkCKI6ejy9LitkYKFmzvkA5TsIRNThh6o7GNygsoAiGAXJE
	 Jiu3QcnngiY/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9266B10F92EB
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177498329359.19482.16445371104913912650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 064238397fdf98c68533090186bd2c0a4daecb7897ce36fe28ea2bcd942109dc
Date: Tue, 31 Mar 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774983293
