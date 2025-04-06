Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F9F41487F6
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743959994; cv=none; b=EWjPTNmSI8R7f9JNwsFxJjFCjoz7m4WtPDU2VY9hFQUEhALCHU65F+hBo5h4y1JHDuPSxbNNCZW7/h2fq9rtLcG0nMDpbxnueF5AhBaVgJNdXAtSngdgDRz76OnVvy5x/b4y82TmfCRFGYPjSDcQhzNmNNaLElZhgEA1b+RzG6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743959994; c=relaxed/simple;
	bh=5iCl51HbISJZt3fuI686A8ICNLQvYxq7ZE/gO5vFATU=;
	h=To:Subject:From:Message-Id:Date; b=jX/OIzsgBF1nsKHDpjuuhgjUHED+UlKibBGKibvZoPGD7oconEl/5mzctScG8gKOHOqZSeif4qgh8OkIkVdhC/PvoCopwF+mRvcPhrdaoj4cV3UuubT0hZ41kQzBL5jJ4HzV4I3xB9AnkGUQS5Hrs6qZJvqGcgnY9zhKHWvEAn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oIzXe51Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oIzXe51Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2549C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743959993;
	bh=5iCl51HbISJZt3fuI686A8ICNLQvYxq7ZE/gO5vFATU=;
	h=To:Subject:From:Date:From;
	b=oIzXe51Zha00jI+bjO5N7dTIqEAkwDCQg1rH+8xejcKglkt0HFtKvNsIupN86jq31
	 qfbXIWOX9s5R0SJ6P6FXH5ZOqD61scefoYVi4yWGPLHNw7MDHySYBenPZnJ9kQRgRD
	 cUrnZdlj8JYExcyjgP0w3Mk9s+ds60kvo/0A5YjdPK9HZ5zmpWHQPAbys8rYRKdJ97
	 jWfGNNy5H5i74KBQosOGHQ+7mTR6YRe1uJxtUHhU2/Sf3pg8IetEDiV432JfjxRpn5
	 zBfAXJJHwRX5hC2e5Qt05zFL/GQUT83fsrE/NiBD1ogwKYrZecObABfLRPnKozoFmy
	 S2bN5Bsd8O4cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D216C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174395999360.1222.8947409732457168962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce937d628921eb573a989fd2687294d003402f79c6308868b2c4dcd7cd0b4c1f
Date: Sun, 06 Apr 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743959993
