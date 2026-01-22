Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D465305E32
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769101434; cv=none; b=APFjIg8G011LyKhrV4zjm094rA8iI5+M6+f2mV0t9cZZgGSD4A8Lh9/RbI5UsW7rr6M282WltRnxC579wabl93jRnDxvhxUDRs2vGs9JgIohNqUUvb+YaMs1i6DUHeLSORz+VeXMooo4k6j+bID5eGvJG0QAq1aBkGgfIDek3ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769101434; c=relaxed/simple;
	bh=/4G022t+p/dXVczb97ibli4ZvywxTvebcp33kKUWmw4=;
	h=To:Subject:From:Message-Id:Date; b=aNG+rvYz70BIMdRvS7ulWs6piWVKbLHOS0XWlsXYAigXo6G1TrPD5pNqmfdcmmJkYVrr8B+b0Y6oTA2WT6ooo3e12Y4hbqk8tftp5iXvvd3drfLXUuh40EawCA3I5oulJyBJipGOxNOgDKk6/w/H7elDSswKiJNEvCdZI1UAG6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EfFUTWVN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EfFUTWVN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FE2C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769101433;
	bh=/4G022t+p/dXVczb97ibli4ZvywxTvebcp33kKUWmw4=;
	h=To:Subject:From:Date:From;
	b=EfFUTWVNFWYY125W3w+4J9F29g94py/tStyGhT46eaVI9v2etACdBfadC4SzJX9Nn
	 HHN07KSuCGVCFJDakuTr8FR73rAqWRD8yA9opxsbr0QFf+Mhw3toqpDygwAKtOK0ht
	 uAKOQgDYKmRnp6hchLlqtZoYTCZ8fSwruN+7E3uLs7S7nclT470qy9lTdVkpYUU5oP
	 nS//DNHHbHVbhEdzjyWlRPsdVlesiUZNQ9A0+M7mqz2Yc2nAV06541rfahmq+3EcVA
	 +73wli93/aSqJ8WpcoBAkaNHrmqOEn0nXEj+AoJN9ndLJ/09nOUbQkqlkIKNCjnAy7
	 UpUmLm0e6C25g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CD3D3EE92
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176910143358.24307.18220628123090779624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3321a18eb4691ac63dc442e640ab0974cfee1cb7a5429456d918550aae659771
Date: Thu, 22 Jan 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769101433
