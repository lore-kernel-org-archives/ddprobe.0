Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2E38B665
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770695033; cv=none; b=dG57gLoZ6HIMEfIMVVUZdtNzRsQmkGyVQt/B72UWmlOaMMIYqVJ1wqRU3KoiP4YYp46418Q9DClL6bG/zqM5Sqb6HAAWhz7agFNuTORM8Yz5Xbinptjg046AP9udhqEGTR4tpLns1nr7QLwH97h8Jfm/3pMVVujum/WG4S1Rryo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770695033; c=relaxed/simple;
	bh=sS+p174RGGQEHTvKMyouJ4zXS4G2WDKhKoR5EHe8s5g=;
	h=To:Subject:From:Message-Id:Date; b=eQuIdH6l1lebUscojML5peJGB3t2HLv4VJYvX1O9E83QsQEybtE86BzZM2ofMYQdgW6jZyhdnT0dW3jOXqUneP6UepHwoZf8xJtbWQUYf2PiO5SufZs9ynEb02K2VklR02gpgXELEPPVWl5wSI5B0T2eQnUGnUng58loLb7GEk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o9s+Ebtg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o9s+Ebtg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B48B3C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770695033;
	bh=sS+p174RGGQEHTvKMyouJ4zXS4G2WDKhKoR5EHe8s5g=;
	h=To:Subject:From:Date:From;
	b=o9s+Ebtg9/VmaIekwmPjgLk8UjzUvliN0I2pTosyPmGDBDQJjeG73l9QtICJdF3E9
	 2wgql4aFJ5yzUqNwCn86sKX4Wtbx5U9/5eqHCXqC6VXojwayPBjB6DJOS+sUZq9xMW
	 g+Ko9FqGAWpk2TXus74a31XIPeERx2SYwmeYdvJF0wY3yTKz049yKkd05HDXKeInlt
	 OhxdxFGoe1H+HNfMQuth3nmYEReZfKAWfisGs8lOL28GhI/tdroxOdraz4/eh7Ghhr
	 zlS4QvfdmQNXpeqqb0OiZ5DYqKzQhOAU4euPMhem42BGdT3nRiR73J8l93Nr/YZeUf
	 IxGVOcF+CbSDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DAD9EE6B73
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177069503360.11120.10781735347517044635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 873e62fa854f89008aa4a9d7936df4084f1703909808da70a5cb88a15a850254
Date: Tue, 10 Feb 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770695033
