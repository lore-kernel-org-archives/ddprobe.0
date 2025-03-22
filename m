Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341FDF507
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742657394; cv=none; b=IV9m9nHCbJ7mREsg/hqZb2bNksjZ2G1UMUFzerqgyI+Ey6KsBTM76nXxN8yudqm7nQ7h20TIeVKCsjtQw08r6H7NiTUBXZ6EjGXz7+xSCcSvqcyQv5CEluhKujfwhgS3x3VZPER0hU1xFojLydWB0Ea5u96YJ2G1rnSpfSo9XsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742657394; c=relaxed/simple;
	bh=QdlNRJAyNYRFyNjRPoTG2fguuA8TxJwNchSileSsSAQ=;
	h=To:Subject:From:Message-Id:Date; b=CXKKQAxWrFuxIa5/gPxHXYBrH2wuGqFYEiTkQGehc4MX6Vb+DnIWkkbRTsWih1tLYSy0kQLPtGbmoy/9tQYOS4nzvy++nOpg9MlSYKBUlidi9RIICDh3hzkkToaaN1hirdekaVLORP9UQq6Ku5NMmZ5WBHRl7KSbXiw9cZ/IEWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQFNyOZO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQFNyOZO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4F9AC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742657393;
	bh=QdlNRJAyNYRFyNjRPoTG2fguuA8TxJwNchSileSsSAQ=;
	h=To:Subject:From:Date:From;
	b=SQFNyOZOyhkETR6brCcfj7NqMGJq+LSLMvOtkQwy9vHvPzJ2rZKw99HglO6nfzFfg
	 d2dsp16Qykz7oo0/5b0FcfSN/pPpxy295/LfDA4ZLI7fCHYbquGJ1rNIPrZ+NBL+vh
	 hNbhddhQ6OU9TlCoeLBwDQrmj1SEYf1gDuYOxlqOycWfeQ4Xe/eD6ELqawpATk8GqL
	 LcEcPglWKonwebw72Ww6JLHp+LjRHBNDEgwQupxtt88tUd/mielPTyZynDAITE/RYr
	 LsjJupcyDX1a1syyuCKBftdbJXyFdyuz3rUDZcu0HC1L9FQS10ROkugR4Kpu+VNYpK
	 rHjh4p9dv7Ziw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D258C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174265739360.9848.215783163336403977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff71d1963fcafbd54181c610bdec44036e27ce77af0504e60e3bfa04506cc99c
Date: Sat, 22 Mar 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742657393
