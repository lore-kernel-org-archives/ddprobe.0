Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DAD7E782
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 11:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720439783; cv=none; b=XA2lN9quaGGKQpWwS85iUO8Uap44K04Hjl71BL9l1oLD/YLsx/cP0TfxkpIhVnkRtHfCljZlrYFowwE7klN/yX6HT9tJtXgKssTXibTfM1vjnAJVQ1Z63Nb+Rtnktg7dvXx5McxF7ad+HqH8p7TmBnpxABZ+9l8Uvh1mkxyzXoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720439783; c=relaxed/simple;
	bh=ZzE/n1fd+/j7UjIy71EAKcZ52WkjswbVgEm7+fh3p7Q=;
	h=To:Subject:From:Message-Id:Date; b=MO5H/7+t0uy03BZQ22YmTg8PJO63LPg5ahEFIaGTi0whVOSypcJaL1SidsAujvKqihb1AuPpszJDKSK0IJdBhhYbGnMcKTRmaV8ldgXm6mlvYpQY8NJrdes5psO3ueOBBDcQ+0VrxxWupoWApU6dv3Fn4TpVQHPdC6nfyl7SDfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lw4qQjln; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lw4qQjln"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7261C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 11:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720439782;
	bh=ZzE/n1fd+/j7UjIy71EAKcZ52WkjswbVgEm7+fh3p7Q=;
	h=To:Subject:From:Date:From;
	b=Lw4qQjlniW/Ez01tWNduoS8RNundNfgqSGCzfgoUXXlq3QIfD1H6K2UjxROsvlDNe
	 ks2z8//fClFpdIHgHXu5wEz1ORjnCWkpEfFtVV6qvgu6Htbb7laStLNOrNLtlk9Xcz
	 QztfDgpGfxefheV/DI817tNyo3lolpbKPxMehkVE+b805xZxZRZE4D7qxhSV4VjkuM
	 Lxt4T4owD+ntMIA7YGuYS+MnqI8dhT6QVcTBxDZi0BEkt1V88hk5Lo6bqDFJzYjh7O
	 IV0kCNF/dDpWnLFoZHFOqXjzBzn9VoRfZpSRggqG5LlRAqRYtJ29qQ5mIgogx/LdD5
	 dOwmY+Z/D1oGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D509DC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 11:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172043978285.20592.8816168465089815493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81dd7e68ea2908947d49d7139046e0e61d41b80359f7b66d5590c371a2a2488a
Date: Mon, 08 Jul 2024 11:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720439782
