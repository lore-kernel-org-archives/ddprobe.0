Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3384F3054D4
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 11:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764848574; cv=none; b=u5+bQMb7YvkVEll9/C9U18PCzeVp/zGgAHzs8wpDi31Z4IOeIGyTuitNqRJDmUvUiWzekM6Htn/URUzoEXo7hOYA4xO0qOLTwANzsdXwqBU72AlnIoRXFr1GGF/I7iXIUx37T3OeL/ZlwEl6SskqEmfOEDSa2di1s/59yvJGdS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764848574; c=relaxed/simple;
	bh=KVSXF1zt3Ak9bQmDfkoHOrynSKgRwokwTpQ47kKyPi4=;
	h=To:Subject:From:Message-Id:Date; b=FohumAmSnWU+Hsx+LbjbUTZrWOWDe/Z7g8mr/0l4g6iblB/cvmi5apcLvo6VyGo8gtbrYkK8QAVWGOQkRLgMUEFo0/WOte6lLv/0Ou2LkUWfPcMqv/cTvxk07V+5e97cg1AL/BpLEmsmSCbylxcR4I7CV5b7fElhAw6Yo7TkovE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pzRoASmM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pzRoASmM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7ACDC113D0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 11:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764848573;
	bh=KVSXF1zt3Ak9bQmDfkoHOrynSKgRwokwTpQ47kKyPi4=;
	h=To:Subject:From:Date:From;
	b=pzRoASmM1CR14lhg5fHIzmXZo8BjH8TnH17QJRTskh5cGt+xy7qMOWBDKF2fG436o
	 t930c3M4/dRv40xAjym7BS0QoIBCLYdgTXR9+zj3soNrdOLahTPqDJbghqei2B4DDD
	 ABcnmoFmCz9HcM2tU6I1wO/FA0EVl75TAksktP/Bs4qwpxP6yPzZKGVyTWYiDKZTe9
	 qRJiduuodhdO7wmcEx4Rra46Rur1IRjKlkPkF6gI3t8EH5v4ZHcPLovYEYcyrVxbsw
	 x/4ejPmDeNnFP8ViErWNlWOmu+VG/3i9/EiC6RQeP0LslOkxA1S/dNxRPUUHrCDKnA
	 LmXDMMkFr0KFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929CBD1F9C5
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 11:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176484857359.14291.12989025697676051426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc8d196d26a37919b6f6606f11df9f76c0d5acd9c198baf19998ce8d68a2656e
Date: Thu, 04 Dec 2025 11:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764848573
