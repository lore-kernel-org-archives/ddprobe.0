Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74EF24E56C7
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790957434; cv=none; b=iz0i51bwCqNI/ckjrMJFEhsfsVFDbZr2HC0YAPN4vjxArqFkvQXVPtIoeE8GsEjuHbdbmTu4u0gX8n9uoPPjyV2Sz+7iJ9g4u/zCVe2w+K0H2NNKMG2OJA7hgOb64c198l09ccKTAWQ412sFBOumCQnOxFAXQwUzmMg0g+TKTUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790957434; c=relaxed/simple;
	bh=tQwAaTpHTGSdErL4lHGS0k1KJW8sGkJYoyR+uND06m4=;
	h=To:Subject:From:Message-Id:Date; b=dWpqy6y39sGnvYuMEZR7QYhq1Smz+JNIyLLHjcUmfzdEdfAKqn2EtZpb10loKmjjGDarHQEeygiO1l7l8rUlmydV13pmm5lJ2h2Mr0CACJnMC8p6qZw/abZ44qI7Ib3ZVCUOGXYpyAOR71/c+qAszTrWjoiPt2wOCjpAQXKNvvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yb0gWwvR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yb0gWwvR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA22CC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790957433;
	bh=tQwAaTpHTGSdErL4lHGS0k1KJW8sGkJYoyR+uND06m4=;
	h=To:Subject:From:Date:From;
	b=Yb0gWwvRi3qxyzFQNI96R8tiBAsmfe5CYhAbNL67wenAk4WGKsw7IWACSRgWd22iV
	 pwkXcpeWBGyTCl1jNT3kgKgM7xVJ0qdsqt1mAh3jO2ItvNWdQfrui3KoxSTrPPLia+
	 CQK8i+by8BTNdAbkxXZ5TxZVMphPu+S7TQoVhrZNshoPDSp5iO5ITvI/R47MB/OaWO
	 B7ifx0WIvJ6sA+aTNdICFN4z/+UFMViByUXyQEnUKaBKNnAk7VzvgS228b2SbCRRTp
	 OMc8NjbXElxJQiFqZc830+0OECh3CSdCQjazTwXn6Y7Sn39YDDU4aT3/bMfxOJVrLW
	 GT3E8Xb+IT6pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC1ECA5FC4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179095743369.5074.12678116671924464733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a9a76650ebb69a34f461630bfce226ff54feb8d88302136b33d2d6c3f35da40
Date: Fri, 02 Oct 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790957433
