Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4E91F92A
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742803194; cv=none; b=olsRWmiXFiRbQ/seKjI0bZGP04E3bHRDMJXjGoB8csF/BIw6PnJ5p8bZxxnM/CdTeDlXoQJWwElzdLdqKuS9dVXsCbDLXoj2Fq+32ZJBEn1hXeSDsuhgD8tMZhreDMoFRn7KFWoPyxMRyprJ9GaI8ABqAo8gnnmFrMbNp5R3NCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742803194; c=relaxed/simple;
	bh=OZfqj+qb1XJNkG3OzBuaKzVIwnIysnVgZeD+EMkSUrw=;
	h=To:Subject:From:Message-Id:Date; b=pBpkGIeHjp/B4InAOCE3ZczeHyMBXY7QqAAV41LVpZFSHzuP6bMv5uj+ubxBN10sDl2ysg+T9T79ZEj/P+yNPU0F9z5sOQ1/IzU6+V7swQS93857fGEbKamKNACCJKElK2l1lf2o0LuYDWtlUW2OSh6EvrpZe+Rsv6f+UYEmkeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u3y5dz9w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u3y5dz9w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA8FCC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742803193;
	bh=OZfqj+qb1XJNkG3OzBuaKzVIwnIysnVgZeD+EMkSUrw=;
	h=To:Subject:From:Date:From;
	b=u3y5dz9wNNcX6JkGT4J6lqzR22Z8z/zy1czs86z7Rq/pXtI1dp6Gl9hF9LrMpLyGU
	 E7yAwBBAbjVM8ISDyyp8CdHHKg7g5g9eXxKDLUuBePeI+SfnpjDUwXqQK8fJrku7Qp
	 qq9CE5/Fh8liHoEpj92SV/03o8zh+t7Yet2VDw3cCzgVpeLxC1L1D34HT7JuIsIVSq
	 wsuUN2kF81XfbmH312U1rB4WzxifdWLdXrAhUqbcXijDBXuvzPwfkZes6e2GX4qwMh
	 GXVxuRcg5ZMscg9Fr4HaEsj5okFiMpfjxDW4CXD8pimJZZZ9SE6Z3t7CxMNjcmjIE/
	 PC1X4y4KDkeDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5C9DC36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174280319366.6763.1912213285732571825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d84d977a9f2fe1381b9ffb9353ed4f4f4423c21ddc5c3d04b1677dbf0aa83f08
Date: Mon, 24 Mar 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742803193
