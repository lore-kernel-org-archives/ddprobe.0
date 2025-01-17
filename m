Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3992E1514EE
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737151554; cv=none; b=RXiX2yM2rK2VR1uk4zFt2exturUs+StmI8tVWdK+M2y+KAi0ATBgaJx8zYNQp9dx+ooZDJmfyhK4O+Oiare5HnMDwMyPgbacBWQ1VUEftUldFBzTlSoVWYvcCIzyihazkH0HDZF/IsMwcqB3OFefc4HebkXi40xs0LScbEhAnS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737151554; c=relaxed/simple;
	bh=ABHFR+C8JmxqrhEKACkKyBL4WqUhvIALf74D0RFUrUs=;
	h=To:Subject:From:Message-Id:Date; b=UM5+zuXL4Sk5CZcQRYVTX22eqhP0Dr/E2fid7Xm0CAXpSNErWQXStE2ifiIPcWh3XSuvCA1HRXevNhHrpjUCa/YKrLNvqrOBf7tq7BrIURS8tRvk7QSFdWxNRIvjlU2JDGR2MWtLq3LYcNss4EMC9yeoU/Xm7hMXEc9ZxKEZY6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QCfH+5/f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QCfH+5/f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB3D4C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737151553;
	bh=ABHFR+C8JmxqrhEKACkKyBL4WqUhvIALf74D0RFUrUs=;
	h=To:Subject:From:Date:From;
	b=QCfH+5/f6IuZ4eFuuaMNpvSPiMCQXLov0lozW/W9du3RUfrbzg32J7sedvtniVNVc
	 W6ayh2DE2so3HDetSI87Z0DnF3HXmNOscxV8jEZ+taooXBH+fu05p2qjP+X1WEJYz6
	 9cRDW7z0CV9vpruJVI38CmVsyk1QECuU6m2XKuN4RIdwTbLuvQ/Ilcd4onqjjSMq3P
	 fJCv0XI/ZjwsFfFyMni8n+xFTQsNsQE5bAFTltHy4yCYUko8rrfHWDgYl/dwcO7n8e
	 72WNw2af1+Hq2IQ5SyTi0giHl0okbuQXu7thPwFDM1/XltFONqyoqcWbY9DNCwpz1X
	 bN8yPuQixsiPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962C1C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173715155360.19277.12130895530472249897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7caae3c2b8ece82f3623ddf1a9eebcc69f9e2d228ee9ebac55adb2929fbe5ddf
Date: Fri, 17 Jan 2025 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737151553
