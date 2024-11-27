Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19987433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732704354; cv=none; b=AIODOnvHDJNfBcqQ/x1dbltPvsv8qH/9vUglpQe2L0yYcT9g58J/goEBhmNswr/IDtNOtIfXI7+rWZlmpRyHV3scCQ623p3xoXUSgFP9eaqhyMBqvvX/OEE4k28xkQyXt6fijycBZ6yvYY/LmRvHvRe7xSUT9MsCZJJlRZvmql4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732704354; c=relaxed/simple;
	bh=iryMLbhKEvEa6VYl6SlprZur/wm/wDYdNNfhOG6arWs=;
	h=To:Subject:From:Message-Id:Date; b=ksBfKgsN+TQBoPrgUTQfzkNKxtyfMnBSVKhdTTftvAGFGFarVrHSSHw4ELVTdPD4QIzArsmG+wANaKv1u2+Soeh7k2m8JvWuPu18okcJuC9ulvR7ZsbT55wXKcavCr9GikJ+QLjucBDbtYCZSedkIclzQ6zXTxnJBvwJ6eydjNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=olBo9lbv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="olBo9lbv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4639C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732704353;
	bh=iryMLbhKEvEa6VYl6SlprZur/wm/wDYdNNfhOG6arWs=;
	h=To:Subject:From:Date:From;
	b=olBo9lbvcNkUHRgLs/E68zWjMkaoChHfLS/ewSbLbJnvjKwBbN5yOpniFlaBSQ+sI
	 PZ8WGwha69rtVbgLMate8tIrDS5bzctGehs7pSAaNryz5qRETx+8akHkYTQ7aP7YVg
	 CFgGsQgUtLf5AEdmwwHNL8HX5BT8qPJFNViuJW3H5NE0zt5wnXEsUQVskX0TVFAhPy
	 yndJ1hHdysWuCWHiOsUNYSgE1+R1AJXZdi0IcrfhHpD+PkYX4RgyTgdw29LFzaAnns
	 SJonaM2FB/DmEfW18GkQ0Qxu+XresVF26X075LeOLd5wE2LGYuu0CJjN5Koa+Bg236
	 fNSwgTFz6xjBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AC7D609CF
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173270435360.5484.16492396404732312616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a39da5c48100cc239ea8a27680731ab7dae05f2f992045e8ba964a6e89f552b
Date: Wed, 27 Nov 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732704353
