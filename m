Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EDA62C235F
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755623394; cv=none; b=U6iM7MTRR5H908c371/Aes8ruVNEEYXVcRp7idUA3YAgkIXNR8pT9BTNxxbsuOXzF3UauN5pNU3eu2tVQWPIbNNaK1HvYmKj6gwJiTjCiGNBKxi4V4JrQTEugOHIEzzl2DhGneM8KsGHdeAYmMJPVDqVmAuZz2joqiwg7NOYrCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755623394; c=relaxed/simple;
	bh=r923UnnDhU++54+V5S6nVWn3IO0Py4ydgzgTYwygC+0=;
	h=To:Subject:From:Message-Id:Date; b=WTYmG2xO5eqaSxe4E3NB28u+iaGjRc7ZsF9ANYLw0i7zeGD7o29xt18bHnNRVYssDdxHyt3kq2dXtD/hba1X10O9vjNh3UgttTiZF/2+o/+p3g+aghO8puQMZzUmikyWv3GyPSOBzbqjBQ4dFhO6xhXBare+ZOo6orZFDBBxRxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WWHgYMDK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WWHgYMDK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A113BC113D0
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755623393;
	bh=r923UnnDhU++54+V5S6nVWn3IO0Py4ydgzgTYwygC+0=;
	h=To:Subject:From:Date:From;
	b=WWHgYMDKu4DqcyVwxyyjcrAt2AyDYAn0HNgdJl8xh71xIrH5TeXWvnuJK4nU8m3Jh
	 tndwZMHjQWmoAum7KieksIaI/xePEFFup/lwvhoz9iakjKoqu5a+zDx2eFM0NFKJ+b
	 39dC9HmnUbQfLKj/d4N6v+1p8DnK8PirtAiXhVZdARugsjje20+8Xqt4iVxHiE7L8s
	 CWoua7yLHSySxfCH1rottNYaxyH0TJLPhs1hglaTCM1dCCMLSe3cCPPfgXwcuzqn7i
	 3l8mXE/5Gr/KWjXQlBB/Z1cbPtUlVsdkd2GjppcHtWCUwXlfX2XqCKdcSPIBjRb0d9
	 5oiOZi03s6zcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF9DCA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175562339358.16869.13800772100061594712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 762c3d292d496092a85e96059146db2c152bb475e1a544dc2caae8fc34020600
Date: Tue, 19 Aug 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755623393
