Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA082D9797
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 13:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781789794; cv=none; b=TOcHwMMaF4Djk3ui2P3uVJmnBmV89ubxt8FW9eZhUPBXvjW/z3hcMHjlYyS/IzIp8apjhMud30Zl+V8MEK0+QNvDDD9lq9wA3/0wsx4KVVgngIt3arrbnHbfFM0Azkt9tOCyeudzJStSzrV8+3sisGQlav2lBtsp7kp4P+6ndUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781789794; c=relaxed/simple;
	bh=YLz1fAuQO5WnCAfLem/NQqvszH4dIiUiIN92cxGLpVg=;
	h=To:Subject:From:Message-Id:Date; b=HA4Ak7XgroMukZe5UsVVlVvHhRE23NLTa5dmSFNSobFAl8eOIBho86KTSdoTcTy5CJQjzPt+mbY2gLMXOhl1JGu1DDsadizCzfjAyIfd/pAP4NtntAqBHtU7XLVWJ/oA/M2bRvND5t60VYmtUtx3E1I3VeqvlcYZd/vD1j9Ne4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VaZdbygF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VaZdbygF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E00F1C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 13:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781789793;
	bh=YLz1fAuQO5WnCAfLem/NQqvszH4dIiUiIN92cxGLpVg=;
	h=To:Subject:From:Date:From;
	b=VaZdbygFG6CWLJ8wcdcVqcTTD7u38I/EudjbFFmDiVFNHLX4TbD9HXgF0N21CQOQ1
	 e7/wX8FrQ4vbDZkyjastaJRGq79l3y7Tf5vyYptSVvJzVzdL+RU3Z55V4L0K6stDw1
	 qbMVWrf1wxnywlbNXlmRfKXtmY5wxOrK9GEjoG08YiaGlmmaRt9YVLk7WLkHP4wzg3
	 rkksMbNpUO1imeUsP0MOgTs9DcmBNHXAJjbMCzj5KXtPzO8rzOWd8oTllUMrEwe1Ck
	 NlftfiVrxiubmKNVX6wzjwKQkNUVkmh4wxcd3d5V8Nvy6Up3bXVrDfpH/VbXSd17I2
	 5Hhv8gn2fmdJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9178CD98F8
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 13:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178178979374.19856.10782446398497182535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ffe65a10db95414d6f8677c7759db8b4009b332637e98be123f085b61139ef6
Date: Thu, 18 Jun 2026 13:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781789793
