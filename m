Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C782BE6C
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748860194; cv=none; b=uk3h3MGbcdgos0oAplpdxMxCligNBUcyJwK5tkB+maL8ljHBcUkFxzDGHE8C0FHpSQZqxZP8tLDwF/sXB0EzAAAslNmf5oBEFDhF+9hjQRoT7mf2ciEhQ9aiD66KCNmmXb/WA9auKfbF9w09OF2IR9UUf9yrvDO307pduindoeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748860194; c=relaxed/simple;
	bh=2b1aWm8JO5GGC0c4PD9DdWaELNEr5esadH8UjWgdL9w=;
	h=To:Subject:From:Message-Id:Date; b=pAT2WYx2xLfET+voN/J4+nKDiflv3HCoAZeDwT4nSkKhpioSDlN69eDfn+fwXaGknmCz6Of/7FKoTo0ayQZ96On8IYCiAe3SN8EjHvpeneBjwuvTJKKrhN4c+ugsPkHuQ79LCy5A2X2DOb+h1IZ3H9WQE3FkLgDSn+NJXo9GKiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=afhqwozw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="afhqwozw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB80C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748860193;
	bh=2b1aWm8JO5GGC0c4PD9DdWaELNEr5esadH8UjWgdL9w=;
	h=To:Subject:From:Date:From;
	b=afhqwozw3hEb5a+vGmqI8kR09HZYpWt5gNaNhiuYXVeb+RoNvhDKk58hSGpiUZB8r
	 6SP78SBjow3Uh2gVwCqMs82cHBFGu9Tg0Q53VabGy+7hHrQa89tmQzILeqJfIECuWb
	 9qqMELt0Bbd1SrDFA0Jqz76kYL3zYlxUrFFh4ME3Xq3wWdy+I188xb5+v9iDM2ejGf
	 PkdcQTuashGH/G6Y/5dOGViTR3AJcd7P/3q809mBV3QS/yN7e1HHqgfmJA9SjQJrKF
	 GSUnmjvTj6/4dv9tT1rAkwgug+p1gZs2lVSE6mWQ5vF+IKlAwC8UwUayPvzXpG9Mhx
	 TdaKTW3E3yAYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E790C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174886019357.4128.616122842880051429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fa97c1b7d72573a9775b3172798d54b08b81b3a0227ebf2696f671019643ffd
Date: Mon, 02 Jun 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748860193
