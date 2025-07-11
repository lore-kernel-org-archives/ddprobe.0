Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107748F7D
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752213594; cv=none; b=jd3Alm0IYT/IGhwpP4DiOSoOhb58U1wPAi+wNtPTso9RUbNs7e99M2HyNOz19zXA//N6yKIXr57U6pw0vNKpzzDu1BuGVllnKVOUAZNZrEF/z5/WddVWydezNlz/28Ms9N053n9jmUzWw0M3yCndebTqjq0GmGZrTRfpBRU0Ddc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752213594; c=relaxed/simple;
	bh=jxcB/wDKGrohEEPm4/i122376vNjTrJQH7rzxvOXcsw=;
	h=To:Subject:From:Message-Id:Date; b=bx867NArTMZteekTVRdN98Q8jK+ywrjjpaoZIxLTeXr2lbcC+IybBtdGWbm+Kke+sOeVX7baFs5pgXnh9DpZ5JUdyOF94t4gJtLmbVm9nigxqkbkmwMZjB/BBoagpd+Xdli8phIHHrHRFxsADC7mhfovYnsObDKQ6OVu+pVOTHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IOKGCVHE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IOKGCVHE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BAE9C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752213593;
	bh=jxcB/wDKGrohEEPm4/i122376vNjTrJQH7rzxvOXcsw=;
	h=To:Subject:From:Date:From;
	b=IOKGCVHE8v0IwphbB5sxXVuq1af+iGU2UDotlB0jsHtc3Enw9Ast8+nzwlQxbBd/4
	 a9iHdDOlh3ziDNuKSZmlWQW3nWkKOh6AlJWWjIDNJ7+z725dImIAsQ4DBbUoJjfJNw
	 wukswXl2GoYgx45G9aVgb2bvQ+MFNz+tVw0bA3BoFJkMNk3SYSWD0MMFkXNKpqaQlB
	 IobSSSMT5iIQQzrMRwbBq1XQ5D9OjyHvYOJ/04ezhb6PHNgwjYr4xg/kmdFEoA5Guo
	 7C9F4gLb/fysyyuwKg1hyMI/XyijMsn+4I+ro3cCOhCibAPbl4D0upqLWWh+BN6y71
	 Cpg2IJtXZ8RdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA29C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175221359357.668.271943832127850958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b86e03d054723e7e03c6dbc6166d47a992c14591058c3556e4f4d6f1a59d1826
Date: Fri, 11 Jul 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752213593
