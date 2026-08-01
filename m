Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 833FB356773
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785586234; cv=none; b=horANOvkf0L6u837sNLi64iU7EOvjnkZlf2Tv7It0Y5MBtyn5XK748WieIsrMWCAZa5aU6f+hjDCWXvtFKfACtv4odjhnLVLkZaj6Z1KDHJI7G4hBAdmoWiWu7iobxVd97crUhHup85DtObiv0wdg1LgeqP/mLBilV4P4uFWk4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785586234; c=relaxed/simple;
	bh=8aP+w4WqLEyyCnYpHgSjzfhrXRgydke+6hsZMPa0k8g=;
	h=To:Subject:From:Message-Id:Date; b=rh7lDSCQ2z1L1wRtALoPWfXoKgdwkDq78TSTO/fKyVpBJ7PQC7B7P8nGuUh/Q6qyHawxtcNL5IsGcXV6xQbpBPzFhVuplu6bSgrsMyDuNHTEo8fVcI9KFwFO07TBh6a9pOG9EtAPd/3bY5HH4KiTHuSQBz7vONfnBAsU7qAfN6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IMvE3i6G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IMvE3i6G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A59C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785586233;
	bh=8aP+w4WqLEyyCnYpHgSjzfhrXRgydke+6hsZMPa0k8g=;
	h=To:Subject:From:Date:From;
	b=IMvE3i6G3GVlUM2NJi5+5rQCcDozoIAmml1Xm+7TflpLPcIm5cLK2YCHKzxBGCBWz
	 BP4ITLkPAr1lFEl6RfjuXGd2Ky2dopwG3uwo3uEh4eZGQcsfYZI7cwUeUGlYBzvYVY
	 X1z15KhDpq8PMbks50PopjPgNIEK6NfgIcTXiFkoOWSKVhoyPQ5tr/+IrmyTktZimm
	 ioAMqyvt9f2jEPMNzHdUZ7K5AVqgEZSdMbRkREwyWKpHLQApXJ5tqkwLg05HZgZbzu
	 xjR2jNVGXG0LRhsvEFk4m8tc+d60y7kRm8vDQODFS6acvUr84pV42WmShSeEC6jAwC
	 ehqVHljZXgUBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B01C55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178558623368.22926.8294424016094615934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1074e5271549d5a5aedccff830cde2a1069c9fbd3585750902f6ae8ad461df8
Date: Sat, 01 Aug 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785586233
