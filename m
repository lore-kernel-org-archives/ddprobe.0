Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D09215574C
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 18:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713207563; cv=none; b=qwgLuy8AgysLKRGKAKVlzbKRSgPTnebs09Ga2Feogx9rTP5FlYdPwtmGsQZ0dhooPO++Gj40ROK7dGpVa17SoudipAPkJ9gXeBtqauTvg0oB5GbINRS30/WEb846XbR5EzDzb3Y1PQ1le6kB2O9d0pKYZyPCAh382Oe5JmBYVNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713207563; c=relaxed/simple;
	bh=UAROet3CpkPuYdY+YPXxmdmwsh4b4FzCsvSan1Hmer8=;
	h=To:Subject:From:Message-Id:Date; b=ExChm0MXSDHzonipL8d5+A0/QhrJR/lqmRgPFGgGanU3eb8frIatZ8EhUEkRcXCRtPqRNC/1CxDQ+9cGGekHqOYO4J2tlXv0OB/0qeE6kEuJBBsXSIKK0yHR22RggPGjUaHDGGL3+3OiviDKjn4kKJIynRj/A4c+YFWRhW42J5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eORz2dTe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eORz2dTe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D545AC32783
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 18:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713207562;
	bh=UAROet3CpkPuYdY+YPXxmdmwsh4b4FzCsvSan1Hmer8=;
	h=To:Subject:From:Date:From;
	b=eORz2dTeh3U+9mjlKLKIgFkZ1LEQGsOb+wK6w6Uca1AZPpSepoWj1E2RF8NM3d/Rh
	 adLLG4qJ875szRZHZnoWXAKcude7YeEI/958QxNRlCR0lzGzEn34CWG/FMN/QUwhw9
	 graQUoq1hba/Hxl72f7doq5BOzmLxTXLkQ5J/tr4/YjgzFNqo0sNlbkmwZKjo0pEzq
	 mETQ9QhNNDvgrNC2dwOzwyixmWlWFTtdYyVH6Vcwtn+y9b7sTS9eTFUlpenExlr0eF
	 Eo99y6iJ5axS7+d8/FXKp5oeKxhCn58GBzDXITvBjE+2nQ9ppMem6MUYRG2NiDpnvu
	 MxCFT0OQZ1nNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C35DDC4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 18:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171320756276.13544.13663165629269118523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 183c3c7cbafa9d5e94bd29ce155db1a76895c358e81f4008af14f46a52037243
Date: Mon, 15 Apr 2024 18:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713207562
