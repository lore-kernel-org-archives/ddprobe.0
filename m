Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254AA1BB6BC
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736708154; cv=none; b=uTYhatH8IOnls3uYzXkIUipNj2IASN1u4301IMFvZJYmqPa4LartX3QpVJoCyTirFq5htWNjcaceqieCHD6Z7CebkGVeoqAvNh2VQAsNwTvoUxod87igiss5EU7/LrSJjtBNiAll72GfJ+V6uVP/gijDSDDbQfzXpc2kRJdidTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736708154; c=relaxed/simple;
	bh=qiyrnnjBluVM0SyE+hnZ/HIlRuIx4AQQAYA0wchq9i8=;
	h=To:Subject:From:Message-Id:Date; b=F4TNy2gXy32kgqEpl5JwMbz52ZdGh/PzLpvxL3gFd5RuWctDy4U/LE0CkA8NkUOd8WQtBLwiUq3en6HaLJ9tJ4vC8Pl88jsi/KVUTmhfJr/SD7PJvQdDJAfNPDvN6p39zUkWd1njIMQ06cjlA0rCsC9o8lYBWuhXcHlkIyJ+tic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UP1yJ9W3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UP1yJ9W3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB447C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736708153;
	bh=qiyrnnjBluVM0SyE+hnZ/HIlRuIx4AQQAYA0wchq9i8=;
	h=To:Subject:From:Date:From;
	b=UP1yJ9W3H1ZV/hj6PtWsKbG2ugWJ/0QdE32pTixcvINyO31xyXr+ahSOj0fP8bPKJ
	 0IJGJakisLypMzzEBTtTbehkYgN1KpN6WsIupNMbd3eon6nxkDoHWnaPmEb1GFtfy7
	 7DFuY1tn1ulxgV/QmPGvSDPKJRVul/iOYrN1RQNQdfvOpxe3Nx92uoVKS9GruMSAGv
	 B3waTC+YxHn0PzBY3nR8ZmP/GJxj16sDF5TsyXuxQyVm036Kj5DIg3vUvbSh3B6F4e
	 t1uDubJhbhnlEkfltWapo7NQCA7PxlplA9kuI5pwsu6d+WQt2Pbh9tqRbneAnConSL
	 qaVf2FK1hYJxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98562E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173670815360.30327.9222515743215902474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ccc293834640533e758a00c499f2ac1459d582224f850eaad4a9b932995d40e
Date: Sun, 12 Jan 2025 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736708153
