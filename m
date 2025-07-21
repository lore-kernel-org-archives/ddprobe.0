Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1956428C5A3
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753089594; cv=none; b=heJIEpAhR2kElxI5prPFmm+52Y6GeVeBDRMH84ycrPbW/B829XlNuwEBM5sfk2JOzvIhkywuiE7nxMYPXV2R2KNA+QY+O1RQlhr4U5eV9CnJqH+oUbuJ+Tdkfm4qTdA/duaN7BaqoQDSFTNQ2vEZulKKx6VH8Rf0wc0RmuJSA2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753089594; c=relaxed/simple;
	bh=WlRJTIrD3x3R91F5CpGfp7S3/sCobug+uyg6d7Lddxs=;
	h=To:Subject:From:Message-Id:Date; b=kSu96sqOgjNy0QXEtj2wkHJOgtz9NTra9akoArebmOVTAdl7KnRFrnZ2Wvk9+Yd6XQ1tFfOx/a7ovPz+CrT8YWBaIxBSIE3Lbss7olmqmaNDfgO+APkM536YMO5+ZSza47O4WrE87BczX5IIJ+5Rs1UCaSGvnGZ5SMA3L9S8gzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HJizewed; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HJizewed"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08F7C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753089593;
	bh=WlRJTIrD3x3R91F5CpGfp7S3/sCobug+uyg6d7Lddxs=;
	h=To:Subject:From:Date:From;
	b=HJizewedFPm1t8CHYRUUBqGETtDFNrUw1fbb6N+JrhJLBPww5MIAlxVyjvQmvE8IC
	 fAJEr+0KC22vYiS3GU4aHU+pNVO/mVm6YcZOvcT1fpRV6zALp33rVwWZiqFnj8MbZP
	 mfOrIovzQgpnYQl5HTUAoPX1dO4JpdjuDeWyCTkEEEtB8CwveKpJZHHa4wDe9ATFn5
	 83Sh54uR9K14xIsSuclPdssfdsnZGiVmChIKpCbsGHbDGc3oqjvX/HMsL21oNP+qPt
	 5RHTDhwRL7YLhFIl4S0KAMAUc/5EL3h7G4CauqVCveU1h7X9zxn7oRaUsRAAhwnEB/
	 rOpP88OEcbYQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCA1C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175308959358.26413.9217385785328870053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94d714832ebae40e8bf48840f2f7097e85b9ba018528bf58c06d26548e851377
Date: Mon, 21 Jul 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753089593
