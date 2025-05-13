Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416301DB546
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747132794; cv=none; b=oMuzveeAVPd9eKxI+y6dDeRelFucZDzL2hQZ56cmpvtGi4+PN6v2tWqcFkNPE11uXWh1XG/HPyYxmBq+U8v1HIonNGdMNmcxkQnXnGkca3XD+iA9pjmhK4JzTlG5i/tjN0dg9CsrN69IOa4oVWKtkydnBJcmXuZHCn5B03blz4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747132794; c=relaxed/simple;
	bh=+XfsYJcZ4P+ae0By994Q/ft5+hlPLnvr+q79PaZo5TA=;
	h=To:Subject:From:Message-Id:Date; b=GGM2Kf9mfu+I5SLgCwZ8ga41yl0kpejE+SVUNyAkOmAtdszIA1UEEipSss/Q8wZUfyluUouisXjSihB7T0IqWpsjJHol9YiCIMat7XqgJHjdG0Htd3kE3XJDgsIiNtdSo2o4kpydH4xnT82jOUBYCjnfYBhNunzv4GG/aXA0mM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9oGKXfm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9oGKXfm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF11C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747132793;
	bh=+XfsYJcZ4P+ae0By994Q/ft5+hlPLnvr+q79PaZo5TA=;
	h=To:Subject:From:Date:From;
	b=E9oGKXfmi02sJ1j7v3ridPS3oG6p9GRlKO59ern+gqYR8J1yJaddrJtrq9atQeuWj
	 mIbdgSnoPIhceV+ihquQahtzGTC4lFL4PAkFywT7DomOCDpNIapEusw9z+k8f89Slo
	 Vo3yU8/zvje9IjAwiEYvWCvraO37GLXVpbs6rESr5zl87dzp1yVs/uWg0l4zIBEmbT
	 +mYk7kbUzLyotECD6XCu9BR8UxMaKYZscOxtLhWUpoOpQHCX77OKoNrkXDBEDJ8/qj
	 l+JP35IgzAsf0L/upva5D4tmqgpmRL2JBb1psbu1ujsYxBt6+tafgWgkLK8ew21L/P
	 EHbWvwS6rVE5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA15C3ABC9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174713279357.8839.12469881292810766733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0723498bb80b5f7c5db17acc53cc2395a45d96e450f03f98db7eae94518b18d
Date: Tue, 13 May 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747132793
