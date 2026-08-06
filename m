Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536BD3D5C07
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786044635; cv=none; b=KU3NhKN9DYTCS6m3wFVLfUOyLQjCDlFKhk8XXXOhRzgssE6ScVYbnQ0dSLXaul7JJTzAWFwVhM/pEthY53ZckxWiXIwNIpTxzsFCekEUY9HnWImiN6Gu7H+KcsVxo/DI3dM271pL1JxzSL8QA13htnIjrBfjO6BMFn+i7uOSU6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786044635; c=relaxed/simple;
	bh=Bl1q2F8dDg8MFRDC3eQwvKYaaTBGkFEIm+/J9smUYWI=;
	h=To:Subject:From:Message-Id:Date; b=bbOmLWx/zT5XY+zKNKilcYUegiVm0L2AK9dEsBBSuKafndS0CWKrWkOPskZW/N9QuiWl2DOvKazsHAOSDYVNsZtF1R6/uHI0xnLl7PhXC8T2WMl03hL0NZ57iMC+EH3CFxPlfKaVksU/PHI4+in3LV5LuABR3eZq8qKxxXd21Qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d+sq5304; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+sq5304"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66D0C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786044633;
	bh=Bl1q2F8dDg8MFRDC3eQwvKYaaTBGkFEIm+/J9smUYWI=;
	h=To:Subject:From:Date:From;
	b=d+sq5304PE5DPP7oSGo8mVxMG4gO2V/DOvQMYtdPZ0mN9KW1EzeyPSPTwh9Gi9oSk
	 zd0wGN0vCNEkybRoykjHEGcX2VvRr0IFWvCP4gcLvNoe4XLS+NFgU4ZVJzsUbyIs99
	 rlyuwq8iKq0D206VmoRs+PipSbbKyz+jcMgDWNKXqfL31VhJiSTVYPyU7kAJ14m+za
	 zoKeAwrW7wah3zUUZAAMJgxg+iqLC0XP1146OtLsH0PRdNVu+gsOutrJkrNCkMMCxQ
	 0ai3+NQvFJr5E3/BDN5nPpf6LiG53fq86iLTKDmRJpJROElqSMWhz+BoWJ7qYt53xG
	 ctnCGaqyTVTtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06BBC56205
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178604463368.23180.8239217930926629913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec04b711a0ba8c760a9ef7b18097652922d1e7a4abf959f176894c3254ce714f
Date: Thu, 06 Aug 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786044633
