Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1313559F8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789699835; cv=none; b=SnWYBvrV8rGDKAfx8ZMko0DIi2YcY5IG7qRqGnQ03llG9QvWyHNFfIcirTGII53UmVWetbJx9x98gLXE4yxvnBNECh+PkhxGONpGn09YW4aql/7LyslIRcK3GjIL1QvNejzRv66EsUrjpgjComm9Q5Ov2tfIFLqzRFAkR0MxaXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789699835; c=relaxed/simple;
	bh=423+OAyp3Hs6h4G0mgfi0GoGUbyudWkxDQ4qI5AduOw=;
	h=To:Subject:From:Message-Id:Date; b=aDiK1BkCDzKNhmPjU+OavG7vhd+lDuW6GrrOuZD4fn8MnHx0kyuKwEgyPjGROUC7yP2pBbKz4TfJk4/bJNuEne6NjGWxYix3MUgb4NPRrn3T1ml79rgDIuzC2bqRMxlSnf+Kwr/6+rlfXy2vBjev5Ryj8vbbawjG7t+BEG3Dmto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qXRiLGWy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qXRiLGWy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD6D4C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789699833;
	bh=423+OAyp3Hs6h4G0mgfi0GoGUbyudWkxDQ4qI5AduOw=;
	h=To:Subject:From:Date:From;
	b=qXRiLGWypftYGb134vBclKc1fwjyj1s4eTEbB8d4pM3qs/Ntkf5xltADVozj336Q6
	 z2ayKEatCCpESX/QGgaat00ov4ZGrxeHzWKW1VNWV423bpy8uswoBqeSIDEn/0LcbH
	 A/TtmlCdCw2l5g3az44HnUfK/H4TM+qxVJXojmLQsjsZSyOikqtNgX3Xf8Xhmv8LVQ
	 xv1WDjqxKYt4qLoljwVaD+99tXyTnteRDlCBRsOQJWAF+T//3/VeTLVFxmiI3fTS4i
	 v7sPX+NqxCLNsV0OgGUN0A8mpnFNZIIOupWJSkIS8UpTNEfvB11H9GotcG66pR9Qac
	 xyORl0K8lbhIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F44C982D2
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178969983368.16581.8060528508788932796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d67f298470fbb59bc0afd2d7be2c65a5c6519936b4d67b513861552871ca6835
Date: Fri, 18 Sep 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789699833
