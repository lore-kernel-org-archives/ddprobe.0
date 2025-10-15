Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A9B303A0D
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760507994; cv=none; b=aB3KDtoJz/KaS2IDpV/RQ+S6XAw1igujBquzH4Kt4mtAPiEpFPg9PwJE+Z68BJ/iilprtiVmSQGdoH4D+CzU/viyIJtav7uOigJ7r4dUzd5M59ydIcEusM30+UgLfJTPq/lB14lbRc7FmrjWeSMjfOPTdPSwurpehRxM/GveNIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760507994; c=relaxed/simple;
	bh=iaw/qkBM1WYwGevYGgLBVr1GVv46vpMbhsTjCTSnHVk=;
	h=To:Subject:From:Message-Id:Date; b=DuLDWrKhHcbel7dsuxzOxtUUgbAkjxY3QTYGqzjonWvoefWbKAggIPSLuAzlm85fxkofj2pztUxWHn1IEQ74W/a/yL4EOBoICno95Eah4nga//u5vTtdT8z9PgMJEI88cNPBeAOtt5z8Z3m6hlB6C94/MpfO79kT9Xsyf/V34jI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fBbuBJm+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBbuBJm+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A048BC4CEFE
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760507993;
	bh=iaw/qkBM1WYwGevYGgLBVr1GVv46vpMbhsTjCTSnHVk=;
	h=To:Subject:From:Date:From;
	b=fBbuBJm+htbaHyPZT01JrnBoBDcYQ+sDTMSyNJXpSbIyGhjLDa0SDKlEH+qhV9Ylv
	 TFB/T9IbkV16/2utD19SG1pn8iBugwPhdmCNqu29NaiIGhfMi68/HAAwE1VZqweBgY
	 0nh34VDDcmm1P17aHulCAGeweJa/1Fu7Cb35SNDXiTZrdfFZyT5O8tuGAKD/WgqALv
	 BAIlLNYekQpSsPxz3QhDl3wbADgAAArzkrfxLqZ47TVwq0Cp5OMYHsRxN0Lv3pxUOp
	 fjHlZ8mLDrr9VfowjaRV+jeKPHsn0a6uAfiPvZ/zF4Mv/rgB0skzHLaIs9O1y5zJmZ
	 ylNcDHxSaQ4cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC7ACCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176050799357.13908.1320962195377827339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a29722c7c5b83c3bde684d52eb2eb596b5b237ac1894669ea9a437da1a6a5f41
Date: Wed, 15 Oct 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760507993
