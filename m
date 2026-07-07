Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392E242087C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 23:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783465714; cv=none; b=W8NX7SHVq3JyL89dSS7PkVwN4bFfkQ0BZMM8awQ0Ul0SVoEFhYPEf1IVRD7Nv4boQm1Q4CZ9qqK3NtRdHl85uTXf2ZIl+GxQ6tFdeQUSEBYfKPUpYxYrZ8neq/sBeyouRwY6Z+6XgHV+bohEkoQAslEybDKiQZ3V83/P3kmmh40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783465714; c=relaxed/simple;
	bh=qF/d6fG/Pm0OJEFMJkRzhZZy834/sOwcpfqYjP8Uq1M=;
	h=To:Subject:From:Message-Id:Date; b=nvxFaz906U0TLtFfr+WFlYA9HjYWuJP8CZYyJOWM7hQ4EHZwxVWOTfWRuPNzF0SUb3ToCFhaUg4w/83UUOjF3juoeOaTrtLyVSxQ0yQzAORZvNHWjoZbRZj+2cLLm5c82pRkjKg/MGPnX3UGlRuXyl1G3LSq4Ela2vSlXx31glA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=reewq+WD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="reewq+WD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D21C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 23:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783465713;
	bh=qF/d6fG/Pm0OJEFMJkRzhZZy834/sOwcpfqYjP8Uq1M=;
	h=To:Subject:From:Date:From;
	b=reewq+WD91TecwGBUrlUAaX6e/fizBUH3LDeEKgzJYxKoI0Mv6HpoiK0SBtKPTFWI
	 /3LXOM0KOikr0gUTse8pe8kfNck80ukGxvtp3+bJO/ipXPHkNdlqcy5tZX/u/869M7
	 2ZnA0cJ2TmduOd+GRm+UTCHeNJeLJ8UkkFE/aIWu5xSg2ZOeijvlkz37lrEKW0c+5a
	 uy7FnrCl0fEZoSubXLGVZHLDjQ39yWhb6H+gjajM4oYJdRfC6x27CO3lW4igzZ5PwW
	 0Izm5fzzKPl/zibw1qnLbfEcMVCET5GnwbArn/kOesWW9JJntHDc8H+zNkmDikOW4c
	 8RLH9y9S61Hbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE071C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 23:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178346571368.30930.1779587108383780774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad52a281ccfe1fdf5ce8f5dc6dad49ae917f446d429a2e17ab5f45d389cd9637
Date: Tue, 07 Jul 2026 23:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783465713
