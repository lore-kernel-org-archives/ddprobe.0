Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3515A1F584E
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747292394; cv=none; b=jdEmSkqhvMFb9Er9oVdDg3XRmlkFCVwGcQWDjR4hzdqE8uvFBkrvG+m/pi7YL6qctiUrt24Hd+zNjgHpZ10RiwFmrvs5QoZgS8V/12qirgdwyuYtB1d1oJxU3MT+onF7tcRmJsYnzZQUHBsnysZX6NOup69ZAsym24r0W5Hktfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747292394; c=relaxed/simple;
	bh=28254g/nDCfvK1eQL2AWbDx6zPA8w65uxmggdmFDCko=;
	h=To:Subject:From:Message-Id:Date; b=hFHOEYZW4AATkY+q91s+D+7Xbu0IFYiTtgitJDIFP2KVo8Y2wkRWbhvwli0xiYp88V0dOyuMMBji783qZjM9SpGXeQErOQdMOh0bK1NHsd/yVeWNjyYQjCdlZTMm9FeSr4auWuyZosd0xc/Zr7+GAAFxIpUA1fOpBlPaeU4QtXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WE/6RLxJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WE/6RLxJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FB3C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747292393;
	bh=28254g/nDCfvK1eQL2AWbDx6zPA8w65uxmggdmFDCko=;
	h=To:Subject:From:Date:From;
	b=WE/6RLxJCT29T9HKa05qlEFkLxucLJG+UPm4dCxw+bXKha0FmEPeqyrbCz2fNwRiQ
	 J6ZLOT+LoV/E/kK5uxZrKEaXWnd8wspTBuFjIX9YzyIu/qSSt5uUgFTf13nnEdotyu
	 4k1AYiEx28oqDEPFt11RhAClxFGja7nWKkxRIVphVGU56Ng+FrttFmJBDgF5Ww1GW8
	 Ewdl4z84bgHvcVYBhJan20jAF/yaIb5MruxXFi8NarCWDuq0GjcVT+dYUYmayXRgTH
	 ZZSi0F3EgWuZDaiomhGZau1NF/1eGLDg6qL4AjLjhgYYFeVYn2i1yPKPVRGounTwX6
	 PdRCTWVvQ0FKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B00C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174729239358.11325.2823938457866285803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19ec6b5a52b71eae9a37c744660f80a236d100c6d210fa3fc5465ccfcaaff2a6
Date: Thu, 15 May 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747292393
