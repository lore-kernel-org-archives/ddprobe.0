Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2E529B781
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 04:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783744714; cv=none; b=opCVngTpwrgIjWogd7iaXlyda3L4ZiNW9N9oNLFNBCy1vrheWOzmyu+q4YSilViwGpWy3/EsOc7vOAlHKXz+3a+qOO6rKg0t+zdNKDQLkpOhL2LI89AFfjry74xaMAvQGTJSBxC4FYUc9T+LpWLFgi5qsqgIOZcUymLh7ttuly8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783744714; c=relaxed/simple;
	bh=9o5ZHiEuuUYILcD7fvAUWlbrrmM6Wh5axjP6D5Dgslo=;
	h=To:Subject:From:Message-Id:Date; b=DyJMA8pMo8acQOzI622AavqWjmCnQ/66PmMWsMMRtSkkl4q3qmJ2i7s48SB2L/MkL/BbL/ST1yT7JzIFmrUXoGfScH1awN8Iebv8xYfRoDpVhV5fLe11efZMlQZ4EZKEVJYRVt0zCG4ZvYM+k7fS8wsxH0ejuILP81g0lUJKGp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uyTvMS7o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uyTvMS7o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A28C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 04:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783744713;
	bh=9o5ZHiEuuUYILcD7fvAUWlbrrmM6Wh5axjP6D5Dgslo=;
	h=To:Subject:From:Date:From;
	b=uyTvMS7oc97UpleQjqwFaWuKFn7bP6Gx60tEfm8LJ1LddrH8SrILTl9pnOtKcq0s1
	 1A2vCN1XGrQzh4Wz3yscLMo3M+GdIohRaLxwQPNhBbRiL8HUUUgIsFOLoEam9BYZ0v
	 QFMcbUpSRPR7KNeCR/HcTl9AaLlLPz5I4cSdEuolDa/jexg76ebvRpe7IM8e5N5MTA
	 Cja7Ad6+cROWtu/BdNvO+wW3TXaGnXkBc2Rq/L8SSL6Zx/x7AGzcERq/9Wv3bxHQBw
	 9bNQfrsXeDh+WjGdzAPgHdk56rvWL+CH5zLuIs8MWAMs8qG1aCMlYT+8P7+Nj2BBKE
	 5xzrdPRgEZkBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC10CC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 04:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178374471368.18225.6958319314997729558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98b5679eb242df92020085db8d20eb0b5ed9a0cec337d4c6de35300562075791
Date: Sat, 11 Jul 2026 04:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783744713
