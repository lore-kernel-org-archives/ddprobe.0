Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D403DE43D
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790703634; cv=none; b=K51DzRC8lbp/+QiJXcC3GgvRTLNb1AVjl1HO3z1E4SGSDyCEi9Bv68NKBn6CLSMhPcirYgrfgzcqil0Iqp1MsFl0laC3SRBCkly+cvo8BCIUY8F8+pfuT663ck9c8m2sJij5ngeTLt6gMGnv0nnDC9j/ZXUVrojRpbRt0SuY3cA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790703634; c=relaxed/simple;
	bh=Lly1PWPD0qQSeTdAyaHH15lC0ztgPZ7nP8iK5X6vp1w=;
	h=To:Subject:From:Message-Id:Date; b=IEkIRXeg4Wwkyqe7oV46Z4pCcNR8AvNE5OQ38I3skSXQIAwJ8cv1kcWCxJNp/Fg7YvvOTngMolkkV4qWLSUpQZc3hu9wrjMIu6JJ7B6wbx9deTYpR2DqDLp7UjbY00f6snh8WFvq9tZ3uMYBRX3lFN/bex7jYFz53u6IfsEXfKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GPTXhtDI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GPTXhtDI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB689C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790703633;
	bh=Lly1PWPD0qQSeTdAyaHH15lC0ztgPZ7nP8iK5X6vp1w=;
	h=To:Subject:From:Date:From;
	b=GPTXhtDI6qJGDr0BF4aLrMf3MfsAZQg1LO0hUUtSqjRHE8ECLoJSPUy56pMPSUfrC
	 l/wTWy0CVDgQGRP98QCxvP288mP1o+qpW2cN8drEhX9J+ePxasu2MCyxTNh/KbURbl
	 BlbgI1y+rbKjEn6D0ARXpqERD3baBF9qPIlz1uzyodtjlVvKcrfvkdrrhoKrKAjbWp
	 2bhANyXshYM5V0U6mvoq93z1SdrraQiaHwmpeWcTqxZTpMyN1IC6FmvbpeWCl5wQ7A
	 DRrYSeU4VbSL/ow6uRAQu5S9oVzM62peU3WemlYQqMfgkjmHLzvnL43APqKma43ZsZ
	 VT0UQhi3CTU/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA01DCA5FA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179070363368.7069.17583019751686863484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e11c04c43a3c7718828d98f077f0ea7050a52389d64743dcb212d83db1fe877
Date: Tue, 29 Sep 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790703633
