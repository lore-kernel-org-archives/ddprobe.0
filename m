Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B96382
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 00:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718928623; cv=none; b=Y/pg4RNgRvnTRS6B5NqpTHgp+fwlcJJeI++1dZcwkJFYE1izbETWLIFAFqKRjqyDwxbIByuugRmEH2p8KhVHy+RYR0mX/oZOkE7SJXJyIZGTssaVgF86mEIa0pEi7DIi0AalOX7zhtaZMHKu66nJzIIWV9BuMQ8lDc1ca2cqH6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718928623; c=relaxed/simple;
	bh=ErfMWOwX2CWTw81oWNpsX8rnkLjAQEME0InPth8/gik=;
	h=To:Subject:From:Message-Id:Date; b=F83YofhaneC2yjTT8x55rSMwB+R7jVXWc6gzY74fRI+DNyU5ErODFZ1h4cIlLff1AX3nqJkts0X87ZD41wB0suSNp3Yfvo6SvRuwD/PAlfmBu6x5D6uRYkn6Y+l5Y2Pt4BiLrygQ54TzeSZurxJeTsbjD6UqKxA5izRvsMwMhIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g4K0Zxlu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g4K0Zxlu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00AD7C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 00:10:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718928623;
	bh=ErfMWOwX2CWTw81oWNpsX8rnkLjAQEME0InPth8/gik=;
	h=To:Subject:From:Date:From;
	b=g4K0Zxlu7WJyDEputeVFKfmhyIOUGT5Wp8/eoYhwABHly+UDAkXDqCsfsb3+niP95
	 NuXpATFDWJepHC9OFb1uowAs1ve8W5Du5taBf2+MYP91Q0F58rD8PHzXG5Ujq5YOlO
	 jwvU6IkDOLf7k1p9Dc1qGzy5Bl7eua6mEkH2afwAzgyTXQ5qLvrQnCzcwvRJOhBEw1
	 FK24+WqxT3TYMBwTW7c6ANeN51n8OVUfb/85tCL0lFkh2dQbloTfxTWQwdTOuCif4x
	 29iCm7JgfwnjyR0kzXMaT/2MP+impf2MeNRDul8eQIiDp+c6Y3KywmYjXXQv8e8kbk
	 At7xuNwkmRYBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8575C2BA18
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 00:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171892862287.13997.10661807139480759563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfff9ac8acdf34c39a4ec065065b0789fe1b123544881619965690b78ee806dc
Date: Fri, 21 Jun 2024 00:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718928622
