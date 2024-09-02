Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2547A8F6C
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725240354; cv=none; b=PtuJi5xGGJDtfr214IX3F2UIv7i+WRjimV9SDTCMhrHCSPYeDDX52TctUT17Ml2Xx3R44Lz7teyMMWgeNm11TxFWPIjDaa/wqDTFBQ8IZu/SWC7LiAQdZiwCezRi+ZhG9jmJnli4qAOLU/197XgqIT3S9CZaEk9t6ysjhyzbLv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725240354; c=relaxed/simple;
	bh=DHzWfs8GGk6sTQa8dH2D8HJjSLq4THLR251PvGTAVG8=;
	h=To:Subject:From:Message-Id:Date; b=SUdC3xXph+6mprOc/a0M7tgOSO2W10Dz4ZbBNO0SxmNv83IcmaKwGuh1sY/Kfvrw8H8LEZ21MM2j96Exo1BL5ykzGMP1eMoIsH8PxcQHaauOKgqiJjh/BIvOFxTrjKlygZMRlbnGt8lBcEbTSwzXw6pcM3Dx6sO1AYwGp3j4kNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dm1HgVbW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dm1HgVbW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18DFC4CEC3
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725240353;
	bh=DHzWfs8GGk6sTQa8dH2D8HJjSLq4THLR251PvGTAVG8=;
	h=To:Subject:From:Date:From;
	b=Dm1HgVbWgaXYhrdQc0C4ZrGnt3re6ukPrM43YOgLxtSi0W1NHE8FN3uIlo1nWbjc+
	 EsSsW+VVpySPult+kuZCCKDGxqeW5iMFS79T4QxOXrZW8R4yM4R5qM0gOD4/lEB9fh
	 4ExJkYoqGwzX7lT3Jokr/R+z184h6Ta0gdD5ln5BQSHp7DzAxSqXhRpMq8F4iCp8O9
	 itlwRmaDFaSZImTBiVAlrPsA8QYC5ueEgFlZeDdUu1sx6qPxFWOmwliKv67wg2PjEf
	 Pn6CbQYBfOYfqqQ6/AwmrYJdGtnhOyIlRhDt3ZxHtfAzbDzM6pH7VRXHsTopw9/7G/
	 CGBz/8Q+6P73Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E9DC54FC6
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172524035358.30506.11811531030199155161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 483d3c5e88e3f3b0a9970110cf2c3b85f5cea439f0cabd967c326bd938612b12
Date: Mon, 02 Sep 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725240353
