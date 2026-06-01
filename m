Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE1A396B6F
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 10:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780308274; cv=none; b=fhEBMOIlVO3VSXut3gAFlXx6lqwgT5YRTlNRl2j7oj4vYZqxY5wbzqvfSWMH6ASOeGWqB9aejUKW9+SSKmdUB+vtv6QGWeNUAjGTYDSxaQWSQX5PwZp3MkZ6yqFCrHZIGfUi5y534MHuDFnvwP0oMZE6QPZpq2BMIt0mi0k36SE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780308274; c=relaxed/simple;
	bh=xRJ36ejNnzy4dLaryku5GqPbQOgYYogfkmvxLHPnLYg=;
	h=To:Subject:From:Message-Id:Date; b=FdzdjuRuRe5wyKzoA2CG/9F6XtZHIrHKC58Gf4SxUxoeEqIO8bjkZVlhIhww266e65JFPSVYNtxYHmd65vU0tlkncr5s+TnuYwXtPabGjxTqtgdeZB4oXU8xujNRXmkhk/gT559EP3gNvfrtwvZ0rRGfdx7172isdeYXKDHM1SA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NFqADp6P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NFqADp6P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA000C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 10:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780308273;
	bh=xRJ36ejNnzy4dLaryku5GqPbQOgYYogfkmvxLHPnLYg=;
	h=To:Subject:From:Date:From;
	b=NFqADp6PCb7P/yZxZqJEChqTEFZ6VwTlumJN08b+7GSqvB4uWjes9TDXwW320ElUy
	 8ovdxUSVyDgMm7ZUrZrlwIbPbRQ4fLkOJraqHZnwCq1/TqZE56lpGmawrJXDuyMZcC
	 UuVdY2czSdl89fZ3fzHT5wregQApt5ob/tB8Y6+x0chonIzmSedFCSSlACy91Lvgnk
	 qWq6bbkOoPIMtNgjOFtT9NHpOSGIlO0U5v6F67YOdKycttprJHk7mITynKFfpcXnoW
	 2Ogl2ACYufwVR+YIJ3qbtwqw12NW8OenzPaSGl3KmkJOCOoHzfuU5PrWEeXeMTWl5+
	 Ok6hUUiSBVIaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB90CD6E56
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 10:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178030827370.20547.122868935865672674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f177a4a20c2faf4a07f8839736abf5cc4271e8c6c303f804eef0227248707e63
Date: Mon, 01 Jun 2026 10:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780308273
