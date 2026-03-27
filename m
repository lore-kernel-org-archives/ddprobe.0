Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02743221DB3
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774584894; cv=none; b=lRKAQ0Ftn49LVXgCjgO+JFsjWq7q9qtaYdFiH4x4ee9FqTfgArQ7V6Sezzmc2tCDo5azqVbiwahZODvM+22l2g9OzWxLZUjYRnWBwgyGV5Y9KD6V9JQglKcUOlL34UzWte9GxBzE67+crP35TjIW2W2GCQfR0Rd26p/D6GsaGRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774584894; c=relaxed/simple;
	bh=dzyRu792m7uiTbZpzS2DUT6bhv8b5kmxtu1bIQJ17aM=;
	h=To:Subject:From:Message-Id:Date; b=MILTHRldu6z9JW46veAIR+WUCPYk7AYRJvg8IJyf8TAlJHkESLELXtb7BTw/cyR880msZMfDSd73g89JCmVALzVcVGrvEQvQmjB/qfrBTe/O92gb1uNzUoA3n+yWpVTN+drlctcYl2wlXCG3YJefT/jWGG6kWMvX7Hw5QhqndrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X8J31Bl9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X8J31Bl9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70C9C2BC9E
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774584893;
	bh=dzyRu792m7uiTbZpzS2DUT6bhv8b5kmxtu1bIQJ17aM=;
	h=To:Subject:From:Date:From;
	b=X8J31Bl9wthmc8PPRIlbAhF+OM3YynM1FMdEFGqyXE0iVeREs0YPv+1kgTfYlvWbb
	 C8iswgWhX/12vWZyFxKnNqrgSJdeN0KLddtJgV1IEyzWm5gxmqudYm1sMGUUNStev3
	 SP3o4L+5EWhS+oVXjB7ipsDWaMIxLlrfO9hC8M1VVVifKGTJHTr6gMDd2rQIQQMuM3
	 FKUt8GyK3HV0+uPiTBtbyc4N1U/fuAPzi6PsnVRLHqZycQV9rcPoCi/Op7lUmIl9pC
	 HWKG0jRUinZib1xEIyqcbvw3hokRsXHEiMEoZqnafeZw9oyCwvMYcguAfa+WoANHjr
	 CyHm1QJIq7DFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C6D10BA420
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177458489359.21194.9387081409650887897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dabcbd4075a79dd4800a2db14704917be0381b5a9946daafc5d1e2bf1c52d12c
Date: Fri, 27 Mar 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774584893
