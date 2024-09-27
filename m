Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F0119E987
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727451354; cv=none; b=DdE1yahp4OEDR1HBCRQAsVGzXircTnmFjRYmrY8LcOFt5HisH8CU/TS9VNEgEV4e69e9uxHNAfDVdqB3kK80F3N3ni1uPdE59BU8QG7uXBJgOzgTgGPqGqskIL1GacfjVwgPH9KecIrfFU5L1A5Vo3rDiNgQ61qgy1VINNjOLUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727451354; c=relaxed/simple;
	bh=UymUkGizxrN/5IxJ27c6WDQJF0fAK5vLEX7sfnSgm/o=;
	h=To:Subject:From:Message-Id:Date; b=RJUTsRuvVldqUc0m/28LV/qGplfvuibZ0R7o+jJ2NT3Xww2bzick7b8h8/y7dAtu/2/aznIo+D8HTjOzEz5tPqqYs0ScfNnIlKsrpJFI0pmcaMgKITnHclITQyo0kq04nUdeZeLh1S7yE6BU/8935GhcFXLxrcytl8M6ruwz5JE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jiFELuEa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jiFELuEa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22C5C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727451353;
	bh=UymUkGizxrN/5IxJ27c6WDQJF0fAK5vLEX7sfnSgm/o=;
	h=To:Subject:From:Date:From;
	b=jiFELuEajmioA/TMfO9aiKcizv5KEzA0zG0/dEciplfZhQ44/2ckc8B+oWKDlH2ZG
	 yEDRcrYs+4ZvLkRD+BjDhySv7tP022+AaBLxfJhrK1CzYjefTvFrvXOqHm3pj0s6Sn
	 7+g/wOBw2quPI7KgBvuxA1hE9sNp/5Ss0IAbKx6LY2XT1egM9uMLHK8SDi+tuhxC1z
	 A4AOdBvfRKCg58WTEsn2K12N/BdKDZynEI9oQFXQmjxASC7NgKKqGIlRQ5fwVbzRaw
	 n+rg5IQRdic66LqaPJcqaVx3fZWkzHIeqrBEVaQLZ4AFplAwUtBEI2E1b5lbxfsGpE
	 ANqTJ53jPf26Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920ACCDD1BC
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172745135359.17592.17192590796463605720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6536db891a3b629f97ca8c133d4aee8961912549dc188ff9b30e5e6c18c276c
Date: Fri, 27 Sep 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727451353
