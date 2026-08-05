Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406103515DE
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785896434; cv=none; b=D6rhrJpE4iXJCiwgZxgyOnkF5HJvscgtRx1GcOdm/ZGNsPr4lx6pt6bpSULiGn7PkfZrxa2Tkc9aMBrrR7DolKhSqF5LpoJ+c6U96X5ASC7kYagz94XdUQQbm/nuW4RL293B50aLMxGvyCVVqUrjruqJayOKc4LFQNRnc7aQyHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785896434; c=relaxed/simple;
	bh=D+oT8hvI8hOPUTcr6ztsKwC5eGJpLr86bo0Qf0kQP8Q=;
	h=To:Subject:From:Message-Id:Date; b=ekDq7VOOxAEihLi70Eikamlhrl3LknOhrg88yO3hUgbyFz6bCqpzA1niIBaLNIGvb23MOIZdo8w8RY1iGoyr4UxoMQt5xg/d0Hu/1gYQ8OFhBFfl6kOZMAp11hJLJXBT4f2Dn/Oqw80QhMvWcjaREBlylSALKndB9mFSLIsUCeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYp9JQjZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYp9JQjZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC13C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785896433;
	bh=D+oT8hvI8hOPUTcr6ztsKwC5eGJpLr86bo0Qf0kQP8Q=;
	h=To:Subject:From:Date:From;
	b=NYp9JQjZgIstDF7oOmoQOeI3C/jV7fTafkORV7PrtZY880UE87QV49fpCpGFAAIB+
	 7QZUkehYwXiSNUszsKuosIoxpUl2UeDwrR5faeuJnp66BFQsKS+q7AKVcIUBlMI9az
	 NKaT8SsVrhLI1tlFhB3+zUCoyzxSSixQWnOoJjFqUCYddrCdQRm2/t93Fcg+idQDxs
	 B7FyUiqfYs3iOSo2t38uhDTR0K1aT9Xph7vGKehWrpWAPyW207ksqieuDlYyAe9vaN
	 qunhQKq9efxfn9rrdFG+pQx8biSqTO80iGOCr5nECST+zAJSgNXoooiQdL+g9fD1eC
	 Ftj8+2HmjfQ7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F12C55838
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178589643368.29140.6805872475248112711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74dda27d2298de83c541d5fb492d296d4172af3a3e4134163d5ac69ab68950d9
Date: Wed, 05 Aug 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785896433
