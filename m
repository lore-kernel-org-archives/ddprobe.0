Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104CA30DEDD
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768205634; cv=none; b=eQNZYwUIESl2TNNfHIbm5edVepUGQ8M8fOSDRYCPjVjwlTb8w1ABTa1FR9F0IO/drEBbhqrisQa9uCjaqRxBkYA6jmb5/Livm6U4IVy8oIN9qaeCSAwKwnIG/vTjwHDOgYlIvWd+SdGLhbMLH6uyrMrJGN94I4Q7A4q+kztE2kM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768205634; c=relaxed/simple;
	bh=4NbrTE8jFCZ+nFjJPJFrsKK+0owAg8fe4CG21DInTRc=;
	h=To:Subject:From:Message-Id:Date; b=p63fxKu/axM9WYz0NY5s8NP2o5pma2Gs3DySJb4XbhYPQz5zfcn6jHXpsWRW9J3/8l/tSRsdaQKq9AFxxUOizwFALuZSWHll9oLUKZ8/R9LcqlLzHb3eFYtiBTiWSYbsxERz3JHyCr4kXj7xVdbWRem5rvyyV8STIfnA6eJG2lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NhlfjPQX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NhlfjPQX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F152C19422
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768205633;
	bh=4NbrTE8jFCZ+nFjJPJFrsKK+0owAg8fe4CG21DInTRc=;
	h=To:Subject:From:Date:From;
	b=NhlfjPQXF9NDXWPQiGLo9eJFy7aziWqwzRwsxC5lpNy7qYzUPQh+C8Fc7SYlN1lFc
	 S/C8+IJ9h+7b806OGOpk3cFbRvyZ0vm80SiWxrguQDfPvBnYLHhj98OUbY850iHHVx
	 1364ZX68+uaS42pVPl6A4/GIvWrxBr8ca3xxgPgsHmFa1CfaAY3/Qz2FyBn88ops9W
	 AYw+qoo1KfrowDs7Yp1y0kfbxm3W0u+Aue5MJmb0O1JA3fw9tkSsoS8JlaQSFg4L/R
	 O3CfUN5xkxjOCULi7slfc84wjk6NvSQvW+uWFFLH20m1boul8z9ya+smdhkuSImI+6
	 bZOeJs2nt6daw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909B2D25047
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176820563358.13799.8898440027186200159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b65b678d1107765d0531cfc41b59ed92007ba3045a49abde602e2b7d58769584
Date: Mon, 12 Jan 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768205633
