Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A58826ED37
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 02:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776133654; cv=none; b=NKWTFFMcy6ZDkJMU0ymnAo79OhcWmKFGaD6PT1YN2Nn+z9Z3KCbQ/O7nGk6PMxsFb5bYd4tranSXzZ+EgIqAgHOHE3ISKcOf+oofas5Ii0ye96LirhSgaaMX/8NbDAT1W+MqOD9LZ9WLo/b86fWT0wC2dRLOJVSI3Yh2MaVx7ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776133654; c=relaxed/simple;
	bh=z60ljtgWDl4E34YxidMKcJEbO7DCEeOmLa1DGZU4hyY=;
	h=To:Subject:From:Message-Id:Date; b=N7QuniHWq0d7o+d6VDZv3QAGzRwrVZTFSxjsXGrTKvBJKqdHxJWMsW7gQ8Ro6T0tsEHAXe/MPZTmctfkMJFkSuW8Sp8KWbMre4ny1LJBzPfQzQjcaSUxVhiGRSFvq8Fpqp6ufR2S+Qia32/Vns80/UMtUIBAYRuGSUwntGCfdQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/g2/c+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/g2/c+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF5BCC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 02:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776133653;
	bh=z60ljtgWDl4E34YxidMKcJEbO7DCEeOmLa1DGZU4hyY=;
	h=To:Subject:From:Date:From;
	b=D/g2/c+wItjv5US69NjIUc0boPwKjGpNVXVKh7fV3urjV6UDgR9gG3s1B9/hI6XAe
	 OEhRaf9WX24vpuBpehgBIMpklDdowH0VIK/A5dvLabklRRfAr+Y35CgCc7rODNsUVg
	 5jX2i8nKi3EKmFoCm6vQ2Q0s/WaPXxZnqHVDqP6hkT2FiKUfVCR5E0vz6C3m4QeZsR
	 hx4yMo6mSpkdnDSJBgLZxQa6Tj2YsR+KRgkSOkmgM/F89AffYZka4Q/tYdtD1CmGDj
	 6z0fsHkSpuXEV19B27fCPV72XFZM8rmRZY5shK2YqQ9/IEdbh8XTuvOn5kV/iPvqPJ
	 pVoLIrKLHSn8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC341F531E6
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 02:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177613365369.9612.8278010615270361035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90e4fa8a646e5ad5711574a831f20202656e74b542eea8923791f241a6f77d10
Date: Tue, 14 Apr 2026 02:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776133653
