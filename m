Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEEB360
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754009394; cv=none; b=Q3M8d+32qxPT6AQdWKxZF7Yl+8OfPMJRu0OuKcWkhmBSiGyNym66aKyI7Vu3uT2qcqV4v3HSn+tQfAUlNvOED6BX3sgUT5sRoe1lj9lFdb6eBmEZG+bEXmZQLAEr4o/O89IIS92bOsHOxjA8AyV39h2akJp/WHRcdc/1tm0XBi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754009394; c=relaxed/simple;
	bh=qN4NbsEPPjE3lMxxFtMBO5i/tQvKxEFXocpb1WUuHWg=;
	h=To:Subject:From:Message-Id:Date; b=PPujbWgFcayNBoTR9fOe6TuhmJrxWXRJKBjBoLedrtE6DBl/t9wBJz+F/9IYGgu2Pg9DoVoJzEKqgXr425oxWlzTb/CyEqaLn//Djt+jltuaEhFsGaVaCxSbxZmTAOCFVl2TwuGRu6VuoVw0AkVUnYt/xzEg3slFfykTIrUrdsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uICidb0Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uICidb0Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3875C4CEEF
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754009393;
	bh=qN4NbsEPPjE3lMxxFtMBO5i/tQvKxEFXocpb1WUuHWg=;
	h=To:Subject:From:Date:From;
	b=uICidb0Zc2G895L1aUMavN/7XaY8SYbpJgWaSNqREMlvRufvK9Rj7xSo5PQXiHLCx
	 Scnqam+i86+UiE6e9luhZLfxZZXuPaZvLgfsCgSNFzFi89xdcn1WSn2PPZ6tcpEua0
	 Y9nLYZEj/ifDrtA65aT27R4rLbM1KkPIpSO90Ot2JvoiiqCh0agqogQ3zRGrsWZxgx
	 IB8pTs6wy//6ESvw15l2qHIGbiTkOcxOBiiYozb8tkVRT6jCbeTuaVPXAmmQmy1Sex
	 hGuYLb12EZs/nKvtKxHD4FGxKpqsGkTUmZ5vQJWQK9q802/YVlccsT0nCy6T9Z5r4E
	 gKj5ioXHZS7zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F15BC87FD3
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175400939357.31600.15179270841228331279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15abf3eb9e1e95f39b4613aa7463aeb73be26332c78fc3cffe9ee7d72c76102f
Date: Fri, 01 Aug 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754009393
