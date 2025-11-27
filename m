Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FEEC3115A6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 15:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764256374; cv=none; b=eho3q/3zhmL7rLEpo/pTNf4DiWh4Qo5lsGpbB3VC4fpKfxob0mGz8hFAmHyrqAuwPstIvGu34ZldCavQ6ZctWxyPixmF5Cc7f4+M4UuUNJ7JzNf5r2n2sKzVYQ5/A5a2CUhNcJ650bmGZQhgxVTJYA+NiG+TMvVTj+yqS5agZUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764256374; c=relaxed/simple;
	bh=jusBQGK+f6dTylUoDL6LGFpsvZBut5AtzqxBSUR5x44=;
	h=To:Subject:From:Message-Id:Date; b=d06IhHoQ2JrxFcofSokfruH6RHJ8DXUuY8Y0SzRMMAtmj7xPQN3G+GSizIZy+JqYNVVM+2KovzC35WYbOeocfV3wj1ssWC1wd7Fv7TJWfUS+uRY6IKjR5tEHrp475Z3giq7/74rDU4WbbHRDIX0CTIFVRki0eBGi8n77qGoHTE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jl02PA/p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jl02PA/p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18CEC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 15:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764256373;
	bh=jusBQGK+f6dTylUoDL6LGFpsvZBut5AtzqxBSUR5x44=;
	h=To:Subject:From:Date:From;
	b=jl02PA/pKWgFA/K3hjjde+xzN/S8UGGNdyPYukZd4zMUsP7ezkTx+Jv2o4p0iGJio
	 IwP/oERAD6DRKxYKR8EBZ5YACjXrUtUBIukavzRx4xkaHuF6Km6NahxyEul5fKyQGJ
	 dR2KxhU3sn6lYRHzMN2lBQ5Iay+7TlWT+YLTaZbQoRFFOUE+uRMWb0zftbxMVIdpYM
	 //BvX5xI8qFBPa1rlg/7gilzKbg8Lodw5PYPLW9mUobSB8IdlNIdXaeWN7jzM9FBQ9
	 IUJyJcSOsEWygNDJjXjaYkTBLxpSxd8Pu04o5knG0hz23KXUEXGShvVEcPGaSbX9zv
	 g+Ljc8SDPIxUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A66CFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 15:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176425637358.26181.9010992087516660671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df17738f3ac35825a84902da64953fab50290e204ef98e527e3036c5e3a6660d
Date: Thu, 27 Nov 2025 15:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764256373
