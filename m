Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8E3189B84
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762006194; cv=none; b=psZrPjmS0fGPSMLDQ6UQWiLY2E3hRDwaYevm7LK1N1mQdLPJmhxKeHbPRdYr+NDJNJmi56XH+PpgvisGA3+baz7Dio5lVA7q8pg37gHbF6/JS4HlCRhs+tIs65nvSEyn0L6DTJgHvqMv4QVBOUvnbxSCex7w4ElNbwBsUup57XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762006194; c=relaxed/simple;
	bh=g0EHaB0cRG/MauOmEs8VsZNjNoNeu8edy3N8k2fDoEk=;
	h=To:Subject:From:Message-Id:Date; b=mOKGCzrVUiclKsWzW5N4IWtOtJgngCEyuxYoCXbDdls02D1xLtmAOoxpJFteeNJZRBdM5uGPoEpQg6eSlrnJoULEJrPjXrhlUPn+LcVtV+ZV5/LyBRMa+zXNj9uW6y79irseSCuRn5iXE2jiymNZWMs0IYWOIN5gaAAO+mzIRVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rAqcpT73; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rAqcpT73"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB35C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762006193;
	bh=g0EHaB0cRG/MauOmEs8VsZNjNoNeu8edy3N8k2fDoEk=;
	h=To:Subject:From:Date:From;
	b=rAqcpT731cW9jsJf5a8cbtjNbmpATepv7AJtd1ND5aKIl378d4qkJSZB/NV8ZAduu
	 TvbPqP+UuSRSPEA3NBlVh0rOU9B01db3Ng1NHeo0t6GPmM5ZcJrW42jvrgrtK9pj5e
	 cMs6VS3ibvpUizY5cp7eS6weUrURPNWnu7Ohsw2hwOB2CJDQC8+hpE0HEaqC5HbbT9
	 scI9kdLxM+lsNbRz8fvoF18Ea1xOl2ywaWJ/8S4dAgadGtAh3SYF3kf8tnoM9L9kpc
	 BpF+irBAIztW8QCxk3bu9feilsz5Zrk/LgeTE+QaLLzaNcdNQP0mCBMF0UQMlDvmsb
	 +TQanhd3hFMGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC06CCFA03
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176200619359.13432.11733881429486520662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2d0c576e3df3080271bf9f784eefe0d6728210fff8478b32bb4742e77571004
Date: Sat, 01 Nov 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762006193
