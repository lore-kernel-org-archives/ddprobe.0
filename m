Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D56B19E7F3
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 18:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718390903; cv=none; b=IBSrN2AxztpImAqfwc/TvhMoLU159f1gSpRVpgb9JOAqd0OzG9FCtzXUIpvJ2mi0ji6yre9nZgbQnzkUZJATLSOwYb649H+jX1EUlrKOhtsFmJRPAqO/srLqaKEIx+pd5wyTC4MCFUOmh9pJRzu21ctfo1qpHTgEYGtNmTraUig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718390903; c=relaxed/simple;
	bh=Mi6BFcS6w0+nfrhlEOkGfbpfECoJjwBw9KJuEy5Vkos=;
	h=To:Subject:From:Message-Id:Date; b=qv6lLiNGpgMxu9B3PwSu+Vsr5oZfXBOSdkWA3REXiK4xKYyOsMlBnv7g0Fwxdcs9u5OXo1gbFo573bUV30+3rUAsKeGal27UgQKewOI+J0Hb7ARfFHAsSbGpYdwR54zaq4OiIkwiJQJUc43Y5Hzcu8E99UHRkY71S88pRorUfHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nS2rDnCt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nS2rDnCt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E23C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 18:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718390902;
	bh=Mi6BFcS6w0+nfrhlEOkGfbpfECoJjwBw9KJuEy5Vkos=;
	h=To:Subject:From:Date:From;
	b=nS2rDnCtdYnsqkqsk8das6NE84u599w8YrnEkmEBq2UQ0JXPKsUWO+u/8St699ntg
	 6CcrDomu+at6SA5M/bmiClTDZ2tjnbA/PeBZtMv6WWI0AJLgMRLqmOuHdbg1hhZl0l
	 TLinxnNCp8pqaUxYPDRNNDilgriCEgPqjUJLGvWNIXvNPZt1yX5bhiLhgASkdEErM8
	 47cHgjIOUpoYH+z7yjFRMb3oXkYSnFLyA359hJ95CD0oN9h5wq1j31hd+FcP+4YnDq
	 ovsY17ocr5PTAjNxJ05Wv137NNVhb1qMurSMJmmaSNuVTywN9OoDvr2IonhjsJ2jgP
	 JEwCveBhKGo/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C650AC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 18:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171839090277.9630.1102429711688514814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b06dc9bc140f840bffcedb3b6ae200ef6988afe954e9981384fd3517416279cd
Date: Fri, 14 Jun 2024 18:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718390902
