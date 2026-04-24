Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D98E83BB9F5
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 11:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777030653; cv=none; b=udptmaofgh1G9BjK/oQGuX8MwWRVQ3UQS5fRoQS3LxUGhazu2C8Ipe9ycjSJbMrC1AQoHqyVNRmDqzkYSNPH5Ag3cp2tBzm231A9Trdam59h9iZI1a3hCsF91+GI9KBxXTt9NXUt1J8qEMcPmtXQhFZSwHo/LGwAm8ZvN8zWxQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777030653; c=relaxed/simple;
	bh=nJ0YNWv0H3FOy621orC3z9W0rqEy8O1Xu7uLm0r8o00=;
	h=To:Subject:From:Message-Id:Date; b=P+p0l4wXnyzrT7F8uP4YCQW5njR4pN+8TiQBQ+CpALn03j8wODT57RUVXlRKRxpCpY/sH90ttxTcsSdhyu4NOlg6WOMRoMxq+YvwZ0OMLpLCoXaTrbrYQYcAbWwYptrdtNLdJO9tZ5rqy8DuR61a/JpfryYiwxcD2YgE8ruXPGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfj28ynd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfj28ynd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B82B8C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 11:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777030653;
	bh=nJ0YNWv0H3FOy621orC3z9W0rqEy8O1Xu7uLm0r8o00=;
	h=To:Subject:From:Date:From;
	b=sfj28yndZFdPPUqV0Q139Uvti67KtgHU6XbOol3qfmGvtHnshHof1odLmLL9Do1L9
	 3zrDbIZECtfv2arZ5H2UPfsUALxN07rqOhHEmuS1wHseD5QIctn9j82PZO82nXsTJo
	 0wafz+675GuJFZ3Gb5ZLZZBgNo2mxylBxZhs11Mpi61dBxfFNufF8fwGK+e+4b1ywD
	 g0fugb5kWe68tkGYAbdp5dAzeR1j/lMNyLDG7QqD6Kpnn1vnGu4z7HA6ExKjrfJHhu
	 +O72zLmezp5mx4dQRh0y+BBcy4TC0IZL0g6/Frf0DvhsAOtMzdc6/PYcyayz1IOUMD
	 y0hYjkdv9NuGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95F7FE5209
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 11:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177703065368.1529.2783571354623164497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55e4522653f6e0daefacbfaf9bb2caf2a7ec44ec8ad710bc65139dafb2d29bab
Date: Fri, 24 Apr 2026 11:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777030653
