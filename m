Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DBD518BBB9
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758369594; cv=none; b=MOiQs2EzBbntrK3I67KY9DHQ2Pq+OHXcw94ms9KS8gs6ZOf0xUCEgKKU6whq6n6I9HFURt6I2W3rVIHhnA9v+PEWDjSD1iQfsSKcJllDmO8P50k60YQ24eSGcKFdcOGPEae0LBEvAZ6C+AfuaDYm6N5c3ptp7zxxGRMWLJlPT6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758369594; c=relaxed/simple;
	bh=InVTqdaL1WQ2kY4QyJeSPIPGsD72myZEqUskA7kzZ2s=;
	h=To:Subject:From:Message-Id:Date; b=ddx3upFnUMrq8599BQYy0KEpRkmBVjWVu3TRPWNyLvwnpIbSKK3O+ZTxuVuJt0ffg+R4fPyJE0f8lg0m6aZ5KfUJbwVIQ2pbzcvFhTuqTeLKUSe+nHk5Zr/aRkCuaELjzvL5fSzOK6tFTwP3cg+JupJgw7vmiLarbErEscytvGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j7Sdee8r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j7Sdee8r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4943C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758369593;
	bh=InVTqdaL1WQ2kY4QyJeSPIPGsD72myZEqUskA7kzZ2s=;
	h=To:Subject:From:Date:From;
	b=j7Sdee8rFkQ1FCWf+eCFmJbLUipnkgpT6/v2qaG4uFlPLqc/cuvY95RZqg5Nd8J23
	 2jZ7oLaaVzhqOIrFrruWGwegZ+4Wtx+6PuwqCtanZ+22Tf9i/V94XlDFopsvanpH+T
	 l2DH5dUUFGCtZqLtDj8vebdYVMvMJfA+wXjgtZR2LS2+UhhgeN3h2Rcgh/UYrJ3mH5
	 dnFt2GMrbxUF3pA0Lk14RhsqGWQbfzX46xgdqP/u0va/nJblAHFguWbM/zT8O1BUp8
	 Qn/odGE4u7ToSasgv9aVpOEfAsWUzz3ES0o5/mhYLFOwzG+FEig90DkFqfLh/gv6y8
	 N47qZJ4BYXQiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DBACAC597
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175836959358.7002.7872327225074317768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19a9fc660fac94b4001f70e232c2f7071e514f85ad6d9aeaaf3a3869fa540246
Date: Sat, 20 Sep 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758369593
