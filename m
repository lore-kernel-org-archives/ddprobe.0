Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2C32F3C3E
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 22:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784501914; cv=none; b=UafTej5aCqOFbOz9G+7NFNBdefCsHgxgFT39zaPpVNJWpejleSNve1PnR0R7NC60lF6zuGdEB1kwgWSD69jgcVD3a7gctIxuplj0iZauKLpXdkJY3F889FlkxqaNSURhQCFhVZvDUMzIgdUVYumM1Vba4R8CzTk0iq1srFrNwP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784501914; c=relaxed/simple;
	bh=pIqWjFFjyE8Tm0bf16Ve8pD4g2bDhB1DeqHxgWQlHXg=;
	h=To:Subject:From:Message-Id:Date; b=s0i3IexkzbCJ9Dc5cGamHvTuwwCq+rN8LnAsyCrIuyXgHe3N34dDA4zV9YzHLeBuSSXpOCwrgj3wOqg6HByJbpeT7WJtvjgUJT8+qFaQi1WEzrcwDbjxHgrp2d7ASS5jXv/rSpemUmy7I4GMJe3HdkIzLiSp504IvOfv9sHYV64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GySk2/Mo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GySk2/Mo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3EE8C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 22:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784501913;
	bh=pIqWjFFjyE8Tm0bf16Ve8pD4g2bDhB1DeqHxgWQlHXg=;
	h=To:Subject:From:Date:From;
	b=GySk2/MoxrWO11UMYKSHFCWTPBdOCSKFXelr+HZNM+P/3q/ptvSkNQZOqKRbXvs3w
	 H8lFjwSFmfwnS/5dlcFnznGVGJUuY7OKQ7+kCucW1zU/fKP6cBVJnybdlsosvP7CGX
	 /Yuc7q4QYhEa8ZbZTrd5o9MP8U+UCnzPrZsH+KFvp8Bj9pqyEtbIvUYWyARmg91ab2
	 1RyfGB1YqPi3hSVrRqqD+8aAyWzFFHBmWjmyCE90j7srr2PF3EhVu9IgeIacsQZGu6
	 4CIzS+7yfp9FujiE6HoP3m0RleCOnNyIRb5Q+goOva8uSgGpJEOXUpUN5sQYkJIiix
	 KTyZ40MEfCzlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1021C44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 22:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178450191368.22811.2915482208726861899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a18a35e120db67bd3219fbe6eed58cc202027115809684d3e9667bcfec01c8a
Date: Sun, 19 Jul 2026 22:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784501913
