Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FFCA2744F
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 04:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775363134; cv=none; b=SAan8pTxlXfwDoLv0MilaaS+MzYkPubZY6UlEfzBFDsizNhic3dLx24sOco8EhI9X+4LuRgUy+ENx8PVe9sXHYQYjqkXhjSsZyT+oXQPdONWh4LUFjlbFzyIKh7Uvz/o79CXps0bzpSJsxYVm2r2EhBAkdT++rpOWY3I/aCZyYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775363134; c=relaxed/simple;
	bh=K22RrN7mEiFJ2tlMpEL+e2XeBwOfp9A3qqn5hKFTjro=;
	h=To:Subject:From:Message-Id:Date; b=pgqOoewkpuNsq5KGPETjo34JhiFdRRf3IFr6m5/HXi25yXJC7P7NK6BoNqkpvmvuTBhVAYHx6rmGAWiqFV8ilmK6ozwEK57wieJJ1pfxUaYGlasrb1xWsh0fruNe+CLLMMQtmQjO/x31wR1fA0iJ4EI5lSuNUmjaDQz1GWPNHkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dUjxqKrc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dUjxqKrc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D84C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 04:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775363133;
	bh=K22RrN7mEiFJ2tlMpEL+e2XeBwOfp9A3qqn5hKFTjro=;
	h=To:Subject:From:Date:From;
	b=dUjxqKrcw5TMtPVa0laJZ+A4FMfy02wxTtXyf6HAIN9yaLa2H6a1UpB/mrtXd6eYA
	 8Th12OS8/OAm1qXESNT11JGcHFFs1GxbCE6eCGYI81llI2dAilyoAXua+C3fwqNgyf
	 p6OrLPP3XTrIErtCNsB1V5OwL7K/Z/9D7FTWuHZkQvRrIl1XjkI8NoSvg0MQAr8Zl0
	 D7eJqZwGi7f+/sHQGpIW6ZoerhFNDjpsy8KbELo/d19j7K9cePl2zwzYbRLmGrXGN1
	 DCSiimrFoE8aAOygy/C2GdMp5eOxdhbCmBoEjPFyjVoNZOq75AwEIQk+30XUL+L3F1
	 qmq6c7oBeJXBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCCCAE6400F
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 04:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177536313372.25669.13412374666511974545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 801939858cadb9add98f47ac39d8759c5430be8acbd795e3608f3b31e3740d8a
Date: Sun, 05 Apr 2026 04:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775363133
