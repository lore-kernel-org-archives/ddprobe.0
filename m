Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0246027E
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 13:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713186563; cv=none; b=c4bflW7gpT1mtVDD8uzaWL5sblP24zS3KQ51qMIJ1yyyJf/lGJs2j7ZDlnHwdFCDOvB3jjlkCq1dLiAJ+nZnvjH0Drz0Th2GrM/iF/s5niA6jYleENUnEfbGBYqeYGazs8ijbKi0RIQ628pOEvie0bPNurgobgdD4tzx9sIovyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713186563; c=relaxed/simple;
	bh=ms+QSJi6OpZONFiHzrXoxTBhw/i7EHqe5O5ChEwcnXo=;
	h=To:Subject:From:Message-Id:Date; b=pLEcHCL/xBWB7jkgRZVSxOdxqonGajuNOT6Zbu40qpjUQ53Vuf3jqYVSvau1sq2lQcKsz0qY/RP7xWXItafMDesYm2JbFXnZuuBS93DLZlJxFof5KPiVjpEtz/xTsGduMSxEmahLCSLgRpyGdK4/Th9DxD2W265gJCozpBvBif0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lyYskzuS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lyYskzuS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB02C113CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 13:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713186562;
	bh=ms+QSJi6OpZONFiHzrXoxTBhw/i7EHqe5O5ChEwcnXo=;
	h=To:Subject:From:Date:From;
	b=lyYskzuSHmzrybNrJU4gJfzuHzHo+Yv0gDVkU3iFutPABeo/+IsvhXSHMCmEF02vz
	 zPR8LdQAYAZ8qbWlszSV2nM5hE+Wx86AIPSFWy8cPqDYin+5Grip2Qy1vBrzZbMgmo
	 veXpoTY3lrZRijP020UmxWTpwdP51OwUAt935SwsLGecyJ+99hFpN1SFSMUjVkqcR3
	 yHUXDgtPZbs8Vm2NpaE7KN17VCU6CznKH8O/1QEZKgkpBYSMCYJ9ympqr8eYJh/OVH
	 TYUztCyKFyJtL0aGqd2TxET0T/pKNVC+1kpWUr/rxbJHiOC2jQrRGgBQ+U9jv+1b0Y
	 AJzvDR9OS/7fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBD12C4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 13:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171318656276.4920.16241036068592902357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd1549ea3c87e86dd10c67a40e86617d3c9b8ab1fe0d192f1cbfce73ae7d9c38
Date: Mon, 15 Apr 2024 13:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713186562
