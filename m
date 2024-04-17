Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40ED46BB56
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 09:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713347363; cv=none; b=QOhoV1mC1To3wkmV3M9AELkCnnFs1Hh3hm8lxZfMLiyucSuV/BTpTFCkAooXjfNRgnQ6mtaCFTQaQ91MlioBlz+1coTMde8pZCA58F3HxZl8AdpOwkVzAjoSYFVqJBjSHr5UzBVKucrZji7cuwKTDgWrbOQgICvGlI/spkgQP24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713347363; c=relaxed/simple;
	bh=iokzD4hTCBcOlteZp3U4F2ku0PiXAp5oXjl4dM8meHA=;
	h=To:Subject:From:Message-Id:Date; b=qaUzeEf1pNjP2/N2PHq59QlmP3htnXItf1quvgXNnsjJ8329tCCDsjndlh0qGn/27k+/lFYtV2tVn/OeevHXtip4qP2TIMKXfxnZOJC03XFo74/lTzr63BRBQpyQ73Y0k9iG4i9g2Vs3AES28QDDMh2gDW9oY/45XpgJMbR+tJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kubitoR3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kubitoR3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A5D5C072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 09:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713347363;
	bh=iokzD4hTCBcOlteZp3U4F2ku0PiXAp5oXjl4dM8meHA=;
	h=To:Subject:From:Date:From;
	b=kubitoR37IhYZuGWsCBiUZKxPtKBMjDgAeq2HLUeSWZCktXlae6xdy+roQxXn4LiX
	 mjqyKQl3aA0O1ID5mAbcaGZbqD48nDh6LNcu1QHH8VdbAypPt+ZuDGhwNI1JykiQbR
	 LgTVYZjqfBn8rs1lyyy1Nfk6oKPbKAXm7su/5RBK6emsNVhJb4a7T2N5Xpd5S/YXFi
	 lczA1cqT3C8KYEicGenbmnH3kfDMQAgeGAmQUCkjlGezaro4juVO2dI8TIoB5U4+9L
	 FdKhX66wVbes2MEMKH1uFvht94TjyFA2yQ/wM27TL+RdX1Mul+5jrUUPgWbro3+K0f
	 gfWHPaOe2wV2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1BDEC4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 09:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171334736286.18852.16485579061248455088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb88dd4e1a55e7bfcf346e7175168088d66f639c7c3c7b53cc92aa2c3a6be906
Date: Wed, 17 Apr 2024 09:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713347362
