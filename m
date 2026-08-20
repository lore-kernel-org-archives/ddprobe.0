Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DB89346A0D
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787191834; cv=none; b=pKKjQ9EWiMvq1s8w5xKWiQwQSOzKJHmYfnl3ogzryizK1MNxHrA5y1BbFsWMUqZd03XNf1tLHQ0tEUya3x4L7sBp9CDBerWc6e060aOtYlCINEo5FlttLlIcgPGBzMF3KZM69xAky1MHD2G01f+1hvDFzVMKAgAYn0WTYruViOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787191834; c=relaxed/simple;
	bh=YihPu2beVMbV4rwosVS5lNdLoFGNUYBoozd0FF7uIAY=;
	h=To:Subject:From:Message-Id:Date; b=jNEw2TBNNbTJNgTE2UMl9BGWYQQXnJsvAFcyE40OretUJh/tSpOrxJiKaOh9rflKLzjFYva1iOnscnv2xfF2Lx4iPR4UskBhu4fniFAdTJ99tbWsh0kpm2VGdfxnh9v7yuYv5mdLeSbvn1crFxpAhuArwtcIvTM2C3dGpgCvVMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S89+UDFf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S89+UDFf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDA37C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787191834;
	bh=YihPu2beVMbV4rwosVS5lNdLoFGNUYBoozd0FF7uIAY=;
	h=To:Subject:From:Date:From;
	b=S89+UDFftOE3J3rCpxIsUotdg5jbUwKDTOhY8MKAS4j9fWVAlbdfWFJzdwsBMq4Tg
	 PpVbOOA5nTpzOpkwTrFi7GU7qXHY9+qQGX9+LDUPOqhAmdsenJXlX334sLP1B5ymWx
	 hPZtJhS0RD9qkXhhnpGMuzG581O7tDYz5LiHmrR48F2oaV8mAMZbf8i+p3L/IfDq8A
	 1bI5XkM9IO9xM7aKb450hz3OQjGjQ055GixunGQxmUsx+majGayGIRFzRFM/C9iyje
	 WvlYjHHC1bMurTJLgANPW/A5y4fQtrt0slCewGWB77SlG5oVJro0kRzSrZ6ctjiUfs
	 yv+o0LM/End2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C088DC5B572
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178719183376.23144.14894672183347503141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cccb81c3c9dd6836915e3fe274f3b11e524a2b5e787de47dcb83d7fdc59814ad
Date: Thu, 20 Aug 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787191833
