Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5AC22522BA
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755724193; cv=none; b=LHiRNSLrvzTfSy6ATJ7JnCd1skB/c7vNSuqkHnvPdzUjPY2uyH0vYXY229DHgC/ayyRTyLtHJc44mYDt0v1wAOCDP+xscVDZrq/SnTqaVndp4vc+9CDMvej2FMdRoSAPRWa4GAmM4pvdrZgPT3Zz3LN9g2e2hBrG2+VkQ7S5wL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755724193; c=relaxed/simple;
	bh=JTxLad9vRnkB0fiAp1Rn0y+eoZwD6sf4SQIwO44CzQY=;
	h=To:Subject:From:Message-Id:Date; b=dvJYdtCKaQ4paWZu/t1X76iTwvWUJ0jDabQfLKM5coAb6Hr/34WQbVtC3FgXPXLeSuZ2lNLE8pTZKmGjETfyaQuD7s4imAMx9Z6NrUHNz4ctZOU3cMw5Fm4NK1jCswxc7CuTpcfeRGr5lA52AE0CDBWcB8TOjF4I8Zj1bHj/N/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IgIT0RpN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IgIT0RpN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38FCC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755724193;
	bh=JTxLad9vRnkB0fiAp1Rn0y+eoZwD6sf4SQIwO44CzQY=;
	h=To:Subject:From:Date:From;
	b=IgIT0RpNehUF9n8x6d+Zcjm3sypfvWzQE1sU7mtG/nve8OyVsJ6fQF/RgHGtuZjCU
	 w+XPuyi3B+A4q5ygpwa2aENyuHNzxYjkLX3vybHulEEZOT0b9qkRYMdl86t8AlJooa
	 itPpy1HKYke2WHZzJxiy9h2I4Lr/dcZlQhXdQL8JVjZ87iJUCt70OJqOjHtLNHjP8i
	 JX4EIMRfecqA8ryR4O2ILJv6XqENRwZjtDJzDuSvOk70VwbxzOnRbIIUVWfaZoiF12
	 TJi9WyFxNcq/Tgoe48aSrxaJBQH2KXEPLmwNONhVjdERpUJW3dpnCAQPlXiGGRo82n
	 aKlJL/2vlEqSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9107DCA0EF8
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175572419358.7371.3557189554423889812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5795a9e867d5da42031d3381b1e8d9bd2aff521af3130e907ed0a869eb9e30d
Date: Wed, 20 Aug 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755724193
