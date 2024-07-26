Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1557838DEE
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722018354; cv=none; b=Wj+FT317HJws0moYpPLvOYUQurpG02ytojzBV8Ii7c9kM4K32rII+JtQBHonUpQSGXA+p10Aplv2xsg9AhYhJQNrgIi0ADwHny02XlITkGnm+NI03V1tjvxa0RfPJjaVeMEjfbmEY6YuEyfAI2ER7Nwlv7I5mny7Kq92Mylj3e8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722018354; c=relaxed/simple;
	bh=++IkjmQ8nIOFZd60kc0dXjtJKEFKhqkSzGWPMaaxZNg=;
	h=To:Subject:From:Message-Id:Date; b=h+byKYgBtmlgDS6DnHqa5CREg2JN048e6ceSQVNLWW2a6mn9M5myObSIiXwEOq2sxZqFwJ9hdeWjzBAF32yOsolTql50aB9AqYZhJDhT0TrvX705Du/o6vOLorCCQJ+bgxBMjrJ68/hi0Ce9axf4sPSn2iaq1cfPewz4magAyPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dqvAvClg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dqvAvClg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13A8C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722018353;
	bh=++IkjmQ8nIOFZd60kc0dXjtJKEFKhqkSzGWPMaaxZNg=;
	h=To:Subject:From:Date:From;
	b=dqvAvClgO51tvuc2EKEip8rgfBqDnDkQnI/gsHKey80qW2xSSph4JloAAsUkC82/z
	 Q8mEnswGaN3pjA3VLrjDe7kxaKiPR4f9Aj8tRdX//i/8fw21MNzVN2z98tDoFCGvTm
	 i52bLQVulcxdjanUWel3NcSPaHgV1V1bkQusB+NS2WIywt4mb/JMJNjGYUWsXaiIJW
	 sL9teEDxz4IdPJSqgQgUnfvt+GuT+jEAQuU/qKxFz2tXAvw7M7+xMujdnCAXUiIFG4
	 sUodviCID8cpr5AWj7xM/HeYq3zttfgV8xtfYE+YeHbeHW/xt4A7bXBjK0qBoaDGpA
	 98wBV9IXOMz+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93077C3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172201835359.9787.15466039808138342654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e150f7106cd2d7bd73b70b14a97e21b7397a87de00be322cc210b45471cf743
Date: Fri, 26 Jul 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722018353
