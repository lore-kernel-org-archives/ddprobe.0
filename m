Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EA5015443F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 14:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718721563; cv=none; b=WTzOtV5g+IkMuSGj5nk3PKhyVafKqIckRH1c/wsSh/l4yoTc/e7PbGdWxf9crh3EpFg3l31b0Vt299v2eC+Y1MqfudZujgwtaKQ6AoU1y3lx3Q/XV3LrAJNPxKkjbOWZwZpA3JBvQqZQhRG0UECioDrvGoghLBCYIj78s14/fKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718721563; c=relaxed/simple;
	bh=2ovbiTQ+y/LZWGlXihSrNnYUyekJGZjoH6bwQF0cRRI=;
	h=To:Subject:From:Message-Id:Date; b=iSNQtjpApxj+J1hGLMvuuyR2mvECYlxRba2kve+//lDWJEKkV3rgdfHZ3rVO4N9xBaGLwPha9fOsjLsNztYldQvfz8slHUrf1LzAz8uyoMfSPTVp3mT4J1trlbsXCmdQDTMB9zkaj6hCGh883k88l+41yFlYXc7YGjphsitO4Zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XL3XgNav; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XL3XgNav"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE8BC3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 14:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718721562;
	bh=2ovbiTQ+y/LZWGlXihSrNnYUyekJGZjoH6bwQF0cRRI=;
	h=To:Subject:From:Date:From;
	b=XL3XgNavSNpMaZMf+MNnmb/cHFIMWZgHKAd0SWSBMcdvGN5aQNYPAuyQgnwyYt0HZ
	 YjQGFdOey/303hHwi1jCXNomYAXp1JHwP03ArdmqWqI8mFmirQOxIIKEp5kXmo/CDY
	 3prjQPezIztSByRT5SaYWMlbzunkKgud5UNW7UwA8i+JZlqL5KZhIJ3F3ABfUneesb
	 qKTRNsPu3AdWxaV4szaLdp30T/BrbCSMnhdVBcYT+GohRqsvyYwmRCf1Iya+bBklTB
	 0cIho8xs7GYdbiyWPirUtX/nUjF84AgswPqnenu9O3fqaJ10RYCfxSftWOPcg0404+
	 wrzvPHFfGNxfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4750C2BA18
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 14:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171872156279.32018.7339556044685760819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a60c8e7d04955ad31c44a899c6a25e212dfcb05ed7690ee52542360d27116dff
Date: Tue, 18 Jun 2024 14:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718721562
