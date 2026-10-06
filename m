Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44788282F36
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791308434; cv=none; b=Xzxh4nHxIpq1cNTQdjn3x17it5pYUAmV02te73dSKU3As5+PSnqJvviMSzh/ZjMP/cwhNbnLRBmX2aOrcWnS3orIJd/Rv/IWUZN2vyQoQZBxIVSNmCK+lmEhd14u5x/bauiVy5atPcHheNmw9A+hv2iq0HDZphz4DsKeLGTBxVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791308434; c=relaxed/simple;
	bh=s6rZyKUUC06chlf+8tSW9PJJOSFXMK9KH6KSna085F4=;
	h=To:Subject:From:Message-Id:Date; b=ATQdIaTV3wcd8db1qMvllTWK/sr610Zzt7t4NhYSX+w8mo6fezBHlGbeDD5xPYLj4LGngBDzJSJ0snCna1OZJYmeJe6TAx4I5/rtcKhdlRxTQGzIuD+9W10VuXq9iYkeTEkJNUWsJd5GyjkDveo/QfJ/GF33zik4DmcWK3unL0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VEc162ar; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VEc162ar"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCCB6C4AF60
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791308433;
	bh=s6rZyKUUC06chlf+8tSW9PJJOSFXMK9KH6KSna085F4=;
	h=To:Subject:From:Date:From;
	b=VEc162arukatL2fP8qcCMZdG1Dt8OXk0Xv/0gBDg0tOhZeosDvHAz5J4WOEtSEbdq
	 tb8YcXI6IIKSp/wnccGkD5iTxO7OsWdZB7RGU5ktopKuLTpcDlXd7iquOQA60/4k0T
	 6Im8xvZjkeaUf6ujFE5pte06jeypnGu0qS4ZJVDfZxYkXhkA1dAGzjLig8vWnI5xCm
	 fBd+p+9bKvloYSTMGwU/QfhNiAhMVaaBiFK4b1URhHxxKo70tWQ2MbrqKPz4Mf4/ft
	 OFBddXhu6REmtltp1hqMkUP5bEzIKg6Qug9PsKm3vnzpM0pomOCKkWAbiuLZEkOQ4+
	 jx7A90UMcg7/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B231CCA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179130843369.20399.9405037845821814595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77279852951720cb5f6e65ad72beaa5c4afc92519d07f21517e4e3693d98ca0d
Date: Tue, 06 Oct 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791308433
