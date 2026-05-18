Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2DC2FD7BE
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 18:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779129634; cv=none; b=RVwau1dKiBlcIfh1U6UVXhE8KbhVlUMGA6hEdTKx6FIBeClw1plv62KBkuy8LqvhwDqwrU/s7ePThWTS9CXgYJwPk+3ILINqIV7PzblnGfODvX+XkpE6eMBtReGrtnb1IRW3E+sGqj4G7dO8AAc75910jGXTX0qAzEhYDuHfxhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779129634; c=relaxed/simple;
	bh=VpuvBtbpPst+tFLRS4VuWAhI8hkY9zUx8p+i9tBoDrE=;
	h=To:Subject:From:Message-Id:Date; b=tt67igABsD14SYdCA2Y7NJwGSvvHY10skSsnH9w89XwR9S/04eBWm3FoRfj0jK7iuhc4mQGrzlQeoPzOp3Q5A5wyzWlICYfvzybdyNmyHHyPCsGAgNqq1vxxkp4FCnIt17QbAEMjkJ5DwWW7xlpIfuDjk4ZdrmaaeULKHeqeNUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7V6JUNu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7V6JUNu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD16C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779129633;
	bh=VpuvBtbpPst+tFLRS4VuWAhI8hkY9zUx8p+i9tBoDrE=;
	h=To:Subject:From:Date:From;
	b=Q7V6JUNuD23W1KS9VCN4z2W30J2aJRPHNT+AnUH3FsAXXEoLNi29hn457KWKgVdEg
	 qHyYXbOfr0H/ocZElLllCsng+I3FZ6+BhA091quQ6ihQkRQ7gZs8AbXKASGaXoN+XD
	 FUD3D3M7T4DEJBsdA39D8buWBgO8jG350Y2axavETCfEaZOiewFAMJEh2RUXMKmEl3
	 4EvBPN0UlQPjPtD+lmXZeDilAVuMCQcmjHB9NIy89YafvZxQghu3q/qs8ETy7M8cnb
	 56PWPPPFUZPQ4L0zSExKgcRRFqUyByTURmFN8YUjSe1nh8cXK0xPBgRoQRxyUe6yHd
	 bde+A2HlmdQ9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF18CD4F50
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177912963369.7303.16371093270628670332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88ffd22daa1feaf471ccb965b8f716805a98ccf3cb4c9300cf6044c36106ab20
Date: Mon, 18 May 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779129633
