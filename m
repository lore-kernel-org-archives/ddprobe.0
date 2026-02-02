Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F1B274B35
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770015234; cv=none; b=cJyE7Rd4aqiT8Ft45mE2rRNsPUpb333NE1gptE9ut2Tm6c6lXxXrfVZaZMTMEmybBmBzUaqHH1Mj15YIuhyx2HAFqk3Gig6J5LL3qTE1jN4eamWtcFqwcm6mmJAn44dMlKNFOkJS9jOEBmYcYjabQNLzZtzlZGo1cuMKaY6DU0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770015234; c=relaxed/simple;
	bh=YM+Eguoj39g00amVig88vRaN/VXPKiQVHoGV5MmVg/w=;
	h=To:Subject:From:Message-Id:Date; b=XfHb3EE9UiXNx7UBPTvXd6tmmL9PkKcNJlj+vrlD1JtlMGnABL9mX3vQKLUap5Vxm9tunZCxDDADN9+ytsGk19cXaiDrGzfuxhNqdq7h1NvlIZV/ai+a08wIrDwwGHToPMss3fJPg/NmNPXy0B+O0/H4Bq1xKUhNCb6eFNyhfbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YPYoTMCu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YPYoTMCu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A35C19421
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770015233;
	bh=YM+Eguoj39g00amVig88vRaN/VXPKiQVHoGV5MmVg/w=;
	h=To:Subject:From:Date:From;
	b=YPYoTMCu3VQjyjZAGTsVspr14XiKaDCryxpJ69RufWZS7gXzrVvzDLAbXrXgeherO
	 +TSyXr4pDUV6+4e8jlGcJXp/56XXh/PpQsQk3uQaQ6CY89uX6Z+EJIOZ7p+l0Es49j
	 2DCTFwFbr534tXmk3TsBuXghewYNOwaJ55FXJc+J0xpH2DBPFpzE4jxOCjUNxidwse
	 BtmEXqGEyNcS3yvravm35zyISZQ7GPLH+bC3++QE01a8JQrZyD/G4tKqV8O1KmIC0B
	 Z3NewgPVXA0ngaobrVRR4iz+ZWnZvXTRgg7VcolVg5Gc2E5DVYlXzQHzirxXWV/xBZ
	 butqb6WTa6Stg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A45FAD172DA
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177001523362.5892.10933487503065932004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79d3ed3448b1beb168cc87a6d290a2c152a62bcdebb136069ccddb4e870275e2
Date: Mon, 02 Feb 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770015233
