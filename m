Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0C53DC4D9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792309234; cv=none; b=S38iJmm5Miu64ciU6qNCad/Qd1kvjIzISXVZDIWmxqoaC/5UdNESnxTarXb4UDZv5UKuG9Rnd6ZUZhi6uTtmK3c7c69VeLKH9+rVr5ZAMJkx+q3ql4sOhv3l6qw3UM0kMU3w/ihq+eQVY48Be9ZFo0iZmAovn78N/hR3uea1CA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792309234; c=relaxed/simple;
	bh=cerxPdgNQzeeMklNcPDCgr7HwOj8RcKG/yDPaJktxNc=;
	h=To:Subject:From:Message-Id:Date; b=IsBMNaEzCh3qhP66gF01l5GZ0osmJy/rIT1lE+BCEx3ULW8/4vc9V7pzWeN5s6qfCjb/a7eq33xd6hAgVIztClcW+OXA5Sngxu3+vCwB2L32tYHqF9meYiMd0KjIeB4QQMIDjvorjgTy59u+lPugunF1AAu9TJwdTtAJuupLoXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PveTdgc1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PveTdgc1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1CB7C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792309233;
	bh=cerxPdgNQzeeMklNcPDCgr7HwOj8RcKG/yDPaJktxNc=;
	h=To:Subject:From:Date:From;
	b=PveTdgc1G7jUZCgIbDFb/LKbS71IRH9YMOTvPu01AucJ0qV69Pmz5MJumNkhbmMK1
	 spHr9biPXU3Jv8sfKvJPhQQkBXR05at79Kpn0GPIB+cNIhOTZ4Gu8Ykm0TEdxiV65V
	 mGcdU6vnPWZd/ZX3H+l/KKfYNVEkhRP/ZP+W00l0jv2nGbQEoU29O91phSKt6sbHOn
	 Bmt9f02c56VqanDouscnCX0mq9nglZ7wRf2YYtrIqo5svfoaNfd6ndjNdmdlhoo3h5
	 JsGmPpo7JzHmfgkLGbYnLxzrATwWWaMNTX0eqi91YjRjUdqHIaau0M+TXsTWRMSE3Y
	 om1T2XMm8r7jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B026FCCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179230923368.27290.1300116940653656437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 369e716b6b692f5d98a4040a991475747e90a56ba470596486d279c747a17831
Date: Sun, 18 Oct 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792309233
