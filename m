Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236AD1A276
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727022954; cv=none; b=JAhYvZ6dP1B1I0Go7/P+QF1VZiuPcfYIzg5MpE9g3pH7rxWky63M/DZ8foYAoQwe68Pwm9O8iYEmVa9IYi/+njNgBnl/gHUqRB2o3uhGv+SA6NSX0QICximXdeJ5qcNH3ZJw5xg7J/Rx/6DLtTpJixKG/ryQkAzf3TGp9EjON9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727022954; c=relaxed/simple;
	bh=yQuUhrDip3313hnG5YZo5dXuzXXMGLOXqlzWIMFhXTU=;
	h=To:Subject:From:Message-Id:Date; b=lCu0YkpErNZ7uOVutxaSrj0NAuaEP+mCKp4/IgtAZvJjrvGacgofMNAXUMvHDDKD7Guqo91uNKZQWtav5EdA0s/bH8aEKHTEIL8NxW2VDPo7uR1kzeoBmcV3GLFyJHWopZXxhH0viOqIo3T7x7650qS29MAmq7fG/Tz15TQIugQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rlDGkD6+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rlDGkD6+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3095C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727022953;
	bh=yQuUhrDip3313hnG5YZo5dXuzXXMGLOXqlzWIMFhXTU=;
	h=To:Subject:From:Date:From;
	b=rlDGkD6+jkwP4c578DqfnR1XJSk8D7NyQ2cFNK5v+LZKR1HdzZTpZ0BgEbjn4tiuJ
	 m8v0h8y734RfzL5AvQ6TvbOY9mLV0pO5wc4su2rWrSsrfDLXbr90rIlk8nE7YpxcfY
	 y4SrwCOo2zW1WwVR1TyT3MG0D5ObwNTF+7DoZ39kB+ALkqcJba/AM6a3ACLUFsCdGr
	 Hx7BpjXJnsArP88P6VeLr727N7lMeVYKZzvcj3vPOeIIwLN1nT2Zu3PikBNf2a5NNM
	 I7XAygZijK/E5Agp6QTzsz1bDJJ6HxU+mg66oyXsWz0BIHfTf3hFqkz+T2/l/Rl8Wc
	 nk9uGTOP3aViw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E9ECF9C69
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172702295360.24234.16050570207925993393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bac56f4f52e8be39f615f6b55a4f0fc66097b8dc2e3f9bd30aac522b4b62d87
Date: Sun, 22 Sep 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727022953
