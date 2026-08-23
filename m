Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71EB4194C98
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787463034; cv=none; b=YhkxOcEdmt7UjzMvhlif7RVpt/SZUrtnnSVW2Sl9b3du5UweWn4/cMa9CYHArGF6vGMfEj/qrI/5/eg87Y8q/UIV5Lh2ArfxS1FBi6xFg6xXYKB6Quw7CzPrInHbxS5Gnj/d9Oq92gWn+Ke56xu8eYKR4av6QoGvX9/vJUewmS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787463034; c=relaxed/simple;
	bh=RU017drrC9cTOCbzzsla1Xn9ugopY34TyIKeP1SV32Y=;
	h=To:Subject:From:Message-Id:Date; b=Fxi4DOm3cOWqjpmB7O/WevMlLDYlCjGZufN8h5WIC7dhNf2/ywASqSqsW7hTzqQ/lufCDwc2vJ9ZNK+5vJZjXh0pWJH+72XWcob6KMU8Eo70cxSlFkmRqTRg7lsXKiSXqnyWgaaldg/s88LmJNiL57qfmKB5IZM0ClyEaFrc12w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EwUjq9gi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EwUjq9gi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF03EC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787463033;
	bh=RU017drrC9cTOCbzzsla1Xn9ugopY34TyIKeP1SV32Y=;
	h=To:Subject:From:Date:From;
	b=EwUjq9gibcN3VEVkeUWbjbVCmF2JAIWzGY1O1JwmkoiN8n8qD2ZGDXCoxB+QOw45S
	 FM4zNOfALt4W/iavpSqMCJ0WCgDmbK1YnXjn/Me/CqY16auQNIlxfWv4/0gRjocrs/
	 KQjTaGRsRYkObkY/+GGRgz4fQ+KAbZ4UkJEFh8FYZyzFicMCegtuf73N10OgZT0dDr
	 iTAPMSEJfZuH4gPCu0eKNtLTXgwTxRRd1lfuG+N+DDwWLfTiJOks/8kmo5FMRqrabi
	 UjxMwSrb2P4aNIXi4n/rhM6nzXvmiQgt/BklkLvxWlfVE/Pe7lpUCDjAVaajZY09f+
	 YMoLzhmWIUnRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3593C5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178746303369.22615.6127090721340550763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bda19514a2c9b0fc2c391f7dd9124cf280680b25ed383dc9916f3c2a6d25a659
Date: Sun, 23 Aug 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787463033
