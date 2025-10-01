Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C204E253B42
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759339193; cv=none; b=bO+gb9ITdwPJN+GBx9+wx+BTzjG6GXGKrsw7Rowa95o1Kq/eDWAXcQUrgpJns2TI7B/FQPiqeSBg8ckOHkq2GZ+2aDxkYftHPbA0wp/OXGNXj90C8AGzxU7ojwKnLxMX/woc0evTfv0YEMcH8cCz8b3bOkwcxG39+AL3xBl2Kh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759339193; c=relaxed/simple;
	bh=MiL2/CcNZTq5iUBPvVLa3sWR/wEur7k46FAFt///tdQ=;
	h=To:Subject:From:Message-Id:Date; b=AprsBKDfin9Gfr7B0IBzfPuJV7fLKfVl/o64xeL020jQuLw7GN7TSLNiEuJ6EIcYB+WcxgsgibSzbmu/uFmy2etgpUk1Ja81hyewyKSMmMLP3IUUx0hxH7lE/7Ld1DyF8kFXjREswmrdDpckb1DLzrV5nu0gLR6Nnasq3bgBvwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YWe+YeoO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YWe+YeoO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18E7C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759339193;
	bh=MiL2/CcNZTq5iUBPvVLa3sWR/wEur7k46FAFt///tdQ=;
	h=To:Subject:From:Date:From;
	b=YWe+YeoOGQxsDbvHVEo0xOs9+wf3rdjuYOGXdL4pgAtcZl9ept6CQizefWq35GiNh
	 FfrGpLY7p+LjjNiDgwXOyB6XVCbPNdNjcBp6E52gIVXMQSiGR9Px9CPmdKBYbQoSCT
	 DKelC1NZkfKUSoR1UAJtYV2DEZIBGSI4+XA55BNvG2BptCEtMotNfR1GDcWlLEPm2r
	 LR/ZpRaZPuPL1RXzym3R8y2V1jfmoXhIAw67guDNdIzdVKxS7J8D4WSspuncCD8qwY
	 SXgcdCytsuWco7xi48RQQXZo6QgSRWp2HwKEIQsyTCJCXq5BwbRUGswBJQbO2Vqy0I
	 h4a5qM/XxMgeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F861CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175933919358.5399.1577956458734874235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12c664a235dce87c00fe09f70f6612d2caf32125f8c8a11b445eaa706a2c0e8f
Date: Wed, 01 Oct 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759339193
