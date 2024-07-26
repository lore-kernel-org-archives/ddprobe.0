Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C80C1A286
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721986554; cv=none; b=qmj4u4uS1RS0gLyqbOLRfOmKDGVHBurIw0q7AFradSbh1YwEMUaE70+5j7dfZFIFA4UeqONsOsFEQnJcmQyEgDXn7wr/iqyq7nvHa2M4sQVPeOECZzSIzitSdBGB/InhnZZsRN7eMaLaicX+PRBMllLmoM5Kh3yLm48ebLu33HE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721986554; c=relaxed/simple;
	bh=UsTX7rhnYKA7vPkkuCYxHlRLpL6pLFVCD41D6mJCXSU=;
	h=To:Subject:From:Message-Id:Date; b=IXUXQTUogPZUgIiA+IflF+EaTnNHCvBchyw0ICbCNkzpPq3eoW4mMIceprjnCkSCxLQprLySwL87keHDC/C82Ci6dfjHC9Kob9eyRloVx0w/WrOTYxhsZzrjRiEepRbmiLdV0tx0SzO+KBYlVOMTIxXOln852JUu2T4OgvtQFTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jaxziSEb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jaxziSEb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E74C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721986553;
	bh=UsTX7rhnYKA7vPkkuCYxHlRLpL6pLFVCD41D6mJCXSU=;
	h=To:Subject:From:Date:From;
	b=jaxziSEbzmbJ6OdLxUcFgQj+m0SL8CNar9YkJVXRc2P54l4ohF8Fha/SPb1VsxWnz
	 EmrYhwfN+XDITJkJR0Tffg8BWURcp36W1kM6RL6Ogz3n1F0AivZKNDutM7dbDyOGEh
	 7G7osyDC9ocYJV9zt7PWbLuTf05TvkI/uCuxGln6jodhEHXsYSSbXGjwPeZfRhKJmq
	 ZYFqhXUD8uhI7L4sWcvJaDsHTuVDIRZlbPmCrqIJgDs9OwCw9sVjZ4uk29tG92v7h8
	 7SOKcLFtK52q+RSyP6kxJ7Qu5ci97iByiwW7I8fPu68hICCqu/65/DKpFHn0xcAit0
	 SZ/m+UXXodV8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A0CC3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172198655359.20035.13476468356570378174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a564acf90fadf151f2e5d895fc5bfd7a4c5f5665d17f77857596a913b0d1e2e
Date: Fri, 26 Jul 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721986553
