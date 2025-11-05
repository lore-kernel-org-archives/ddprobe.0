Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02C071C01
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762305594; cv=none; b=G+PwSVZgZnmF7I1LpeRx2xQWuL0wGlpafroTJw1jXdqcdYga5ooVBHcT5PpdClQTTpgj8RdUzXPwdIbdQlCrFxyNS5DqQDN4K9rRbswJbakLD3yaC7TjMptgOGIqJM3UXVo7xOFA7o/8UziyVjpkWl/RcuHSYPEtoaed++ca++M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762305594; c=relaxed/simple;
	bh=3WVfl7ugGZdoKLOWBeMA7QVTeU7Rpqq6HrFLeNemxjE=;
	h=To:Subject:From:Message-Id:Date; b=NLCwIXubKV5PPlNedtpsdmWRxEAWo8IKtWYUa0GLenwoMfY5lOQlOGtYaVhD5Ro/xZwew2Y1+KqSdxtiWq1/vE8UCFXcNgZlQGUN3ZMVymhASYXl3EvdGb29lvQ6v7I6pEN5Pr1GHMz8qnX1MMnovIqPvzi6fZBnW7n6skOgojQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mt3Re+Y4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mt3Re+Y4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25E9C116B1
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762305593;
	bh=3WVfl7ugGZdoKLOWBeMA7QVTeU7Rpqq6HrFLeNemxjE=;
	h=To:Subject:From:Date:From;
	b=mt3Re+Y4jbJyfozYvkA+6jhEo30yT9PdLIMPMFnwcNS3pKtTQE1cR/aKujTtOkzuX
	 sPr8pPYBCG2qlIwiJK3zG9G3I3mf/zpZz0WqK8fz9Q4WW2YeXmIWJDBCphGp9w8SdM
	 OJkE5zBCUR/OakPJ8C4B0gJmV394IHVuOF+yFM6Kr8q6C/e8svyeTrtl2IdAD+z0Xe
	 H7EV1ZTOEfktDlZLyZifnNuluP2rIGhcvyTxEbaBs2UNbsvnA+fUWgED8AvywnETND
	 qoaQfLDDH8ZWhCtVc0jjpVCngMeqIg1Hoiq3nzCrb4tNbgTP92i5A2F1YqKb8sSkoC
	 73twQNPq96tvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968F2CCFA04
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176230559358.21231.848593684811147859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 095f8505bc478d378ba11748cf25ecbe504a2ee5468226aed8e3342232027596
Date: Wed, 05 Nov 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762305593
