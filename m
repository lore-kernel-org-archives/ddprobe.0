Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418E9186A
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727937954; cv=none; b=fwzMRRrcqfDW6WR2x6Yocj/jSCN38g/CWTPWRsK3BQj3bJ4xMIzgwa6oz4GOgluliC3sSgYcVa2DU/dMTp+SnmqeToaBm4p22wvSBfngFIIEt9qGy8yiDmZu4NoPA9akN6wmBZayPd/1hbpw2Kg4Uf7FE92jDDgKVCpkCt7WL1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727937954; c=relaxed/simple;
	bh=3ocyPRdgDCrG87k56a67TSECQ1zjwOsAjFBCSJYR2/Q=;
	h=To:Subject:From:Message-Id:Date; b=n/xk8n3j3IkP5YOvJKEiuWjd1ucV9LYTYKjucKyCpDvIL4Dr3siH53JWp7V5VvHZHkyJELNYOJ0L08ISnrD15rO1BJiyy/aa+4KUJ3CIZLp61gZrbghqPvqU5RZMYoWc7KObLzfziwcXm39MkZBxatf/viQ3yxSSCr3q/ifGIZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKN+keFA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKN+keFA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6825C4CEC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727937953;
	bh=3ocyPRdgDCrG87k56a67TSECQ1zjwOsAjFBCSJYR2/Q=;
	h=To:Subject:From:Date:From;
	b=CKN+keFAX3gNN3Sh5lKfADvbl96B9gLfpCrj2/8WRiKaDBM8QqQTLIzRHOoNFGx6F
	 UDt8dnxVXbMz1+EeZc9KJ+Q+IaC1B9tKjueoPwaA3HiOloboQgIS1MNufHUlSLM1kX
	 k+MtDJJplu8Z/ivYiadcnRrXZF/AWm/47cweLuRnQ9L/K854ZAStlYvBgoHg4OpUKL
	 6rF4AmMgW+mhHg8YT6QHKyt+3ExyuFBw3df0V297bR8iiCmp+SCtVHLVWcBSZ785AR
	 am/2hymhHO7QjsLnz320vwESy1Wj34pt297b7TRGtVY5w8lrSbqztyiY6N0Db/Vm0w
	 zN0uOOX7xcDpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A836ECF855D
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172793795363.10073.4730563134676523410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5d60c48eba81a0f1a52aa3c1d585760b516ddb593bf1c3dd6afb5cedad15c5b
Date: Thu, 03 Oct 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727937953
