Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D2F1F4611
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769887434; cv=none; b=KlPXj6tqumlJrqfpt/7EHaA/5TGFiM9sQ/MCc91pgyv7PslzdIjZW0K/nXJY3GEnTqdk5EpkhN7moosiVjJYjF8PH/eZ5wtqo1LK8sv5dIOwqtDjt8MW6qTMnYyTDX4TIM8VPlZZ+6LejlosWxXOy7AzRxBhvDgu/RIRd29V864=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769887434; c=relaxed/simple;
	bh=G53lsQrwG5r4E15s+d+KhVNDjsFRYUXt90qG1JKHEy0=;
	h=To:Subject:From:Message-Id:Date; b=B4qcUuCE1m01wTCvbfPheVoL2UOn/0a+4tU99z4q5r5BJSjOAkJkThHOR6XvMLMZXKJoBpXzr0kPd6z2KWZ1Mn9RkkB32EF5lqu88OYDc/4/uIAo4EpLUKpseCMmfI1Sb86V2ykWmfkyoLp/8UrjmXTYyAT3pyL/8VCWPPW0pNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gboIBCv5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gboIBCv5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CB0C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769887433;
	bh=G53lsQrwG5r4E15s+d+KhVNDjsFRYUXt90qG1JKHEy0=;
	h=To:Subject:From:Date:From;
	b=gboIBCv5V3WufD/FdcxEtlqwTKFisbDu6mLmcsErIDsgT7HrJdrqMV20Sf/7o2P/z
	 dtfFl/HsceZaIOImmJ1Q9KlDsyz68c5Iy6cOeNb3jhngPJaHSMkMdQpk+oBFJAEj3I
	 T2szfxZuTTUCVDE2XmGZcwLAl30QUBNcKCfR1HbLl9m+12e6kmpTpZEDu7samjTy4t
	 TgTJqi5WSpfv7uiUVg/msH08nDBFCYCvj4jbdozv+bhQau/zORQp8NqlJ6ygCHlpKy
	 wttlvAjLHZih/1zIjUqvB+ahbMy7STCuicuZeWEnUmvuEMqOVymnUbrn/NEi7jI4Nv
	 /jfh+N16xXfEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E1ED7977D
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176988743357.3039.4603302787413625605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cbc22573ed87ba4d5d078bb1ce772b9b662a5e09ac2a8818fc81eab41918d82
Date: Sat, 31 Jan 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769887433
