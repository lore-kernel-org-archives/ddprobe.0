Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32258221FC9
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749128994; cv=none; b=onjknrX8xWM3kvzgmAKBVGX5obiFkk8qYw6IOBNwgqS7R3qwOZ5C43nIZMwFVZixhheZF+w4nHhFSPMaJ4vjw7pvRqf5o0T2eE7jU02vd5UKoBYYS3/c8MGFJoPptsYKVWQkZISpvJoO1DNnCQ4w2Ve8jmC+n3YJdy1lYXWj43o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749128994; c=relaxed/simple;
	bh=NoyTRzgc1r4t4Kzl9d9pifQV8iRHghFe9QNq9QNy8MI=;
	h=To:Subject:From:Message-Id:Date; b=SXa6H5DbRoVpFZ4hR63L4FI+BCAITI2T3qxRKjwEDVQZwcgCLVWmcWSKt8/IDwvbInpNg3x7vMZCSDl4uYDJA0Zk7e4PYADtidMKYDzZglRfQL58jKvEs+iv41DmOKS8agYwFX/4IAkOaeztnLuSp98MOG6UEpES5uRxQxy1Qa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ncV1AzM7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ncV1AzM7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A352FC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749128993;
	bh=NoyTRzgc1r4t4Kzl9d9pifQV8iRHghFe9QNq9QNy8MI=;
	h=To:Subject:From:Date:From;
	b=ncV1AzM7IuntQ4+5C/kylF0CxSaK3lXfc2rkpx2+MARClUOH1zWqCWoPgh+VWZ98i
	 sBgGddPcrOAWeYd8VXUzzXxpfYA08Rn/oTX3/Lmbg9ldwIGFve5do9YMw257O+Ivad
	 2I3XCM9I+2Om2fj2WA134y1EemvwqyA0nguaAA5Rrgh9rQZtUEJwDjchxkzsE602oH
	 jDAlbeDf3BTSktadM8A2ClgW5Mt7xBFm5dsd45npRmsu3XOU0j7/KwgXQqQxwr8r4v
	 4XoCW/smNMVB5ufjfN1h1A0GDanRWGmChSfOIM1NVFqoM8+50TBNDuCyZVj0eGbUH6
	 RznENqVpHUSWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905C5C5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174912899358.19000.17997032758918351446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c45bf3e20f262d8e95726879d0d10d2cb6895c0e5a58ebdd2864434f2c25806
Date: Thu, 05 Jun 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749128993
