Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226802F90CA
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755163794; cv=none; b=m9MT5ajEwrgUJDvHqGchnZJgLsKMvlAlncOEyBbz0XhpOZuELFrzyJmbEa3ftMRRGeqDDVJ7fkSZ9heiSijWLH7Cb+JdpWFI91woVNMSdiAQj8tzaEJpja9GB0ZBP9A+ewBrKYKpWM6USvC++0nbZJcI8J7bn8kLD8ru637mEso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755163794; c=relaxed/simple;
	bh=cgWPgSME8s76SEh4t9BzMhV6wDS4QNsRoEC4B/8OJXg=;
	h=To:Subject:From:Message-Id:Date; b=QOlYiw8hKA4Csx43kXyQ1bi2dt8SKQZxu1mMWEH1kvC4MXV4tfma5uetG6pUL2VKASDvtbFtmYEbQuvt+KnnEunMusIOVd8SVuyrkv1jkjvd0Yo6NuG9qhWjWxcp6taJef7I8NOzntpbh5E5MehgzVTk8wmB08fiK10/KeT2l7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UzO1u548; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UzO1u548"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73BAC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755163793;
	bh=cgWPgSME8s76SEh4t9BzMhV6wDS4QNsRoEC4B/8OJXg=;
	h=To:Subject:From:Date:From;
	b=UzO1u548/nzTWh977qAtI5kuf+5QtKmiI19H3c69Dtj0xH/NoVDZcL+PJ7x28Z6r4
	 JkOznl2SsTLYK4TXwFxpZQF9WNXCwqZ0765TLUIRXRodswwbK3cRP2ykBNQ/ldVFf8
	 YONfckLPBOaUPmxMFO+bZy0RE1KLKE6MNH/xS9UknyotLl1yyqjqCL4lCIUivYKCFX
	 9x4mIe+mwgLOHKxRKwhbn4k3mYGy+GLakbK7rD9bfGkBT1r8WoFO9HXtwnEybyly8l
	 uOUPx+UBpWb6AEG4pOhrfXi/AONdn3umMaUnpEo+72tO/+3kEGHWLOG9lYhxczwASS
	 HmPLcWr+3aLFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2B3CA0ED1
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175516379357.32761.2731868010305215876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 805d65e7e20ce64a4459d6a5b2e3528173a7bd3c0835cf9ae2ee88a134d9d7b5
Date: Thu, 14 Aug 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755163793
