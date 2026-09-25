Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DE2EEC0
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790295634; cv=none; b=HGlqRIDgZoZnMLMVOTUxRGqkwQaZKYHaMt9nVBUHwn8ZRU0wxVI0E8cVTD8Wd96/uF7MjbGLzCxzaad/UCtbUBLX2M6fwDP322c7kZdfkkqDvA/wSx4h893XwV78YY0DvB101TLtJADGgR4CJ8ppPRjJswpb31fZt8UfFLw71fM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790295634; c=relaxed/simple;
	bh=pBAftjYBUOAkBroPj/LDPE4L2rIbNn8z30F7zlStmyc=;
	h=To:Subject:From:Message-Id:Date; b=czY1gZkF0KzgFrn7p3VaFV7yckbEpHWzHj+EBKl2QiQ0mwz0q+gikLETXiUSh6vJ8YeJ+SxDNbyhdWBTwFsaHWo04VjAvUuf9Gb00p9uILvoR/5SDFquUGayxiTuhCTJyqA8oFx/5QR7L02BvqsrDx8XB4qXUpD82SYeW3CQZNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=olurW0KM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="olurW0KM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D1BC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790295633;
	bh=pBAftjYBUOAkBroPj/LDPE4L2rIbNn8z30F7zlStmyc=;
	h=To:Subject:From:Date:From;
	b=olurW0KMbzxzVwN4c8t1sjbp+ICfuUD3hoxn0I6ZrDxgn0JSeeKe1VtN9tn6okOFv
	 hM6ngBtksDd99cElpusaNPxPjx7V7xjcNlajvfv/NuMRzm7OKGkh+RfpoBId6ORkVI
	 917eedmTaLvR2YbG/qNdvIQ4wTHtAoYYK1Prswgc8Kib7MUQ7WcIQRCxfjQ/Gk4ocq
	 749BAM+Ldn16V0UIxmGAKzoCq32/IEcGrY8FFYVUWnsMKrIwpOZ2E50z3ODuXlGnMT
	 heqAcf+guR3klcjkf9iHU6AhuibSh3fcr5DsBEY3P++IsMDu7lC+OoYdo0mKFqFDTI
	 FMCXMlfSkXstQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A02C98318
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179029563368.25949.10886268455871323891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a799cd74cc9d3e811d89855c864129ef270cfc4d4e7cdf9556d9a69b63676422
Date: Fri, 25 Sep 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790295633
