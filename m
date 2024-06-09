Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D62914295
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 23:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717977443; cv=none; b=FFsyGnq9pyW+fdYZidj8mi556U//+gqQjz/W2TEr22l8BdS28sOYzwglxki9vLg0V47BwBGhqRE2N5k+U/u+wih2uv1G5geL1wC/GoVDh2zZkYTahi9lN6WjIbA/cvaKIiEDX1Iw/ZEKci3sFa8JvWyAK3x/nq7l5YP3LQ0f2rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717977443; c=relaxed/simple;
	bh=FKCHRAlCMcGdEMhK3jmWpNIO7uzOd8OLkp4i3UtwAqQ=;
	h=To:Subject:From:Message-Id:Date; b=IiBrHnmUVdJx8d54P1ZOys0if5TqXXqUyqXQwNlRBv6Alez5a7jcWYPyA9dJuQCO1cVTly0PPR6/oNQX/cWljL1hHtl0zR8hA0uxn0orO6PvyuyPBMsWAbfKDelCawoWA18WRH4VguHmGg5VN9kZxlhyxUESWw6BYphjfogKPCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FGdIAVqb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FGdIAVqb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDB90C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 23:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717977443;
	bh=FKCHRAlCMcGdEMhK3jmWpNIO7uzOd8OLkp4i3UtwAqQ=;
	h=To:Subject:From:Date:From;
	b=FGdIAVqbrtj81+KVhyaMNkl6iS68b/Aah7gRXTv6Rp6dxymrDV6L88ZW0jfT7tnoc
	 A0yeMavfLB20yK67bGfi0mgjNzVWbUPs7iGKht+IRmcgy0zyVdH+bH30zM+VQ5XYdx
	 BHRTyxesDM1sYmxVqxL+pJRaI7vIM3KWjS4M8e2ZF9WBj1xDCSarIiocmYOOv9kS+L
	 hFwo4V+hfFGL1elcMdsAm2IYLYwZsXdDmKJybUjXk5UCoY3FBkPeJjwtZNht4kzpe/
	 /OsMybHRs+dh7THj6M4a8Bp4DJhCbJM22r+ZH2muQuqh6lBpGDIfF/zq9LegrQYsaZ
	 WkRpHuFm1H+VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6EE7C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 23:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171797744281.25526.16167784845924029716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0eb64153bfc32fc84e817ba9fa0bb82dd5caa3beb2c5bbf93f2996a5c4070ad
Date: Sun, 09 Jun 2024 23:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717977442
