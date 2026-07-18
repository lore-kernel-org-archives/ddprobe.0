Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC8F37E2E4
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 12:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784378314; cv=none; b=t7bPxfA9T4EdeEafIe157OA6x80lebPW8SjnM64grByGKm+5+/v1mS+qHUrTIlxgukqslt8dZgOCH8saSaq7NEDu/RNP6CMb6OTp4Ddt45CNH7kw3xo2GauFCOmx1Lw/OYB2qYd3AOZYvxAdWvKpYg4q6ND7mG6gOB/3szIHUGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784378314; c=relaxed/simple;
	bh=LtiDkgAazd2JtCmXMy1YSh6OFsTuK+7hF0nlRMoiVSI=;
	h=To:Subject:From:Message-Id:Date; b=etp009Mlxv0tzpzSWWs+bYiFpjC/jFC2uiuWQ8VxJu1NOGCJZxAVZJ15fPnu1GzMSKuWuQPncKkohixdVlwvNAg9J1VFWDt3U6P/2VWr9zBx9Yo/iO0KbKBJNBhOwnuH/uwWY8cJ3ZI0zF+kmhZLSjVcry32OWz5Clz8JYH1gpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gKYXfdtZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gKYXfdtZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7AE5C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 12:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784378313;
	bh=LtiDkgAazd2JtCmXMy1YSh6OFsTuK+7hF0nlRMoiVSI=;
	h=To:Subject:From:Date:From;
	b=gKYXfdtZzYpQ+kco8Dt14jiv8r9Y1Im6AggX7RcIzMXSAjpJV87NIWU6hicID8Gz4
	 7RyEDpA6srFMB0jDBAa3xYV1qkr/O2xmpeFquAv/DEGHrQ0InLjX/FTtk64K7CCmJh
	 aIy2TRS6TH9DjRkj9vOfBbZ8YNF06RZu48GPvFNxkX3sOj6xHtX3JUdHb0q3orMPER
	 t5iEdrZYHV5oykUzDvKmIYk3wsToqgOA5absHEm+eBTT49DEyAPkVEEkuYVx2uykyX
	 mvTckmtaeMJyES5WR7io+oD4fFGi6qxi7U4SlEczOGSU0BXzrj2jUStla4cRwrmH0G
	 yBBCPlqB6WYLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0256C4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 12:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178437831369.9007.1615554051193358499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73f1a33cdc6710361ade1e15297740d57d52f37d0c922400288acd9057f7d87c
Date: Sat, 18 Jul 2026 12:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784378313
