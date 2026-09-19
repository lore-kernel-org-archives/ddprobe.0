Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07BF654705E
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789848034; cv=none; b=e7Vpe5zytKbyzNfJxrD8ciWTs8zIePags5s2iZOQQHIhufox2vAtFHTJ9oquu2taw/410fwtHhX0X6eeAHHh97gnKOx2icXhAgY01D2L40HLaORvvYf9esdnZ5ETECTkekQX9ufwzQ5fwU9mQbe0RqJB0DznvN3EJDCkQS1Gcq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789848034; c=relaxed/simple;
	bh=F78l3jnMfXS+VfaFNF7iDjGHGoGse/lwcyCQqpl7ECw=;
	h=To:Subject:From:Message-Id:Date; b=VJtL3YUrhu8QaeKpcFvm/x+TR5FVb/fYlTCotu0qsH+sO8d+Qh9YnIgDqj+eOrVCmcEU2zYFRvtBAh9XghVwj19nY5J32Ma6ryW0YgBRqIY4KvTPvAYwYk5tQfC3RWPnMkaUhTNgf2BlA4jGtzHbvNUHUkYymdKqcyA8ZuPu1l8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qdXLLbX9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qdXLLbX9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCE4C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789848033;
	bh=F78l3jnMfXS+VfaFNF7iDjGHGoGse/lwcyCQqpl7ECw=;
	h=To:Subject:From:Date:From;
	b=qdXLLbX9VFXS7JFV0tP1tBluydBj7muxz5FOh+BtJO0AYYzHiWt+aZy4Vl7bwepA8
	 +K+mBRJZlgA3rJ1SFajgJLVa2yqgb84OnRB17wsaOc0p5MvD49+h2sb/RFr5Ewq9Qv
	 0mvcXIUxbwGNO82j2vV4D2fgMb1SqSyu6VnnUuMthG+gzaHpBFaYSDvfhBd/JRXW1d
	 smMiV6YK0YCD7Vae36yfzYSDj/HOJIGxBYZCRwywzgCYBBBrWevrmlOLbzL5zVlcD6
	 bO6rnbYQss+Gt8Gvh5rGdeo9poCGim0IZu6hWsL8UDPKBHiny0ywfWxrkvxPfXtU5x
	 B5Ch5zJbReavg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA47C982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178984803368.7029.12322553451121425907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0237a533d310b913bc02c245cab3fe0fbe3ef6263fbb5f7c31f2d66fa9a3fac7
Date: Sat, 19 Sep 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789848033
