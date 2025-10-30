Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC6A3FFD
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761782994; cv=none; b=jrnVJMTDUGCd7qFgH854bd88T8FEEly/sW5O5yiUzgXCSZGrXkLSQ9ERSXeuMIaz4zqv3LQdJwdqq5VLq6ba44m7pJBcZ/dKiBKaHIa891IL7G6gQs4CoIWeCBDtgfHPWbxhKM6CyWkmbSPncAaCe3qNe8WjaCSozZmfpPhboY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761782994; c=relaxed/simple;
	bh=rTR7XtBZapX7jYHwm+ZYo2usOTwHPlwHz034oM4p0uU=;
	h=To:Subject:From:Message-Id:Date; b=kAKk3tO14uLhv5WqjBbkd8XZjmspP327l6J6n3FaPC9Ul59gLPg7PGaQIE2a9oGHg6S64vFvsYc5tNPJcOiZ4yUwmUA6xf1tGjia9J3g5HkfPmYIFctTWQa02dUnPui4BBc/sFeU3MRSEXksoC6dTJwQ/9ajjSCs2+fmf8DG0X4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hwSho3Fl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hwSho3Fl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D23C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761782993;
	bh=rTR7XtBZapX7jYHwm+ZYo2usOTwHPlwHz034oM4p0uU=;
	h=To:Subject:From:Date:From;
	b=hwSho3FlQLqG8Bue37KRR9qXMmo1JQI2BtTDBnFeLZx+4rDOPaptrsVJ/+cBPUoDV
	 o6MHa6T6LmVZaHRjHIu6dBBbvi5IZA6xQ0lt1gLyydMjSQ5ozIQpSw8Iu8Fiiv+Xdt
	 FSHnmcJipary77UFH/rwnZFCsmqcm+k4/WGyOSnira+L1uyT1lPRS19yda/nImMCts
	 dr22UTtUrlWHpIx3u8MbS9vu79IJ3eHQAvaNlj0IcyWoGUVHSonqYTuxAYHJ5izwPF
	 Z+8uAxaftxEvSn7usekxsMo8OctarBlJxMJKV24yOO5cNjYGN3Nr1UE9TBdHcjQQbX
	 YhCORvQCgu1Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947AFCCF9EE
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176178299358.29650.3298914575926957617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 988c6340cd8e4e310af35add4df9ceb78bcea58a45001dc7aaf517b7d2631fda
Date: Thu, 30 Oct 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761782993
