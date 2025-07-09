Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0148BF8
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752029994; cv=none; b=jir83BaCD/+xieQJEYMI304KoUKwcYbNmZNyag+I0ckam2Fv9juwNzxkvKoE3gBN5Xrz7jhmnb8piSvxJ0yA4Y24j0j1OSORQGawPt8B68bUhgZ3ZvrWb2w8yoQJz8ntdvBlUXepwerlkBnXzQ3MWLAok5wpGi1GILxMDkR7fM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752029994; c=relaxed/simple;
	bh=rU5RxE9CkFjttAUycLsrqZ9e+nAGJzyuxMRV56d6aV0=;
	h=To:Subject:From:Message-Id:Date; b=BUe14yflEDAJXCLl1yZeglRhAgvQqhCAF7uJz2yzyuAnAPAzig3VVm9NCmK9d+ylZUSSohaFJBf3m6Jfpi69Kf1SKAEnicXqWEs8dthbIXHYhKySb16MTMZG3pIDIaLreNdN8SFGMd2JgQVS/YbaneX2eLsVDsEnL3+jN6guhl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CMCwDrbo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CMCwDrbo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87CDC4CEED
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752029993;
	bh=rU5RxE9CkFjttAUycLsrqZ9e+nAGJzyuxMRV56d6aV0=;
	h=To:Subject:From:Date:From;
	b=CMCwDrbo2eWwramCoghZq/avr41BoXp0QpmhLxUCs4zHIP5LLJQAdkSt25M2BJQ0d
	 MVhFjMv9K286jInHcnpnQErvmttxZIJ5Shv6/cMf3Qp4bYSoKML0rhnySiDnIkdPKa
	 q3rdvr9E2rpJeCvHBdqTV35HdChvEGhZ4BVAcSObqQ2B0+hOX4HXQRRMFAN7GN/I/P
	 XEzwKBsqu4udFjIZea56cWjTM633jHIeouEYlOn4kCGkY0Ml/brAhYnT9s3MC3gUm4
	 ifHY7xeDXfiel1AW/uASSMJbkoJtP+nfzzlZDQXeYUNmglb516Kjy98mFdJpaGvAqD
	 qdTupnEALJhbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99382C8303C
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175202999359.25457.3521959761093043719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e856b8f4170e28312a9a4fd054358ce10c4cd4ad5ad7642219628b4b9907fbb5
Date: Wed, 09 Jul 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752029993
