Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1201632DA
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731560154; cv=none; b=ROEimsyTce+/Eov1uMQx2JEKLxstOYfTDFq3bWygHNLc1/8yPEPhrHfL0VI/NakUDx0osyTwfrfok6j/iGO1d4VqbYlllAYmH9tGGtdbySucTI+8AtPkxtHqbP1/A6A3rmEOvK2nj4DdgRZ0Dg+CEQY8UfZ3tKzXQBRHCmWfUEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731560154; c=relaxed/simple;
	bh=B7lox2GvQ80B8jm1n+njDAmeOyG55IcNWlvClnmg/YQ=;
	h=To:Subject:From:Message-Id:Date; b=ed5J25ZWHW/bK/ufZA9voFDY93Rzg4GoGS5se6QzpPupByxTQKph9LM1ofyVC1+IbAllyhgQcsKOawzRoqO4aXEKYFGjZqPj0uH/B9K6psVuvH4BKgdpc0g2OCk7c6jIJjmKZ91bg3x6Bk0YMYRfeVbowVoFWmaHhsISVE7aNm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TtI7hBvC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TtI7hBvC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3294C4CED0
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731560153;
	bh=B7lox2GvQ80B8jm1n+njDAmeOyG55IcNWlvClnmg/YQ=;
	h=To:Subject:From:Date:From;
	b=TtI7hBvC1t1jmpq9RWDSC0FNHZvwhOAxHX4/in2wKSaRkCede3sOqNkcrAkxICX6x
	 qnTak0PsaWUmAmlKtIpmmnIbq1BEMBofy+bS4qByoSBjqU6u8C1+hewmEm/W6uk23Z
	 WEDmued10prmlsxI9K+Wnt7MUaaNmctRqBWxwrtjI/I7rmcQBKYgsPoWcFtIKy+3nm
	 2KCF4eHnRTCurDcjp2/P+rD5PSHCFDmW0iwTTLw5Xu6xRgDZ3JUs+nFGde1ovnjiiD
	 isgt8kq8N3ookKwI/NBUDQT5hWOp0rzVfrlyDbbjrQLszc4yAlJyRq/0gmDaxla1I/
	 fp0J+C/4RqL2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9292BD41C35
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173156015359.10450.15793423946431079600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 404306f4cf49b8135a23effad3c120646ed117ac8bc15534f5b4b638a0d4b57a
Date: Thu, 14 Nov 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731560153
