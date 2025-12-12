Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34ECA1DB122
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 17:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765560774; cv=none; b=OV+dBoX/i1qIOWl7RwqSnrl3wLfk49mtgf0zNcLhIp7NDuA62cElp/uUm1G/XSVWke57eJB8EYeAY9vG5SaNo+s+2jOaS9rG8KAuYKsftlUE2vzBj9MKUZl12oHEcdK2/xMpQtOU8amZp3k0M/inmIJm5TwOcPCNGtoOkJr2XmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765560774; c=relaxed/simple;
	bh=ppXdV3TQqqLoBYBNbG3U+hzTRBbgq6I/udIuKjM4gQU=;
	h=To:Subject:From:Message-Id:Date; b=AD/uHAhvLAzmL2Xeh40+UjtVAsMWXarvZA1tK5EZOfFZttWsOCgJx4/JOSaDvyV+5Ab9HtIsIHjolrptkNmbl6n+bozj/XsDWtJN65wKmyjlydqcVisy6xAIT3Cx1nV3sZWE1dB0Vz4z0Zz787TzCmRx8pINbF2XmoHL3dBK7/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/h4UjgC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/h4UjgC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19C7C116B1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 17:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765560773;
	bh=ppXdV3TQqqLoBYBNbG3U+hzTRBbgq6I/udIuKjM4gQU=;
	h=To:Subject:From:Date:From;
	b=Z/h4UjgCPLb5FwPlOlJTG5w3QAYd3rjwKsbzjPFzsKD2EKZO7s4blroFZeb4Od2TH
	 FS0NLfWQtpsmBUjMfLWGHZ5u+74Pu9SgsARIAVNWObpkEGnacmq6YSikVOZb+GqmB1
	 jXAeDXZU4Lx8LnKywO+O9KcJ8D0tvA0NpY02JXy8mPLD0GMUE5YywAreNAPuDpRwqL
	 YLAPLRQq4M7WFQPYpVD0fFhnQyKpHJdFZCpR5rRaWWrOs12lyHyXgBUdfcBLNtykOG
	 Z78Zw1xzGR+zsNFfxxzAUFZ7aYHSG2aqopI85wBdCz4sqY3MLUUCFCWsCOaf6Qs7JM
	 01tvJjY3OIsqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B47D59D77
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 17:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176556077358.5189.11041735077882667033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ce668a90f2b3108fe4486e279844facf3376ee9b63ff1fd1b6b9be0d2f01add
Date: Fri, 12 Dec 2025 17:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765560773
