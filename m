Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9EF22DC58
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736853954; cv=none; b=BX8fi5zvkzNrTAV9TitMEeG3R0IMguR+sE0hgXl8R/v9YLWu3YX45VOTmimgbATmAM4BVaSoULN0qllocnoo/fOBltWzOdmTdl9xJlzly4WE4VnobO3BVit/vuxDi69z/duigVSp8eMw5EOhmT8i71SEs7tHl0CqLZbwaHgGRGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736853954; c=relaxed/simple;
	bh=kK9xsVOHflSWdOf7ItAqUYHcDq3y8IW1mfn345l5tXI=;
	h=To:Subject:From:Message-Id:Date; b=QtQTjEYr3M6VlTJvlsWx5m7QJNPIcldJ16lsaZ/WlukLRlKWlbTxTb/ebi/RrIHUh3CnlX3AsVIWfnyt07mQOVZMSHYNuFTkCBaE7lVxEORLlXgx1FADmTTZjWLMM3ju8MVu16axNY1Jr+shkvGLyywMa0kPD25c2SiVzMi23oQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rdGWaRW8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rdGWaRW8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24EAC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736853953;
	bh=kK9xsVOHflSWdOf7ItAqUYHcDq3y8IW1mfn345l5tXI=;
	h=To:Subject:From:Date:From;
	b=rdGWaRW82yTly1u436ojecG8TzhJ9h9a/ehVdUl/jPVYWboe9uk8Y6bT7x0z3IMl1
	 ywWNJ8bNQRqXGbcwjaoi1XYLlCv/6UxmBH9oVgrmUAseLMfR9vrIq/+Cwya73TIJ1l
	 fCQAKhzZP7SZqIRwByo82nKZ89VaPPjH9OczJkJ1CCQ4kGZoHH3XT3/X9uXFXTm8Ok
	 t+n2jZT9BVMH+VrrxZ/iUSTFM5fwLsEFJo4GU8TBOrnrogxW106OW3iiIQs2Z4OxRv
	 ZuYVFtxK7PWH89SrGdrxvT05LecH4an2uK6wKuNXApa6CAWkW5lC7/6vmZIlp1JDi9
	 FlgHd4RScRqMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C40E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173685395359.4707.17025740145747956435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6e3a32f58a01e5f11f39ec36dc1dff57e431e39d87736ad1f2a2e45d0a32973
Date: Tue, 14 Jan 2025 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736853953
