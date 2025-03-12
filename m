Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F87C78F29
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 18:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741804134; cv=none; b=Igs6+/OAbwaAPlJfZ0HEXhq1UIXjNvQiywgp8L9Fgnd8xnmE793fylX3mtr5fVDOp1tUVLpg9wxIkKXh8wCoN+B8vKulmfEtnuo3TMVxL9Md1T4TsfHkhAoKpMsQ7rdhGIxfyh7vVpj1tKPrhIYinOe/h5ygzIeFLob1UcTjSxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741804134; c=relaxed/simple;
	bh=FZmS4A6pc/GGc02UejNvYm+0wALhNcHqnNR8aFmttbQ=;
	h=To:Subject:From:Message-Id:Date; b=cvWSCqgS4Q56y1Q5nXQpqkF9El0AQ2OVfq6oW558zv9jZP2YFMhFrr5t0XyMuruK//0I32aF5XDxgkUz0S22+R+VsQt1KzclDts3/NEQax/nY9mfOtSnjmz7Sq8GrYX14aVJlpKYHleMvfytCu/OpjJj+8RJ287QdLe5V6ygEnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJ953hgB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJ953hgB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF11C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 18:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741804133;
	bh=FZmS4A6pc/GGc02UejNvYm+0wALhNcHqnNR8aFmttbQ=;
	h=To:Subject:From:Date:From;
	b=qJ953hgB7qCPgVwcG2ArvdYlzp8zYmbEkqCL31ccpEhAkfxVCe+tDcYW+kKzeGpJd
	 ZtYZSO/u+q474VaIX5yRJK9jZbwscUrjgvcuys3eXI8dVRPEcS4F+K9kL4S2nxZzRj
	 iAr4Iit8O+yQIwfP4ACLoMp0uhwWT28wXNLD9wazt+v4USHFN0/IRfUodf+x3AsBqa
	 yl1MsUSIUmy5b0iaiGQfizSJlAPORsHUUSZWsqfNUeoxTwh4v29n2PIo4Lp7F7/y9z
	 YuAMwcWWPQseU2XngbJgalOJvk75MCMc8zV6sVNMnraZuWLc8N5sdxiCv46+Wfo8Da
	 QoOstg0+wkryQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9939EC28B2E
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 18:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174180413360.28789.16484146780887098754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da2d2b85e38d4975d5c293441316eed2d4a27a34d08f02a9d853321792103393
Date: Wed, 12 Mar 2025 18:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741804133
