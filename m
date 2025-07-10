Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210CE2D8778
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752143394; cv=none; b=Xqyd1ZaMYWap4Bv8MhrkP7dynpel2aFMV9JDqwOW5j2gq0pqNYuu4yD729BHMpJFSIuljqTwrrGWTMralqBHqJXo+SvEU/jEE8C+kZxeqjl/hPxBMrcvIv0I6evk583xUSUybCC7EmCtjG8DzkX9YslED73stgz6IyoA6taayAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752143394; c=relaxed/simple;
	bh=vyJBve8sgMashRE8jkBbBQGVnkEWxjyo9OEFUeY4ffQ=;
	h=To:Subject:From:Message-Id:Date; b=hfhsqVys9IvB/cKH3j2UPgc7/qYT6Uzjqw2W2tC6AOE6OMsFg00xGss1KpHPzIuUs78vOKBMD1wBwU0MTHA/B7HHYLRRhiWOCio2n8PnH7whsAskdOQlMKRjYhNBRBv+Nply+l7tMRWDJxaK59C/Q7pkWdmiQLmcwi9K6xAgKT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nhSRH3JD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nhSRH3JD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33FAC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752143393;
	bh=vyJBve8sgMashRE8jkBbBQGVnkEWxjyo9OEFUeY4ffQ=;
	h=To:Subject:From:Date:From;
	b=nhSRH3JDiosGSIStbzb438byvKI7ttV7iEppgVXaLDy8PDJg6oCzgXggfe9EQOmIT
	 +eX8NkjoefKEmwgXW3ltz11ozgbtUfrgElON77aqFxiSUArQMAObpU1mA2fmBdB10T
	 kBH+iy4fttDs3HRxg0r1+niqErQsz8QHRic8xRwWbddcPdRvwXQ1IwxbUmSjwtYNso
	 YiV1heB60yU63/E2+pCV6iWBCDtf+D74drEC1JA+CCXbbW6A4yEnvltRkHbSviI6of
	 4wIfqTR3Y6cY1BTPLZKfMFbmglL9Zb+joW79jjchpduxnUKUlFJrKd4mYkvmwo2+u1
	 GSA8CP9jDdKQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E0EC83F1D
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175214339358.19170.442021564767979547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d173a1aa88bb3a3f90b4daad7c4f8e43a25592a62eca8fa1e6e827695161a783
Date: Thu, 10 Jul 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752143393
