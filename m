Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C76E3A8D0
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728924354; cv=none; b=D5Htd9ox9Fg4Ir/wW2p72P9woQaXT/FdEJvFmcZizUrvk+hcq5KPJr/tObaxZVzoPHjGSUfp1sFtZDuvNDHu16cTCwSGCBHtlKv5dwdwSUzpdhJAHckEfMw8rvogrR2BzhKFFCNxGJND6qqm8oTq7HiBjwEasGopB5HR5bJ9mgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728924354; c=relaxed/simple;
	bh=uOgFxBIm6ARcXvbrztLP34T54kgutZO/82cvnDu26Kk=;
	h=To:Subject:From:Message-Id:Date; b=CNNWh0jGqETNZGdL5ByYO67cdsXTPMRtPC16WScLxYG0+/p00YtHY2nZVQ0mioJHBPlzfezxUX+758BFCC8R54btNbsZvbqDDAisPCqxX3tsvzH7tCm1KogPYDXKn6haFAAfUfn1tfeP61R54XkuEhH5SJwzETBPdvOzFgTuxw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N2tsoYBQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N2tsoYBQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC364C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728924353;
	bh=uOgFxBIm6ARcXvbrztLP34T54kgutZO/82cvnDu26Kk=;
	h=To:Subject:From:Date:From;
	b=N2tsoYBQj8x9Un4hfnVGBF1SmoOEffLSzF2bWt9u79dsJBAX6ypB8B9XYLxAdcX4I
	 d6o+KpkXfDvU6Z7ng9TSF11/IdNvx7YlwS19eHSCYBvD7q0APyp/cBINLLGnS7DkP5
	 pWkAPvfWENwILZurJuWjJg0GqTjgOW8crR/31go3Gpsdqdybs7KBwujAE1tXtjsObv
	 /JA4KC/TT0url1SVHD8e36TLmPDuMcuWhqp+tWX+EzgHjaEq4HwG5GggXwbe+rNlQN
	 xTz8CIYotCZLNR80NU97lWEgKfkWOKcmgVhWa3QO9hOnlaz4vfbrFkdpdL6MZCFdYH
	 fGUBs/IH/d69A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98142D18130
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172892435361.2385.1076968677767861608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6febb77949853f0cb7650880b1281a6730e57593e1628bb60c1465d15dd6dd2
Date: Mon, 14 Oct 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728924353
