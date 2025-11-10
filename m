Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325751F16B
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762742394; cv=none; b=B78eXel3jvbDIXJvQZqaFjNVrY6CcwWNPv65IMf4nz2o8TDABArQqC2y5IdLBTpBf/ArdiPCVvMC28p7K3vxAT36sOKrw4UICUdSBO4wbhJiRvVMHBEdK+WqqnKOiG+Nqyz++nPIfWdLgbqJVUjXBcEdHO3OAFWbbqJ89S5vxds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762742394; c=relaxed/simple;
	bh=Jk6/Rz9IuuGA631/4ETpA01WpYPxoUi89StmluCUe7I=;
	h=To:Subject:From:Message-Id:Date; b=CYOSzJPa2OGRxW68eLc49q/q7xdKbX0zEaADIBwYVso/1RkmZLt8X1R2/YM/20uaVMWInoHJ3cp7RVpyXpBTpWw68a4xELWCj03Sv0JCwhBl6yUFnjHaPkWBSxogU/WoATQ7mSgO7mmqIDFoKXhSY4TfyvIHwiKJRpRs+cup0Gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JGR1SfBd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JGR1SfBd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C15ACC113D0
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762742393;
	bh=Jk6/Rz9IuuGA631/4ETpA01WpYPxoUi89StmluCUe7I=;
	h=To:Subject:From:Date:From;
	b=JGR1SfBdSmdzYxqfUJqEsyfwZBduUJ76g3NiQIcMbuFzxSyYDzuGcWNW+PHua7haG
	 uuPr7jaYK3Cohc51xPOhPcagtk/vOL5Zuh12axbx/HKAFe8+U1NTneqvtTURPpEZw+
	 6TUoLvrDGsdy0zZrvh5V/Rdn6BkF6R+tZrkDQul7MS4PKQUagZrc9iipoxLFj9+4Hn
	 cM8X2wPPsb8dfXg5vAeeoogHic5BMNMNqO3VB1nPG4KWae0LqAOhNVlo0NpVdQnSGx
	 j3iXkdGUr7+jTwHkLJITA1OCmwfL/JiyjTAymF+AF7jmJ2RrggitOv5m/D+t2GV698
	 dsOw9X6tz3sjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB89CCF9F8
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176274239359.8743.15592328929023135531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04c495ade3348db9fad9fa91d1da27315ffc09f8ec696ba39dce70dfb47b7893
Date: Mon, 10 Nov 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762742393
