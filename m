Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4233B2F2910
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 04:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785211834; cv=none; b=Z6ufXDooB7S4AeuCjTb7YyY4KIWoitl9kIg8Ymt0/vfjC8KOcosYBPwll3QBaDzzxH8dacfC3gTv4/j6APq/mCX5BRFeLK9LRMCgK5lmqdnvihDlehMcMN+lsgwAQk6RYket671DUl9fouXtpVXOVtQaQApsLfocFsWCKw9Xqq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785211834; c=relaxed/simple;
	bh=jTliqMy2dyQWGntpQhrbbj25tb07g6x7o4zE+GNPJes=;
	h=To:Subject:From:Message-Id:Date; b=W/slZSL7ZDX8fZ1ZV8g876qfoqk/nZMQxPFKbx5Kko9rgsjaIZapO/m8egmwqUmlp3h+awPgMkL27SGi5u4/q2Fl+jblDJTIRH4E3HavAdTDFyhh/UJP3zcj1jmGsw+QTf/JUSfDe/LRWLURFveUp+U8QYgm5DobmC/Z5F2xTLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8qxV0XU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8qxV0XU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC90BC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785211833;
	bh=jTliqMy2dyQWGntpQhrbbj25tb07g6x7o4zE+GNPJes=;
	h=To:Subject:From:Date:From;
	b=i8qxV0XUZ9EC46bcgXHSiNQitVsWCA6chIjLtyG/JCqOKOrOXUNX8YQ7bEqK4g1P5
	 efn+Bv7aPi1boihKNvR+r3zUkC6N0LQM0hY46yUOs8X+Ia0kFuZoNdo7h8Zaxft16t
	 73Vkq5F8lZc/+AcvbXZVb7UELWgALTz/oR+a8G8gOV/4Jcp/bxJ61pelh85csV+/Ae
	 F++r8THfW0qWMUpOVguiEfmOaiNrsS4KBjaQRBoDI/K6vJQsY+Cz0AWbsdRDEZbCtV
	 KYPDknj9lkySlrdBcgsLRUyCHRnrOltcG6ywuVVQ8xI874kH3aBAOtXv9VfetxTUlV
	 YPgK1S4cqGOtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B87A9C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178521183374.16619.11674767047493330481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3533daceb913df79c6180cfcd1eebe573692ff74eca7c7952a99a5451060d8d
Date: Tue, 28 Jul 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785211833
