Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C96928CF7C
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762194594; cv=none; b=qBQLRWLvSrn8LKeMlS0psiLxoiBfp2G45nnrAeEe3/xg0MZxKkn//iy1Pzk+1BdVUf8Xvddq6MNRSPQlBbJQ8lyemgZRtDM0TEChmd7AI+vh7TpAZ2WlJfrZM3xhjNx0E/aH1ThID3MtQQEDNWC7aCU5ZdKav/q6FuAOpC+k0EE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762194594; c=relaxed/simple;
	bh=UCUplbt8RUYrVj9Y5cVsJFRHwGUQ9O6OPq3APrTWJMI=;
	h=To:Subject:From:Message-Id:Date; b=MkfIRiE/oz18/HJnyHpAYIk5Uoff42DpQzJ+yXwT81KMjOtUS5h+xz6Rj4QRnGoYLa5E5+t9riiekO0bzHgAw+ZajfKvTDEk7KACS4Xi+ZqHMTzifV62JkibAt3Wzh5m9pry+fw8e0TN/0CCQTjPHcvAHyxf5IHWrB5HSq8rVu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lU/hn5fb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lU/hn5fb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03B4C4CEF8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762194593;
	bh=UCUplbt8RUYrVj9Y5cVsJFRHwGUQ9O6OPq3APrTWJMI=;
	h=To:Subject:From:Date:From;
	b=lU/hn5fbl6GHKCguHT7dJ95oAJiwgzdnQ0ytRE/kOlR0cExISLWzlpf7AAwTT0l1+
	 QXzAHoNwn5QFXf5ixO1BSbmlj6XVeW6Ooi8u3Kik53n8BB+CzWKbvE+ZrZvzLzVpEm
	 A7BpDrdH6iVl4hl248CAH6afWcSvd4XpSqhw1T/qVxdtGFuzk3RKomIWe37TZjgNY8
	 V0OyIR/Vjsvd+LInczQKJRlurcwaoBS3e4VMKVeb6CxHYqPBg/kkZjUy9GrclKdnGz
	 xksFBse2SgUZPQs+DueDQNvyWnNPb4uldgyuq+4DDKVWJPKXxylyAsnH2PRv2gigDx
	 3obIDq06a3Heg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F35CCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176219459358.14726.10293723463835066296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6014efdcc297688c0971dabd059cec692580a1098a9e80728e3387d076c56a54
Date: Mon, 03 Nov 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762194593
