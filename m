Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B433B8BA5
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772023494; cv=none; b=IBCEn/WND1MPG5rEUFzD+GExCUmM4yW08Od2M32D0sPNDw1mRzKzO4lJKoI5JKQHJe5RqXN2/XjJUvqpodau5nvwLKvYhfv9zIDPw2uuMRGG2bDWnkcP488dXJ+YcRvA8/u5YPpXr0PniA6SbbO0uXH40xNygF+wnpOArwCFf20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772023494; c=relaxed/simple;
	bh=YVPbloE8zyu16R5VTWDygbx0TiXau6sAzWH2gtCzoo4=;
	h=To:Subject:From:Message-Id:Date; b=DsmZ+DFYno54Gs7QMQihVjZb9TRkHVKT/WDqEjmz4ZQoTk0R8olocG1+HXCEhL4uJoy0MYCDIOv+q107rA82kKL9eRI+rhh2vQnu1nzfZeGZacovOu/IENFnybj5YqbVKbUYLNhYlc46JA5wRlXw22PZy/NSEivYHBM3/1LJ53o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNU0lvxI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNU0lvxI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72BEC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772023493;
	bh=YVPbloE8zyu16R5VTWDygbx0TiXau6sAzWH2gtCzoo4=;
	h=To:Subject:From:Date:From;
	b=mNU0lvxIjXzIZFv9P+n8GJhvy5dqv54fUsW3Q7FA1snbaTQw0aCaQAaqTy32JYOiy
	 aQDUGAlIKV06FqWayTX0BNTHTRSA0DU+3RzFS5p8MbvHYcNEb5oRAlUdyVF+YRU1DE
	 gHXRTDA27XVyp4OYHvlH9ypXbx+YLJ8Yv2JU+g2EEAL6rHr7cSndDGYIEStUn65XGa
	 UfsD0US3MzgTW/zgVDJIQufEEUYFNlJ87AexNY3SXVKjS9x1tIPvOttggpvobLJuGM
	 b+YXS1XblAQk/Fdo9m9s3AO91PpqLq7goYi/1BWJUugacQYN/xH3K4eMT5qSgVl2V+
	 aM5b4b9CjV9SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CEEFD3756
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177202349361.18737.12137831520658884436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79c6aa3d5b48bd4f1663427e3685b342abd53147088505fcb9cbd1f1c4859f9a
Date: Wed, 25 Feb 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772023493
