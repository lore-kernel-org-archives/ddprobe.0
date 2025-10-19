Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BA157C9F
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760834994; cv=none; b=tQRmY4yyY1rWPY3QbRXjqO8ZENGfgsuHT5qGfLheK4yyxI+cDU3Bsl3YOHdnO1w0lPtULUhhOtnkz3BUIi1myUOLQfPoZqUhhd97X8AO0TVQ57Xd1AB71OA7ff4rfVxM2XAYVVHsyRrRyu8ibVqVzdqlc46n6Vpd7ZI/UyoPynw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760834994; c=relaxed/simple;
	bh=5sJKVi9N9Pnjfrlz4F6kzRoGpHhYOunSEuphlvXIBlg=;
	h=To:Subject:From:Message-Id:Date; b=DF1xYhpba6bB5oG7AQqRM5j5NIWcF1zI0J+Heh2fM+LCFlVRIYtdlido/XWsOjKTVnRhnTXovsE7TIBS96GgP27u01ihB5HOjtBVhKc+XiU3rAs1lWR9mJrLgm6vjF8hD7ITZaUZNZTAUVWgDlA/P4S2AdXccRxvvmHe2DC+xE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ObQueglz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ObQueglz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89C3C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760834993;
	bh=5sJKVi9N9Pnjfrlz4F6kzRoGpHhYOunSEuphlvXIBlg=;
	h=To:Subject:From:Date:From;
	b=ObQueglzIKVZiFWSPedYn+Z5PEl6oFeANeWG42WElJzbNJdOTNAzwBJ8h3qBp1cwh
	 ifhmXCm6RRDGhyWaZwyfMKW/dADSHS6ncyjpw3eh+r5UYpuhhP0mHzCLdmoTlBM3zC
	 8pqTVv1PmgDfoF5Wpva3WO0AqJm+eDCLcvgNTLqjesmmqCCfZzswXoPeT6TlkffEoh
	 eIKGC6xafwALqOLIcUcZiIy2bHc7VT8qls/hadC3LEV2/82LdPUYWPVLefuOiVfASG
	 fD0yPVkZ7wEJKEon1nDV2DY1SLxOme2Lf6urNW5zPT+5VAaHMicTieJMIeEv6m+XtJ
	 bBjv3CVd7/QTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CF3CCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176083499358.23145.3511519292363117711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bbf70199f466957788bf3d11aa480634ff7624f0b5ed8613323d6f81efa7d4d
Date: Sun, 19 Oct 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760834993
