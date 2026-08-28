Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 833F13F1047
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787876434; cv=none; b=S0h4495mgQeuayxJHQAx/6qx4vfRxdt+AlogE2UFF47nBM5petNPvbwJwg2ooiP6OZCQKdLmU7bD2yGVU5rrAY9I+1hQqcey4wXIX4yrKAQHQnoMpgkwovGE4qmhfVWwbuTKCR9wJcRJWEOgRbz158wNn30jU8o5w/fHpQ5poCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787876434; c=relaxed/simple;
	bh=Ov1zUzuTflBGc65Bv7/B2FP7nKhncO8KtyDx5qJmISI=;
	h=To:Subject:From:Message-Id:Date; b=t4ZaEdD2bRqm1xYcw/VFbKTz+c4eu9g+JjxZStY0ZBEAPHi9Kk6PjdQ/taAD5SbYyuyf1N3bUtKsNhlVuPIjZu9BomLmmuIW09mbjybgZvfL0hmoCgEFvDlgwhwOcYxpZQ9RxHMFtr703SRJnJ0IF9BGp0Qxg2on1oCGReQkpcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N4RrNrSr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N4RrNrSr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAFE7C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787876433;
	bh=Ov1zUzuTflBGc65Bv7/B2FP7nKhncO8KtyDx5qJmISI=;
	h=To:Subject:From:Date:From;
	b=N4RrNrSrXfgXiNW9945Ql91n3dizvI8mnhtsuIYzq4RmrbuSf4mSO3CwBI1WEgAZU
	 Yh0azNnjh4I6+2neQRFEsDp9Y3h3Ftp4u7hn9Uw8lE3pyLJXU0HaPx6Zt6NMf2oZiK
	 Ixf7bFfJ+aCdXlwoBJahYcnqpaXQOPXqLKO+3CA+RlA6PNspqLjzQHXcrH57b4JSCl
	 dfd1Us0iDGe2shgXxtMfjRRFmWGvsxlgoptZMW8qLrukMzxf85Uk9JR7Be0JYZzHXs
	 4wj73Af4LiR8QK4eTdHkiKOgDFAqumiCPRk1ZfAOsOD73KrUbnP7d2z/ALjmCKHEIf
	 /JmFJEJ5i7CEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B30FDC61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178787643369.19671.7510529241544260519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 164405da602968362ee972f9609ef93b421ddc40b17b8e8cd02969ce4bd634ec
Date: Fri, 28 Aug 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787876433
