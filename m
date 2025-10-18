Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1817B1FE46D
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760810394; cv=none; b=cUUW2tBAlb5FSdJ2zuoAIWje8g+C+nufkTQuAwKyFzhASEmF4SJTVuFZocd5yTvVIFzTQj0WPWcuBeZEFxC8Tync1w+DBYpkaM/4vmzjWWlmJGi3O5XWcygMniAr55vUlMh0rAG5PMmfPpItObAhFu3huXYvRjs23Q5LDYBYaa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760810394; c=relaxed/simple;
	bh=cXT27zfrwJ6mr0OcdpAM4IlWG0nQpm5oeHaBEPxqxPw=;
	h=To:Subject:From:Message-Id:Date; b=taWHk1D9isfSaeNi59FrsCqZ3vS7fOrzwuSMmT4K2wpILnCSZxIn1VR+I9rtcnRqrJp3Po9qlernElbxrcZDh7C6ApDuJ6hH16LdZFBtCuJvS9i5JDr0QF0smlqaSeqYSJ5j12mQEju9pPiYkf3hkwKYnpeVTv5mqa3hbZNPuxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a1F6Tcqq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a1F6Tcqq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F294C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760810393;
	bh=cXT27zfrwJ6mr0OcdpAM4IlWG0nQpm5oeHaBEPxqxPw=;
	h=To:Subject:From:Date:From;
	b=a1F6Tcqqs100nQHZaI5C+gB3niH17aaVCKlct/R5kWFWqB0/cvoQGaKcKQZbAUoIY
	 tLmAEizt6tRiQlcYwiMx2SqnhgtPDzbln6RiM6psfSEZdpH5wG/v70thgCgB2x4Gio
	 OtneedJl7L9UqHMxmgFJDtvg46S/WnxqMrg92mDcoVifR4H34NVOyYzie8cxGkcT/F
	 hc6zocpFW/ONuVox6JovtT813WNsF5fntzZihJrGebuHn8fBjQ6RL0bhNp97taa0dN
	 JF9eWVyJ7wQzpyqKXHlXIndizD6pLEcVgWiiRbMujyxQmrlfxbAhuqg3FXcG8hyFDx
	 KLzsqUo5ptb/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90673CCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176081039358.24471.1542907297229291550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5957fb136d2aa0cea4b08d57c812268f8d5d50bac2e10ebc570d8eb8ce4f97df
Date: Sat, 18 Oct 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760810393
