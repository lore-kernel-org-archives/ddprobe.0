Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278992745E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750588194; cv=none; b=DuMqTX+iPi+8id0wvpYkaFCr0aGYuVLBj8eIn0DslBohFJYrLOrn7sXY5eqhmXNZkK33Mh0/hK+34B5IketDQQQctpIp4kq7OJdB/zs4GEYGa7+Bd5V6LGVJmXodGNvADVceYmddOkMv43bq6gH+GVBWDp+8Y+0WbGEyBGiecxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750588194; c=relaxed/simple;
	bh=h2otICWdjg7l8x40YhNX1xieJt4EpWyC72UOYnvra+Y=;
	h=To:Subject:From:Message-Id:Date; b=LM8pXUrAyjyczQ4f/+fu+Vcf8pmj1QJ6OEwSLKeG1lKFY2atuG6xrOfbpXHPSUrlwej4eFNL+TBlJ0CjdsLh3qUalBKGD7x6Djxz+EPDSp/JLMqfvnYsP78/cHB3pZpgLQuIdrfc8BixpYBPntOlBmJNyRWbFLjALtcytq+idI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QS43V45u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QS43V45u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CCAC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750588193;
	bh=h2otICWdjg7l8x40YhNX1xieJt4EpWyC72UOYnvra+Y=;
	h=To:Subject:From:Date:From;
	b=QS43V45uqJnRJYiPPkPSqCj6ezVJzsya81c6WSuR46Gr//NscO6ylhMeDTcUT4mob
	 0WzvT6+MsF85v26nWJs9nzhheYEmcP0eAh0LcC7Vhcz+MAhdoj7UvQuICBM1Ni6V1k
	 UQNTDil4z47n99/hqGDL69St2j2irb7LGtJmvRETy42QIMya+7ve8NX6z4FWRC5jlL
	 YXNVbz/SAvJb/ZV0FAPvaGn/4JK+AseIs1QWbClAfrLsEtXTU3Guws5PkdxOt1gcAd
	 7LFVh8VypBU5saBWlgzPGQjFdx6GFTRBw3id564nSCZPq4RVCxOGBTcsLePWOxbunb
	 +Gjm//qcIvPjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD46C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175058819358.8014.9374684582459748215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0916655418f8a2f26dd7fb8232eea7948dcc92537ab34f7d77792a43e5a0dd06
Date: Sun, 22 Jun 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750588193
