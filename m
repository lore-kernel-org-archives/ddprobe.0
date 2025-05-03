Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F0717B506
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746247794; cv=none; b=Q/nFfv1S5/w6yZZYWG5kqZ0qaT03GEoDtaWAwXo57IJyRSUOktV7PIf3x14DdkYntUv6kGb4cYXUJejD/TyvhcopYV8ykcvngYIP2GVbOM1QOXYTuJkSgfb3hJ9joBlza7JL91xMHpIziuaiy3YKoTUiIFMEEwRQOhJUFzk8Tcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746247794; c=relaxed/simple;
	bh=iY326MqfQ/1kpZTHfXzj4xj2H2VysjupIGt5XTZ4Aqc=;
	h=To:Subject:From:Message-Id:Date; b=rzE07spfTHOr3vk3yFg1MI0fhhvNdZMQ92Bwn36gRpbfDlxyVPCB7E0J+iqAEuTkomXbYbjFo5NrM6+kpq5uOXF6uD4OOt/2BP7RTDKYdK/uH7MtiFTQBALXS97qQ4IBdefAasje1YXsDp1T9laSFKgor0tjQfVaK5MHYQBwsc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RzinaMG2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RzinaMG2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F797C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746247793;
	bh=iY326MqfQ/1kpZTHfXzj4xj2H2VysjupIGt5XTZ4Aqc=;
	h=To:Subject:From:Date:From;
	b=RzinaMG283gUljICXxXrzGXDW0Nh42lnScNwa9fCaeDBC1sz5KPm76qvN3ms8uWoq
	 y/XlE+agRapbuxS2OUMVkxJs9e+FMop9+ytnNMxWImMfv7Vc8fSi+x1q7SRGE0d5Yq
	 c97s5sFP8NlReXloly6edCU3PPnoI0Is6JzF54BDIs6bRu5QxOGUQaSP+CZudI5G0l
	 sMZFDnHAvgRY3fn/H7Y/FDTi1gGLBOeWJRrA/gaPsZcZWQQClm2mJVGz6FzXXufniO
	 NGpeE0P2To3IqhVs+WGr0oBfFfZD+raU6xWVoi5QaUX3VSghRUQ/T1ejoCGbMF3tLU
	 O8HIOHOEEgkmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E074C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174624779357.8831.16609338779288331859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b96544682d07056d60fef271834ff5012ff05235533220415b4db50b939b5f4c
Date: Sat, 03 May 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746247793
