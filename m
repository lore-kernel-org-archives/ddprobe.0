Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA1E2FD1AA
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784865034; cv=none; b=i+JxJxKhq7zdTkI3AHEmR5jhULxNQZNBLGFSubFIZFrI1DPMaWgsomxrpAUC6rSsDcAlNcL6+ZzQ8mtw5dTq1jN4LTJzIqmqiuF/IIe1DZV7p4VSKDz8PbXqE8vxbPlNu8oP01O4qmq9fMHPh+Gy+vteiUvb6FqlPjD0HpXKV1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784865034; c=relaxed/simple;
	bh=ixtyCDLL6MWYhHcSYIY8QufUHlm5bs7gVuuJrS4ypmo=;
	h=To:Subject:From:Message-Id:Date; b=UzHorRcSZaFwvL7CtNXF18th5dpNpRTdtVvnrMzb5gtAZtdkwrDKnHmvuZ86nx+KE4+wuKfrt0LToZrjmk09TpOkyEVvEPKAdNA4UNAej32EAY4en4zKnip59MeqQuF1uvITXPkhBcOd+sRKFTTY2Nz0k1pS0v54C9ubJPRRMaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLESnWmW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLESnWmW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9B7C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784865033;
	bh=ixtyCDLL6MWYhHcSYIY8QufUHlm5bs7gVuuJrS4ypmo=;
	h=To:Subject:From:Date:From;
	b=RLESnWmWXGQOAIV/KmQnSk8JOxVHVe6gPf0WvBreJ9IUC4fUv9AtUdsafeIGNWB8T
	 Ow5uT0gfyGEIvvbN9JrlVEIOu9aOcDJgmjuRnF3SHd+VGiPLIRnw7sq/Mua59z+f1k
	 5GI8QNQWN4WLG9Mj8gQ3TbEy6MrQ5mcQ82+mEfGLLeiXtHDgQ0Ddp06vpN98y3evZY
	 +tdL85bHEVqX32lxUwKGlEIAhtwJMU98uKXXrSguSl3gkTKhC3Cp1/S1v9n/gaJlLf
	 eMDZXBIHPW4q70IiNgChi5OV9tkCN9NfYuYPlKHotAfEl5mPbNArS5XSEMTK7bpTP8
	 RLy8qy63JKNew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7DAC4453D
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178486503368.3159.14831323111248284947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 501e036f8e9e37921ccc4a135de2d439b6950b85be9bccec4fe0d4069382110e
Date: Fri, 24 Jul 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784865033
