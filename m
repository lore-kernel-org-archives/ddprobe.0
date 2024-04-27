Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F5840856
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 07:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714201343; cv=none; b=ttfeHSx6dVr8m66NEP5kgRzCF5gXla++lN5NQfdVrJaUjFtH5KdjXcXWRvuYPNAiHVSay5C6M3xHX45YXQTDawolDBetk+T2kR5U5lEzpYYWAAOrICxE//zj9hs6KMSpCc+UYnaT/MItTL7gXBMbGiaL0kItm8sHeaRC+cs1kGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714201343; c=relaxed/simple;
	bh=NcikHMsYowiAAhQoqXSkOpCJWfNHg1camnY7XpsOZ7k=;
	h=To:Subject:From:Message-Id:Date; b=RKnZOkxjwsZvWWvDi5wTbhW4viTDE10S8hcf9qn+Yl4yPxtulD2GRYw0ve9g3GiHjv4AXGw0zpbBCtm+PuPzB9JgpSL6eHuQSqXiUmnbNxlez33vm9sE3MYQIowNB20Z2iVfL6jNym239xH5UNZNIHrnXNWbRucVootxLa8oFF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ngpRPp92; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ngpRPp92"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4369C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 07:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714201342;
	bh=NcikHMsYowiAAhQoqXSkOpCJWfNHg1camnY7XpsOZ7k=;
	h=To:Subject:From:Date:From;
	b=ngpRPp92jZgVGgYOQrpyIknpHIAns9GjG1TfFDMs/6ZU8xQj8W9YNOVrtRJG1G/n4
	 +d1XqjLs7ikQCm6+LJ/9KD1jdntYPTpWpq/ur7511ayfxMsuVl8u3qYWWL041wlGWD
	 jLje2vx/Bu7Cd4QbaefJ10+hkMJESuWHVjuQJl62jij5tajfKU3gEuRERzT/R+37Uo
	 F/YYqawmJSo5OxRG7TQkEaIyzNJrVEb5xiIh5vqFdo4HsxhXxNleQWa3i4D4xJW0vd
	 h7BhmZikdrSkQbBDWiy3gDI9ry1lpIF9lbmr46hvE7I1nY6LMbZf+8nPIFuks+mKCY
	 nhW2MiS5p9hBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1A60C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 07:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171420134278.16551.12712011369893644365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be1ed8db8436fc2d07775d07e103d627143118d70a68f5c50606d7d3980e5ed1
Date: Sat, 27 Apr 2024 07:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714201342
