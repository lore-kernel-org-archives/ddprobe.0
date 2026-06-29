Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 544E529A9FE
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 05:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782710314; cv=none; b=tQvJk3w2kCGBDYZPtrtZdJ9RoaNNviLdCflg1OaAovrMl+vepMSoplXDkf+3ox5D0vdQ/lMd36RRRGMNBGICGGPh4hU+Ggb/f66j/gY7lCwT+je8QErX4u0EBldY2AeNS1z25JI4XY268KI6ZhZ8YfKmk9rHFD9iSUmfh8oVV2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782710314; c=relaxed/simple;
	bh=nEjA3zwqCGqTbfypnqN7guH0gCcY1g5A1jjpn53ZP8I=;
	h=To:Subject:From:Message-Id:Date; b=od2/xW+QdWdVSLTPq8tyokC/ql5jp+i5SnhGkWPI+xcLJLI13prbg/KxrWhlhi3iDMB1NQFoHA6sfMHCjxirWudlqR71veiMiPUrVzJES1Y6CdaN6T91G+BuRJJfn5VZRsKEaFW7kNvfyLNqE6nnSqBbebJQ2/a4d+R/hX5CJQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dWqy5I5M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dWqy5I5M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A7BC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 05:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782710313;
	bh=nEjA3zwqCGqTbfypnqN7guH0gCcY1g5A1jjpn53ZP8I=;
	h=To:Subject:From:Date:From;
	b=dWqy5I5MAewTYwF1jmJNE4/PPWvt56tOq4UiN5AP6xhPSbg+Qs5RYMBfzfOPssPlR
	 c1H8G6JJQCdf93sOKmynThWUmkJGhGziI7//qVO4VgpvLwdrtNt4Lau1bzouqmqghb
	 f7YaoyEiD1DjTUHo7iq1dok+941Ee8uKEVLGAVAg4BZ9yzbaWE/3WKIG/sp0qJWtzO
	 ogr72DQ01zQVxKzzXdDomujCdEHzAiUSTIiNpqa+d+jXUwDd310ASQUWhJY5jr+Dqv
	 VthSfCvOgGn625MyZoigi+w6z3RADy7sLOLmvvFYjEQaIP1W+il+nQLmFv1lDEGKZ6
	 GNW4QD1a4BVLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2991C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 05:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178271031371.7164.12875246150856390760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7570fe423a02ae9e51f670f5805a93809e0ceaaebe699098d5e22a10a59ea6d7
Date: Mon, 29 Jun 2026 05:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782710313
