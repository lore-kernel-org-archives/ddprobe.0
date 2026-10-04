Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ADA431B10B
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791155434; cv=none; b=lfn8KXYVmEe735IOIN5xBsbHi2ePWQ7m2sePd1LS8oulrMtXXdsV1jeTuqVZI1XXjFM+ohp0Gz0cObHNK9DzIYbEgiTabos8OAvMcuc8ujy7MoHDOxL/JQKHsOXwr7cHaYA062JhQA38MfEOstAtxtJPBqNQAsw8hAl4TphIcA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791155434; c=relaxed/simple;
	bh=N8wDHbEh6/nuivmOOnC2Zbe58FbLvGdzBZiiZ+sZuJA=;
	h=To:Subject:From:Message-Id:Date; b=bdBPMp/p+DwF0hE6WD/RYpQl4+v9ZXTlkp2KFlFqjAKy7Hv4f5aR0YmSCn968wl42840+XD9O/bhQRyDJROzwir+E9O6NmmbI24mYvZOs7jXiOOS3Qv9JAeHfQuTyIYqnHK/U3YhU2DOyFrSRdmTtbb9IO6nJIGiulglHbGQsLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBsRUt/Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBsRUt/Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D63AAC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791155433;
	bh=N8wDHbEh6/nuivmOOnC2Zbe58FbLvGdzBZiiZ+sZuJA=;
	h=To:Subject:From:Date:From;
	b=PBsRUt/ZWKZrpAW1QP7++zaRZYx7rR+lWkozXwWx7ie0X/6NB3u0Sr9sJEUVlrVCF
	 e7EFi6PQP2Fjkr8pKy63PKRCPLgCzOZPRxQ0wd+QAvwWW8DMdX56I48HqDb2hDCugE
	 vhedwaHus7axI1Djb+zfuVH+gxl7rkaMyVaiZGfp9KKhNefaSqWBqwwzdUVDO11xng
	 HNIaaJfDy2H2lGpKtm4INKgBjKCAZG6enOJpRtEihxhtBdtOD3vp8U92G/EFS+XlS4
	 eb9RMEzG98m/0hXky9Y42JuMp0mAUOKTA6nzQu+AUM6hdvIUnPLcCcJFUTThZbf/+J
	 iipd+Xz1mX7Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF476CA5FF0
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179115543368.26272.4359294747096757415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79639fd529cfdceec60f19705de6298fb46d303480eb67f930885d7fcc5c700f
Date: Sun, 04 Oct 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791155433
