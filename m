Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4F985923
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 05:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720676843; cv=none; b=qoNMt99uxbO/g8ctlQEpHfmBYNC2YjI99TGmWMdrXo0zbh3zFpwNOXaCjk0qOsaLKmhxbUAjAxrmmCThkFQt71qkuKZxOIKJu+t6dRreSkNKD3AH4Ixtjt/P5la8Y2nim8SuZ7S895Sw8INc+BlSWgrIJVViGl6mNyqR9MAjClE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720676843; c=relaxed/simple;
	bh=9dTaQWsTEIOnjh/+xA2UucoHXIG2bCWXJ5gMezPbfTY=;
	h=To:Subject:From:Message-Id:Date; b=kdzLGRdNOSgsdEkOeEZHsdhDd4iofrA+EyjwVWmGHvMQtwkcbyWEf/Wz9c4sJWSGnE8QaWXdqx8Z0WSaQcjMMdX/aeHBDoIejLZ09fCObSch+OgIhvSPrq9XCZ6NTPalzetQp3f4MaocESiEUSclUeGBcfUAHyjxYPf+Uxve6MA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jqrCs7Ok; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jqrCs7Ok"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2533C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 05:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720676842;
	bh=9dTaQWsTEIOnjh/+xA2UucoHXIG2bCWXJ5gMezPbfTY=;
	h=To:Subject:From:Date:From;
	b=jqrCs7Ok4mVioxl32hYhQcMSQY35Ubk6VcqBZRU3S+E1m9HPBmL44t7J+LevuKccN
	 D14U5rwmicfvtL5nNfGmXPv0UAsyYP+JbAQWb6aFyaZgwoqkz/y65/BOpnT1Ph5P+k
	 8mFpH5xMIkNoys3Km2kF6kkPfNbBULWsU3AaCZsneZXb+Rm3VTmMxCjNNhgGegRstT
	 zMH2Ntii3mTxBHJ00emtB9mlG6GfP3Ns0IhMywsJ7S8oAF2js95iwmI/0n2BM4/43N
	 5lfWRYBrHp3Ld4xmytXR0On6CkBo0dWTip4aetjszy/hLTFyKKZwWZqngeQZpL1DhV
	 uZQX17utW1oWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB151C3271E
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 05:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172067684280.18296.9444845029692790078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abb23236b386e097920cafc4b0138db7fd06935192dc344aafb4243d90867c5a
Date: Thu, 11 Jul 2024 05:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720676842
