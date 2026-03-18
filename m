Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125EF28853A
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773819294; cv=none; b=Jq9/MDJbISzetSWp08ztL2bfM1VVlp5zKppjtMB1Y0cH0JavMU6R9t3RrOC8Ok3jaB7yhLWW5Hz3ySJb//CDOnlsbNqbNaE+aVkAJbotrmpQ8YwsF0PHDn/R3u2N8a9bDCutbmR0rEgRNecG34pOxNFM5yKnFqURcyZ8l0X20Uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773819294; c=relaxed/simple;
	bh=gDfdaZ8KxG1k418m+zTuQwJQKbm5sbwb9LskLRPJemE=;
	h=To:Subject:From:Message-Id:Date; b=SSuPFp8+wZA3vBcDzCcqw3iv0BjeGf94f+FjvrwTR+DcKnBxGTDJffW3Yj5banX/NPlpNAbLz4uegkcVKEtweKc9xTCgQHB79w2OPWKLyCEWx5RI+0dpq7w1IXHgstnR9DOUUkv/X04Q89WbLdUTKpYdIyE3HwBMW6JGHJabjhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IkLfiBKe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IkLfiBKe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F511C2BC87
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773819293;
	bh=gDfdaZ8KxG1k418m+zTuQwJQKbm5sbwb9LskLRPJemE=;
	h=To:Subject:From:Date:From;
	b=IkLfiBKeFVrK6ZaBSzk/6XlbQPtFjKJpjSyHMMtpYKsuXN7CGoGI+PTXP7l1PrFkl
	 CGF8h+F/2iI4vvCLYQEvaNS3G9luC0o5jUFrBZfW1JItVGIqxeAN2AXe7tTC7Bu+sZ
	 DOjOj+CEOk3YZepTYRjURcLhofByvmN4F/u35c4Q+AAPoRh1/Br6D9arwEIimxqnjU
	 8Daii7jHgCrNyjHXk68IitClmUyYDcXi6XDk3h8Y8lAjVbb9yS0ZcamB96bDngqxPw
	 8CVHXnsxMLFQdfwGF2bjqEmIP3zb5YPVmsFJKJH79wuNCRprLGL6G7fBJs8tXi5m5F
	 cyQeKvrjlZb8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCE9FCD0C6
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177381929358.5428.2715196671010281485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f732b35e40aaec7c57b7f91fd41f0f33de16e6acac70bd6189c1fc0a08858429
Date: Wed, 18 Mar 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773819293
