Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2478C11
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746269994; cv=none; b=trdL4ywDM4EA4rj2hgcR96jF4vDIxQSiGvQBY20nzZCrXDx8psALnenB+2GvG6WtzmK+3bVHzMTfE7caiRXGqrplo5UooXDf3qr1MJwrFgU2kCNApWJhkO9MShy99ZOzT/KpUEtiTJWeQFlh4glB9h/LY9eQSm2s+6A69vcCJvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746269994; c=relaxed/simple;
	bh=InPmbylmLaXVtSsihStV/Ar+QVxHF/ev5XUb0didq0w=;
	h=To:Subject:From:Message-Id:Date; b=bF9iybOWrIS3D3KV7HiP7EFTWF2Alz+wSRiJBn0+vVV629FrLaflLmsElRv1Zv/DkTfAnbEPKm/RmZwTcijIahEX41TB911m29smjpfJT5ftaiHyhsIkFei0SMrXwH6slvVA1qDcVZMU3983lt0c5eLripfa7SFEXBdi0ahNqww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTkyU9S3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTkyU9S3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F166C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746269993;
	bh=InPmbylmLaXVtSsihStV/Ar+QVxHF/ev5XUb0didq0w=;
	h=To:Subject:From:Date:From;
	b=tTkyU9S3qKIPvg6u/2/tNpAnnEyRzlLEpohnD2/gveRkGYNfyjUmJGoVsYLzIpcmA
	 DiGlIKcr7/9P51yYbXd8rTar0IKe9Jf/sm77SylyOIruVaehQavLugFmjpxy60Xld4
	 9vm39/HIyAHOr4zNAOBPG2/gCnDmHuEnjMQ3hewbeDIs1cjevtvIhRhQL+YDPlTxtH
	 zpMXwP50ruRQlneP+El+SS/XmF+u0QX9TLqZoQaCp6cWC+qEmhPmqaMzTi3UJKs0D1
	 0ApcyAuufnDw2iC8hbjFWebtHT2qlDJLnQ2HYlqxqaB8pCeq5XezorCRhLuyXemjra
	 /R3QQVcZ2GpnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D8C7C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174626999357.1509.3018383721706894652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5623dc749d28f865cb1f9f03fc96d3ab1bb647b0fa461fa04f8707ee26e5442a
Date: Sat, 03 May 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746269993
