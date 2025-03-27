Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4924A207E19
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743073194; cv=none; b=llZNISU12QWJQfX6dYNGq/95LcfOxQXCHjltJdWlzZmrpZzcrVePd5c/W2b5piGSQ2gIKoJoJKnFuKKogxjTXlPdGR6uZMu+v1xT+6KR7UpCeUZkbI904CBuWJ0J0558r/E3Wa7OHAhyhEWv6TX/bFGSBG6Y1M1py3/sqUmOsmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743073194; c=relaxed/simple;
	bh=bV+1liZKo8iY4BWtKG+41JrvudqxbvGO7IyPV4G35hE=;
	h=To:Subject:From:Message-Id:Date; b=muM8sgRimJijXs43N3WxRSXVmrDTcyfJjbStLZWEXP42iAtyEvyWzRMKZtYPk6Sa0mPBvhhxxJq4cprcDvnfbGYuSoNFnxXZkGS5A6pehJ4TT4XwjoTT8jUgN+lCfpwBCZR+oKwQQyQewVDygtCnoiW9qm5ZJQdwdle4w0brAEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KkBHCrJ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KkBHCrJ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF4CCC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743073193;
	bh=bV+1liZKo8iY4BWtKG+41JrvudqxbvGO7IyPV4G35hE=;
	h=To:Subject:From:Date:From;
	b=KkBHCrJ692b3vWUUcFLOMAwRYcqXhs4ZItimlZFAcBgimAq670kvODKr8dCLZTsbM
	 yB3F2R7TEph/PFUe/cQntm7x+mKIEuKRfG4gRd53OG4sRYC388pa5I6zwOkt3VXBNu
	 pGhyphMoCOec3eZ8mND6ViNbMCTGlUxr861025npD5yRlmlVQWRW1V2WokS1jaMlqh
	 66gB2+wqJMb1GFXVzLxosezvmKPsKw4L+WhVhEFHLyZKAlQsJfJ0OXvqBRhxvZblHe
	 b4gkDV+5dWoNpoFi1UzTE7BSVlydHVZI6FaHWJ3MW31dn7E1j98U63bDLOt/IbHhZg
	 ky+CDbt3jNWyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991A9C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174307319361.17061.11602959285886810557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b06e630cfa7f2a3a89e59bfc9ef74544b2526cc071878d74ab6c71a9b0ee48dd
Date: Thu, 27 Mar 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743073193
