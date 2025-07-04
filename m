Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5023271B7
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751615994; cv=none; b=sHMx/FEjrwkkHjCfpvsRWZrnCXsgfWq63REW9zGTkZEAKkRnwD/FLMvtQ9VruCGPmdV5aNYncC/ros1MoA7yitlHa5uUhTtbdoBKUSJgTyMgwQa6hDoP0KX3An/g/EN1jYjbY0dxwmuGgLSnKye7aj+R585i+eqEL6pnMeIIgP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751615994; c=relaxed/simple;
	bh=KPR+X4ni7yQ0utFQS6sxGaPTWwtyeK89MrY8eKvFYWo=;
	h=To:Subject:From:Message-Id:Date; b=fuVcR6hjsXWWzD69ulGu3k504bCuc3zF3sd2k/qDhxIKbKbTr26lLB2mw13WUviOnwp+hEmzSfBk6qdPdX/UEI0wb57j949vwc2R1kEyznBzrg+LO48jh9f3sgf1CaplQ7COrxmv2auKxnUJKOU8m7oBlqcnQwf22bCHbIqrmBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ACsbXeFS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ACsbXeFS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18D9C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751615993;
	bh=KPR+X4ni7yQ0utFQS6sxGaPTWwtyeK89MrY8eKvFYWo=;
	h=To:Subject:From:Date:From;
	b=ACsbXeFSNzvH0teuEZ0G7XD5MCT8ZPr6ogVDfLSTdtBsxIUTHjvD/K8AzB+KmToRz
	 2r01amG9JhqYw04Ij6cp4ro6f+JjpQ3i8TosyJCLjFwfvOYq2iJfpPIVQK/3UzKVcg
	 HFtzAlMUXaN5AMAz0uSpIpcGPgJhUQpSOLjhvoYjoktdK8s8XNJnMilJhSxuPOyhvR
	 Aepnl8FgaEtCKVIZzh35pmhDi4hf3V1oY/SSHRcZrKskmHiIu/1NNZaKPWpT0eEYWc
	 +7VAnCjNaIPb9zKf3DHzCpbRSpyR7e5jUKdrFmX0+n9c1QpIWM1iDG6IjMHDRiJeJw
	 VUllJxojiwddQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CCFC83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175161599357.7626.14026946670764541130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34ba20c2fd78f9a41d0735c13d300d5a4a89fb2b3e3196ac555328e26a38d50b
Date: Fri, 04 Jul 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751615993
