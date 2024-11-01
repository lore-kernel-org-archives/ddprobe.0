Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7844213AD3F
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 08:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730449554; cv=none; b=KgxH4ntVy8s4LwfvRR6JO+Df964GP5Q7Xtd/2A67rhv6OGY/fUgWyx4C0xtmjaMjoCSsOwpO+387daulZcX8PMlEZm4s2jY/dDeuY393ekSkhK+golEeiuwU1CpwO5qgFNWX7TTc0X07+SYJRHHJ62g3sC+UEb+FCevGQmwpYRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730449554; c=relaxed/simple;
	bh=giGJLlhMNkNe6WOjffMomtbIihiNKG+wQi72kJr+wig=;
	h=To:Subject:From:Message-Id:Date; b=tKmlkqt5H5YS7RPLRejbj/MijJTlsnAzAVCdGJdCvagx1WEvksYfsm84cqCQyTIzNauvaF6bGaKtIQ4mDZ7gG2JaiBwzkIfudHk/9qh0487+Oyg8RYmBe8g69Mt/lomfxQIrXaI+8zd07e6EtKOjd+QeUKfozMnAwwFhoYaXlfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HNbzLrSp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HNbzLrSp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB7B1C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730449554;
	bh=giGJLlhMNkNe6WOjffMomtbIihiNKG+wQi72kJr+wig=;
	h=To:Subject:From:Date:From;
	b=HNbzLrSpGk8aBglpeeSKSGrHhU0vIbN7ZERQNRaHMWdTUa0j2JYUl8NKvFJRd9hfu
	 +hp4z84CsQ6GslOOD4DBBtNGuVxPF617itX/zpT58nuBKbrPzKtsKtbfz+uOubCgOz
	 NUCDOS3cxN4RU4pzE6dSNXby2caOM9euaVO7VhJEteZi67X2bWLEZK7kC7i96bsHV5
	 j2IiknEGFLd3Y9Q5XJpP/JdYE+nzz1/dZYFKsAOqxvw4w0RabrPw614osNx/fvO5Np
	 /Gw6BxNCSTb3p1gsjLmwbiVf8LeZLTdjRMU5c+1v1s5FAI1zP8jp4vrv5cOneX3y7Z
	 fyGIm1ifiW6/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C841EE674B7
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173044955380.28657.14528076982083696365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 253e5e0517e32dce8fed15b0c91702007fe397e35f042f6faff75100d1260b0f
Date: Fri, 01 Nov 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730449553
