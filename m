Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54FE11E2858
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753946994; cv=none; b=Dlbft81mwUzrhvDKv0DVAoe0acQstC/61fI8X9Y8QI5ytiFOw6/GO6escTDVM/VVHS/nW7zcX0+Rh1Ktuwvq9bcMl+40WNmD7CcHhtJ+Vep9b16mMBKAr2LriFigktdX17r1WybQy1jnQwzEyWJtrBspFYxoSMHdhnfJxBtAEGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753946994; c=relaxed/simple;
	bh=vJX62s2h0tvR1Sg1EURCq6D6iNaPru4o+xQN+5QnDSI=;
	h=To:Subject:From:Message-Id:Date; b=dyUCxOuB5FmFvBRyT7+BSakf4BZtUkBjwHu5ScGZj2VGRGY6osWYdqRLmXgmQ+IzP1Y6LQGUpkmfXFSAUfa+nSmP84LezvjpdfmbhKcJLcVhn7DCT783NKCw5MAYzPo7Dt8QuwgJUOMfvU0fbd4oDWYcsTUNM1Xql/j9FZTOwlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oFtgx/Ki; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oFtgx/Ki"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA00C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753946993;
	bh=vJX62s2h0tvR1Sg1EURCq6D6iNaPru4o+xQN+5QnDSI=;
	h=To:Subject:From:Date:From;
	b=oFtgx/KiHOpoW7N3ejHyfJrGze3oxjY8SYm2zH3Dhzm87/RleQ8AVhkOVGAOdrVd0
	 UZZljsqqqmolJ5McRMJOEFx99uvLRq7GNzH+OiSzQbN5uy5JqlGcYnaMOXncyk399s
	 rvRrPJ6zwFh2P1oajwb3QvugB4djRdxzuGbmHppdw+qMEsa/Fl1vlCZSJ5HWPrrTMe
	 uCTKlCS40T0g47YM1TjpJRqgpcZBPjxXGdXxvkPn+XomQQcl5gsH6HoEDTBxkyojLO
	 DtPpu6Hkcwcb8mW29pPZLWu54JHqQb7DCh5ngyKjrZi2xFNrxY09tcDWoNDkr24Kmh
	 lppdW5VA4ENKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E91DC87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175394699357.25465.1308676470055075531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29b9636cb000b0971e708d0d7d1b468d56715a77d31b295ab17e8b7c134181ba
Date: Thu, 31 Jul 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753946993
