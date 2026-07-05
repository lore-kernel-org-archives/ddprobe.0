Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C932F7EEF
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 16:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783269514; cv=none; b=DD+n5nKmUZ2zFrIEx3Chm8q4P24lwHCxpJHHiw2gtdASRzTR37dJj0YrkdUUoG3MHbLJoXJQ31jYGmQX7LiVgeq/MADpZ5t1j7jP/B83psWr4BVpa6/u5rPA25a+R5NHGXQ3EB0XOYmUJVTI8T5/sSN8XPHxSVJcPEwleRIA3jQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783269514; c=relaxed/simple;
	bh=wCEDFfwpQIz8CqEEs6AOL+vqgA3wMmvXrYNcY+UPnJA=;
	h=To:Subject:From:Message-Id:Date; b=m2CTjcR/cU0eHQpdxEFsHaFvdhvZE+VNQ40PvwIuS2pVFeYYxzyX9tPjjBhp/0LsA3b0KjhSBP1mIM66Hviuo2H+EEosxJTykeRA54DUJgeUDBzCLg05Ouqy3xj5ygFktP9I/zcEttwmQeVCn5ldwLgb1CZ2AQrrKZZcs/y7PWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C2J0x3VA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C2J0x3VA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9B8C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 16:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783269513;
	bh=wCEDFfwpQIz8CqEEs6AOL+vqgA3wMmvXrYNcY+UPnJA=;
	h=To:Subject:From:Date:From;
	b=C2J0x3VA0hD5eir3Pln7pOl9xILelXlM3YX6y9gU1VpsrkmCFt/n5Xg6XjDQyXGP6
	 q6TYP4BslCo4Goc9ETb+QqlhP1XfXhnmPhszCTdqvX+1UUI80vXSgcTy95O8VSwKsU
	 6ytBIZZ6iziYr/rtIH/yLXnPC8DPOZYzVlB2/IC0zQZ+7sxkWtPtHjdxqWBKEREBX0
	 x+D0+5VtNRYG8hCQKCQwmLXW4hPOs8n24sIcSbzQdktqOWc7mzNqs6VeLX1hjFj6fK
	 +yYV5tNbqNiXpRELtoHFjnAABlMwqSrMb2hJqDtlIbbUsEmFUBVSjmoieXvURCzzWK
	 JNdwNa6kbkYzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEB9C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 16:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178326951368.20166.16871084157309323929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c59b504c80ec5b282852e3285b5ac1dfca7880f4038f71524c60ce8e2706d07
Date: Sun, 05 Jul 2026 16:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783269513
