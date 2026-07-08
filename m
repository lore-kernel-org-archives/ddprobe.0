Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF703CF047
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 21:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783546114; cv=none; b=BQlU44dUlo7Im3J4V4whcM4OxL9VttVzWmGkRcuyW3Fc5y8i4C1FL8djcyKKorUNyVrcY4pIeAj06P0zALd00D27I0grOyi+Aw08i4ugNVgXMnQw4FQpEk8laPRdzRm9sqxyzsT2yQtrYFsrv0gBYkVJWNZ9eC+fQpWjqFd7m80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783546114; c=relaxed/simple;
	bh=b1Jr3HeSOOOdRRjz3WVcNxNd0GTSK1GIZ4ZqMUvUmhM=;
	h=To:Subject:From:Message-Id:Date; b=Aa0bvVyrRcdEQp4muadY+xfBfN9xmo3sEzHMto4Mt1xAmB0SZjzBKfJSQGd78HL1lumTk27fc2WbjkLfnmtuEA0Ho9JxfMU4hy2l04YFsaDbp9BHEwR35fpboLVU0hHfSSkJ3XEpQuiMeoVZyTXD7UEuCA0UyyfIWI0nPBnaKSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LLoYFAVQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LLoYFAVQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8E5BC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 21:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783546113;
	bh=b1Jr3HeSOOOdRRjz3WVcNxNd0GTSK1GIZ4ZqMUvUmhM=;
	h=To:Subject:From:Date:From;
	b=LLoYFAVQgtdCiHrDGC95o3UQ8EuD2jJ1Cjf/gT5aOGHj/DXgYrJHuhyEM7w2lqMHz
	 g96Ekgmh4gnnODevMCUEqsk8aYsOXdxoJI6Bj6yaSqGk05OkYYwMEwIVY/KrXXrCjq
	 y2gLkzwu/oUZL7VhsgMHNfGu4uWeIkJUdmBuqxD4y+d2K2x+O+V9sXPZ4njU54S41q
	 gXj77c3oA2QN1xYGBiF2v6UHjWVqybF27vBx9BPtqPVUYNLqqu8QwAbqBIjB/hoSmW
	 fwHyq7Mk4nnUcIdhkS/6onuXWUjOOtmIM8bEPnW1RtHGK6/BfQ8pndIdeR07BHNFK9
	 GvQIbfq7AMnKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F8BC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 21:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178354611368.16150.17931472268540538674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e28dceef61dc600bca5c152e13940677e0e425b37bfae25d6e5f1b758e1e17e5
Date: Wed, 08 Jul 2026 21:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783546113
