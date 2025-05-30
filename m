Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256B21E3DF2
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748612394; cv=none; b=UF2E98mEfFHWiKl8l5L8a2PhwWJ67Jxmy2B+mfC+nJoRBdTjqLzz9vZLoDK+Tn964rijuUEO2LSSpNR372kbHdXQVAQxRaNY/if7oufdAqZK1aYQ2h5pSVkVjTE06UjZhoRzlLewN0HkxMU2aeH/l0jxc+im2wgnatBT9WLTWAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748612394; c=relaxed/simple;
	bh=8F483b858txXp6371F9s5megTG2SCrcs15Pz67ZqL9c=;
	h=To:Subject:From:Message-Id:Date; b=Qb3TQhVCMCa046E+XPhlZbkdUBiILEwPhG67TQV0Km0qGIQUlg/ySPY4MZS5DMt5iJGK20MEOKJYR4qvqHeR64l7CpspV3wBkkQg2zrbjMP2b1Z2klQGb4s+CTYxuLUfHULnfOhscijkOqXzSY2OYHi1EmI5j27AybC4bfpsLNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P6V5L/G/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P6V5L/G/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D517C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748612393;
	bh=8F483b858txXp6371F9s5megTG2SCrcs15Pz67ZqL9c=;
	h=To:Subject:From:Date:From;
	b=P6V5L/G/9cmBRjY2y/m66Z7heWsaL75144dxa7x4oXuPpHUhXAK358sYkHyEDhkIX
	 3mwQguGCy3vUG3qpwR5m+DCGHoo6X8FpvRZfvoKhDYBq0SJp8q7ZsBv/fbn6dyUz+f
	 qExz78j6FwVaxlXdBB2O4cXayYX9t4l1EqQEtpOv/HvAQif2OqwkkwRnGAyoUAQbkM
	 xZuGLyrdDXlMwlypVT1WBqhkvJk1yegdGrWOtRJNG3Q/Ni7zKl7vlxBnTveRwW+BdV
	 +dDB85htI4FasPT+rxvYxyaJdViIE3KNu3nmBTmwCJih0oF04kE2gsEQN3vQ4hlW0W
	 R6dOfLqjQPmHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB51C5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174861239357.29310.329859918039691564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dda75b2e11bbfbb2c01d843e6341879f4219484fb630636779a6f6651b66b860
Date: Fri, 30 May 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748612393
