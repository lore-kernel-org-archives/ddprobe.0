Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB262E8B9B
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756847994; cv=none; b=Scbz/9EkmMXYvfMQilOKL8PRarQye2b0vnRfUa+aNMdqyKvaOdFSjC1zcXhtnFkM6iuQopu5NWL2D4s2v5FjisN+J5ooCnqAFsIjlqu3HL8aCQGKNZDTKkJq17vA+DgFlgKasBRuIb5l0YXN8bXwmnulOZGOZNaV+ZPZ+3YBHgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756847994; c=relaxed/simple;
	bh=KNUInbd8ZEoiwlACaqBDV8IauIC0RTEPTGDYIcHF/Jo=;
	h=To:Subject:From:Message-Id:Date; b=AM0weYfCnfZp5wFB3XnLcOBXuhGnQX5yclYF3IQ4UxfjQORjoRYoW/XbH7C1TPvLmvLFDoNgZmTLwVEG7QdfMyivInv45OIHK48OeKunY0/44LZ6wYOdRqC28B11mBK8Lq+btPupYTTMJ6TQ0AHS/HLy9xhfsjQkj6ShDVKvGyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oqu3n8Qb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oqu3n8Qb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71D7C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756847993;
	bh=KNUInbd8ZEoiwlACaqBDV8IauIC0RTEPTGDYIcHF/Jo=;
	h=To:Subject:From:Date:From;
	b=Oqu3n8Qbh7WHwygTIdNMW+c5l413+JydXHW55ovKr/BwFnvVPk+Ua4rhiw+9GaOIU
	 uwYFntM+Vr10w1Nshll/h2bN2jLebV5gWtWhO82exA9XcEgNcSGPJooQ0Msibt57KU
	 /kJ4ikMrO4zOOFE+cSJX6HxYqWI+DTPgYdoDfakL4Cx6isP0u1XZt7/ELMPUZVxY1X
	 qmeMcR3NsPwbfgXAsQUps3sAtShiintFVHaH3lWfln0oQF4bO7h/FDlDFqnEExefY4
	 RXwqE6Tf2Z3uSZ6KHSy28Cp9KEOGwHLxl9HWmFuGpY4AObUcogHyd/hHYTDqrZZpHz
	 VgUa6hsCD8d5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95482CA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175684799358.7062.12850193263527672626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8e569bd1a0073e113f8b1c5084b7a5de8767bdc8b8897fe8d8528114f54d9d7
Date: Tue, 02 Sep 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756847993
