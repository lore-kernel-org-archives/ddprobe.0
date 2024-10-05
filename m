Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35172322B
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728105954; cv=none; b=ubziIORF1YFxx76ttClz3WrzzIGA/3VE72C7I3gPmQQYCBdasYy+1TeTgzcfMKRsovHeKMLQommK0U1Ys4yGxdOPvPW1NzT3cVAEPvvCUryL1d6uLX4KKfmiw5+0ty+bGtsrVh9wxT8YZ08r3lqniIKn50K4MzZ8vVRbCu4oQsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728105954; c=relaxed/simple;
	bh=KhYacYn8agRhK6lwpeIUBF5NXxuKvYPRR5ONFkMvrKk=;
	h=To:Subject:From:Message-Id:Date; b=ZXlNPylqUhwoB8Sk1jrWT9HPbcH5JUN22ZHpPgg23TQNOJWMi0rE5J0xo8YslQx+Ka/Rkq13MjtTnWqu39R7BIIHii7qahBJ3bVxM504wegO958LpBmv/v9C4ffXCGEIpPXkAQiT4JF94Ayg8HPbcdEObYcbUfpt4Ma3qUD9xsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l9gJDQQj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l9gJDQQj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9351C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728105953;
	bh=KhYacYn8agRhK6lwpeIUBF5NXxuKvYPRR5ONFkMvrKk=;
	h=To:Subject:From:Date:From;
	b=l9gJDQQj1rBQClnActMyy+K4DsRw2PCinRECo17dkg8cejzK/vKKA7chyjhmtWonR
	 rfAhcDf5rJbq4HHVk/ooDEwDR+mg8qOSaJHONCz5rFyxCxeptIcUt/U95L9H0LA5S3
	 PI+sqPn+JE0JYruLcPmM2/3HZY6ReBOnDLo+Av75eZyAwTwB+GhxciwaTpMQ5X+/jV
	 OD/sOxoaWiOKkM70tm7MR3ll/w5BmemL3Oe6OUNb9Y1rVi64zyAOzjO2mDfhYCcvFB
	 IaSrwFuvNFKeEno+aKeFSGRuStmAN60/DQxNZb1V7jW3SwYacmTB8BYmPvSFa6WZXx
	 Gbtdn49FP4dOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C1ACF8861
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172810595368.12097.1662657303617819201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8b3161570c1e267aad8c56d78fce186c2835a0d571d42784c0faebab712026f
Date: Sat, 05 Oct 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728105953
