Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11DE510E3
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758889794; cv=none; b=IN5OF1fMTj+dZIAqVCY8C8iNfT2QPWt38wbec99CG86TgXxQP0Sw6Jp3bfHL6GMQBMmqb3Ui0JCgFahlpaYvktZhH3TWTeWIksAOgDHIQAm8OIruWSefwI7TZPNvtArsVl1FKt/BbN9D3GkoBsGpZWddCiprR3mjdhWs0Q70Gic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758889794; c=relaxed/simple;
	bh=KVUOcb/NvdpCpKZYrkMeikRC7zXQwn19qutIeSyH9ok=;
	h=To:Subject:From:Message-Id:Date; b=FObMiA+r8VtIg6zRx/2a8oJJfQZuTnSXu+6abbM5gkY9Qu2Nc+cvhD+zE3f5dqrlUKLHa1jEzhDoqF/iUcByy87Dnb1iXvc2oNtJH1sGhx4ba/KFSdnIvlDNQN4w7xu4skezxDonRhT4jywDDbbxy8Cz4mMuSX9BQ1Ir+wWBHXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HfUw9Bfe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HfUw9Bfe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62A6C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758889793;
	bh=KVUOcb/NvdpCpKZYrkMeikRC7zXQwn19qutIeSyH9ok=;
	h=To:Subject:From:Date:From;
	b=HfUw9BfeYYnMNdiUJZYYGstH+QmTQKnnzBRmrwYDMywORS1qZpbTlrdVrGBIlAcop
	 DIbR3cYEX2e7geaxZk5K0O2x8pFRr+3xLRSNi3VyD1sIhwz1KN3ZX33PSLD+J0U6yK
	 qvdUiLMv4NSsRYpeQzmK/ldsY0Ps2uBywvn7zC+PHPK+1fqKI8lC8uuqN0uZc/LHgn
	 r9Ci4krI0qvHDYJBy47wjAg51RnUh7CBfdBngzVg0oppAgI+D2CDU8J06X8f0km+up
	 fU1VDMpSLjf6USTR/hrmBqhW7LRdL8pqxsxcJntsAZkJyc+AptDYGqnVFyNp/n0UzJ
	 /QE21Agwz4nFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91936CAC5B9
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175888979358.4075.14319293302726144981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21e484f60c208f2ce5111076191fa24a51607c3c99a614e2c2f22d05e9067620
Date: Fri, 26 Sep 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758889793
