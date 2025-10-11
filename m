Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB3C278170
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760185794; cv=none; b=RnaA7sgauzUGNavVPS3DA1/C2ZhgL+hy/rkgxgEJc133JyBg2I5fZLuNkg3cHcFSEy5lWu87ov8+fS45Rmr9e/EMjNmsx7JDpsuNwF5rfWEMyx4/yihRqmMaL62SYc9wKCseB/plNgSyRAsKrw6ddnNJq1U+YNuIhaf3578z974=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760185794; c=relaxed/simple;
	bh=5Fhw1uAZEvr5QRzLbsIePJ5eVZo5t5BOarQA/oqtEWk=;
	h=To:Subject:From:Message-Id:Date; b=qhNE6Oj+bbHZHyJt/qPVrb4YzU4iDfqBGrBJ5txsKOGsckISK688b7kVLC6lGewaY8KsZqwebx0MkxrkZ5v3VfYLEzFjTEfhbc6fjkrbB5OJmc5mKRn10k/ygBiw6G/bRHCR85xnWMELlUZfEe13f62TQmLDfTsX1FcLSm3in/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8QCNbQG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8QCNbQG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0983C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760185793;
	bh=5Fhw1uAZEvr5QRzLbsIePJ5eVZo5t5BOarQA/oqtEWk=;
	h=To:Subject:From:Date:From;
	b=p8QCNbQGmI7AR02fh2BTwKdsYa444qK+iN4/uF0Emni/GdHJ7cnMFl5Aa8oMRsv0K
	 OwFCzTXOeKYgi+AM5GsJ1AFRRboGOIIhBlxhqlXUS4IlmGQjg7rzgGgBx5l1PuHxdC
	 pxOZ0KS19GxLXlyDuVYDNXGHvMGqbO2a8B5nVULC0ZZFsxegeGhMUXihsoqcoaj2Ro
	 T349aqwEsaKWM21cV82S1KcEk1z0cGbjd88vPELXL6T0fw6/dmkp+dxWd3Uo05W8FF
	 s4eoUyuzLHVpBcp4dvuvTmhTloxLHB4BhnqK19f9IIbMkI5uqfpEX9wooEGac+mrWT
	 qsiX7+NG80h6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5BECCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176018579357.14781.3986691236630238705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7730349acb4103e05c606ea9df1d41c68b53ebc71418b1dbec41dbc729cb732
Date: Sat, 11 Oct 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760185793
