Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259EF190462
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744908594; cv=none; b=SHem8QmDfpyMFVPlBam4YZpV31d89Hs1La+AYpIhZ3K378qbQZaXUSsxC3FdNmfnA2RrODT/MMf2mM00COsJLXVu45VJqW6xSQNwKf25c04j4Ush22tf1Xub9Ew/ch6A0fJbR9L1JcgHlT5smv+oPGuvnF9lfz0hPrHo8AJI/LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744908594; c=relaxed/simple;
	bh=v3+QiFWXLoT97Bjj9uUEdQDD8KIxBAPuIpu1DDXsv/U=;
	h=To:Subject:From:Message-Id:Date; b=CgsW5kyuuvUnl3MD0Jh88TdlIO3YLrIgmOgoaF3WXZoJN4GD6FwKtsbDIorzdnzdF3iNYoeatUipRve5HHdNmhwui7yfW+/wZ92CATtsUeboglaSezQfPf1h5lkgT223zfJnJUQky1ZYsy+G9b4OCQ25s8nKhzSQ/I5LC0qnOnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LaD8aqA6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LaD8aqA6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49AAC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744908593;
	bh=v3+QiFWXLoT97Bjj9uUEdQDD8KIxBAPuIpu1DDXsv/U=;
	h=To:Subject:From:Date:From;
	b=LaD8aqA6dp4KeGJsaLRMsMNDlHB3H8kOb6quZD4rT3uPeAth8ooRGtzHAC2n5WHBs
	 k9qmuxx+7epQjG5sVpCEk+B/CHLvZUGyuWHWR85/xst29IS/1ybAqZuD+sY63RiQ14
	 OyGDLOJrpJnHNvvxoY8AltGke/9jKTW04LPwxOB7kSa0/GrBACZ5OkIW/ogM0PMQMo
	 v2ibgzLv3yJJdozqRnyGIe4lAz1eIsfcAqcXp6YSgHkAmIPxyAZX2zTVm4QPWttG36
	 dYDl1o5b5Z9WxCCwIGfQ0p5K8b569DOEyt7A6O99www8RnIqUFQfANUEVDKfAFrc7F
	 LZ7HGP4d/1Bug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AFCC369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174490859359.12955.7963028769818461779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8ffd7ff2fa8167ebb2eaabf608ca403e0455d1e52c08d55493761efac9412e2
Date: Thu, 17 Apr 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744908593
