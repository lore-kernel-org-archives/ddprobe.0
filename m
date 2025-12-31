Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA1D1F8691
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767149034; cv=none; b=KsAiEzVyYNH3ydD9NKclKOwapy6Hk1TfwoeJcHdZZ5XWAu7xslmmXwFvOd5PBZ5N1AaE+5gqZYsdDGNI4Lq9Rha2VD3f2FTE8pmc/aIC3kGbXVdp3nDGwjUKzn9RkB8g9v18xzzSCZvyFfJ05U47hWKuV3+VW1dXuteHTumTw1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767149034; c=relaxed/simple;
	bh=sLPUV5wToRP807bch7W6IUr50isZChwQOMBflQLnhPg=;
	h=To:Subject:From:Message-Id:Date; b=LzmvY8MmA2/4r8UN6H0adB3skz+Cifqfl4Co0ey2LZf+zo8VBXkXiTBkpE325yJVt4h9U0joRuZHdi+MyFji+/mSuMYSnbjQBGDf9YSXDRFanzsqXKuXPle33Pqj3YR062/GNV7Yp9SYjODBhc6tp4I4MAvLE/+exYMMnwrBzXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EBTVmyxM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EBTVmyxM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F7EC116C6
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767149033;
	bh=sLPUV5wToRP807bch7W6IUr50isZChwQOMBflQLnhPg=;
	h=To:Subject:From:Date:From;
	b=EBTVmyxMOMk/wgwTc4+RkQTAz/ZuIXeuFeeFwFpt8j4VDq7uCjaj7ZgUXxp06rxnt
	 mbd5BhbQ1JlHVQtN96zeBZVOo9N11VKZKk0hA3P1fVjNKrIVhQksXfAQ60jTh2O3gf
	 YDz1qv1cg9UwOD0CHTQghXeFplXF0FaSuodbSgl09F25iVbt3cCVjOj/HuRnQvjPxE
	 BunF8rKwW7+l9zFp/3e+4R/1cGhvVcLrpxjz1Fqpn6nyK6i3SRk0QBtLJahJBf8sky
	 47zAP88CLS500M9Vga4wydxtx8M23j6X2oSir9/kTvwYaA+GMo1StPM9VJXryBk+A3
	 mldWvF8O8Vd7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C35EE57C8
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176714903357.19656.11098268772835278100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb1aa2351084a2db41e9e51d13d5ab9f88770f7403b310b896d58f74558c4b86
Date: Wed, 31 Dec 2025 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767149033
