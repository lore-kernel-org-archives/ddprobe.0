Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA4718A6DB
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770467634; cv=none; b=YEsxS0acwqffGaMhIgtVqYC6VudCi5ZSm9EjgoKso+Ab8QuSi5th5NWh4mz2Y0ZxRLM/bP3QTU3AnG597UbtO4muVQTpTfzU/V3iOT0s+29yji67tbFlKAYUM+xbfpIEtbrGaXVwKunbtCWXYggo8YniY753N+s/TMbHd6HiEVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770467634; c=relaxed/simple;
	bh=iAYRJyavBlxmFee/lXO8v7pD1WHaVSe3amJGubM6Odw=;
	h=To:Subject:From:Message-Id:Date; b=GRGbC0K3NpdlvxnZul6IOa2yBnRGGkKSFOqsEvOhSPW7MHD87mEqyPqi8bBKmolpyjpRMIHQEP5KVAoNRNuHaiPV9g/CK01dsZA+UvAPsJAjJhOu0c3VAD/7G7X9pWuaDc3WkUMIgMhEOwmhkzznOwJEUbAyIg9UwT83B0SEg5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJBIl8ht; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJBIl8ht"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD118C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770467633;
	bh=iAYRJyavBlxmFee/lXO8v7pD1WHaVSe3amJGubM6Odw=;
	h=To:Subject:From:Date:From;
	b=LJBIl8htNtK/dwZD8ufpcYrSI7nC4bszEcsGbuJqfZyAqB7K+QGzI/UHxSFbp5dBr
	 9jSUHFUfV1tBKkalPIgEkARE8fvWyKij6B2P95kEjYeUHO6kvu51gQjGMil7th5878
	 U2/kvF2Drh1vyqQP+VYXh9JlHqP48uzDXB8LzUc3E6/DHI2R0LJzUYNA4/389/DM4J
	 UojKVbBwM+cFXoUK9UwCbXE9UKJXZ/IudEeXnTvkVtOZpbWgdtM7l4DbEEY0lsV0L4
	 OQruM1Tp4WzzS9e5vw/JhDCe1tFxDMZyesDFTOhQkwzA4v49qvpt47vzl8piJNCCO1
	 YMEB4+H5XqCJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EB5EE0ADA
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177046763359.5178.614211119408964989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c57adf628175d2b6c64ead55b082389e09c750c513e5efa504fe3c4ab1fbeedf
Date: Sat, 07 Feb 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770467633
