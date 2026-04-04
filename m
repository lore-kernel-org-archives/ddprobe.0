Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F35D361663
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 05:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775281534; cv=none; b=RQ2rpRUO+hmQdF4k9boNUayFEsUKyttTE+0YZ84uU7RzhEZGGXewUmkiQ1R6N0a8Pa21va3m69h/Y4vf1hD4QT92/F5NbnYMUIAQjwWINZ4XJTEHGGNqMkYAdWlyUpspmfxqevgDFQpMt25SDACTuTTSlLraYjfV45hPSdst7RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775281534; c=relaxed/simple;
	bh=WF/aZ2WCWeS0SZNXHfbvatOJyVma0VUpaRP4BLz9gHs=;
	h=To:Subject:From:Message-Id:Date; b=HAepdnExMP9vv177JK9Yjfbo7uagyNEtOGtokkHlikB1JDNiNfBDk4TTDNhow+G8qdGOUPmnTCHUC4OogQusAly+wg8lS50TcW2FTNTqY7Tnd3Ewx65tfo13l+6aPsBwjdp6WX6rCJyr+4G6e8/gH9Io514HZFYrThHKuPPUmQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XrOfuMU+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XrOfuMU+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C90E5C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 05:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775281533;
	bh=WF/aZ2WCWeS0SZNXHfbvatOJyVma0VUpaRP4BLz9gHs=;
	h=To:Subject:From:Date:From;
	b=XrOfuMU+qepEaL+0j9WxCjXq22oCcBJYixYVnDHOfgMT0AsLQelQ8bZhM7gJJTEpD
	 SiWjZqgE3syB13UJrYMlRXvJQG/0W8pQMdCRVJVKI/6+9j/vVYDLRISq7o4KRXfTl6
	 B+d/hzeoCK6ZPjoe2VkJIorGaAGyu8zuyRX4WA3gfyjM7dOG2rtYFdnIP+PgzsiMnC
	 0Wld5/V6ikOl/cVJxobVPE0H44nZ+im9kYSTYA5gloRitGBnI69EAPA5pXds82nUce
	 FC91mk9p1MLmM0KDonZUJKRiSjkZ5jQKfiv68RR8sOVcEl8M1KVcIGZe7dPS5r34J6
	 QmzoKKePRfJJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4521E88D85
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 05:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177528153371.4866.5999498161893623465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7d658d64c2bdb1d2e9eb7b068b8f76492de489a7065bcb1eda3f845b9ba8333
Date: Sat, 04 Apr 2026 05:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775281533
