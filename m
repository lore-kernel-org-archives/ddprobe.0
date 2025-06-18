Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19AB9381BA
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750252194; cv=none; b=UVIpmRETC5IGx+M+Gx5g78FlGHXOhyv9bMXd4OVbL+KIafFNmTV24fD7mLrQTSQeq88ZQ2rQX0um6xH8CrrdNyJczZkdH4sPa5N4PuZQbzDVo6OgvplFqpkcjTJu5kSOBrzppvo+prvNS5izSwL1UVxi4gNSmzLOmzpFwr0zWMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750252194; c=relaxed/simple;
	bh=XHrhvCimTcEZk8zdlBBzZDQpiSyhMEYwAoCEoUAJLAM=;
	h=To:Subject:From:Message-Id:Date; b=V1TV82efzZCTd6ymMdUBuySBq3AK+qqX3YgGQy90jZsJ0mvEXB7/zf/27dyhhoF9MJU8DJwAEfk5NlmP0RrbzKDznf9jgcqf4Yocthw6uM4mb99IRgE0jFV9muO0JxSHmWO4YLdX4tTPNGLzyMErIp3QxcubjU4fMlTfsEUyb7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QG/kj3dQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QG/kj3dQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1C3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750252193;
	bh=XHrhvCimTcEZk8zdlBBzZDQpiSyhMEYwAoCEoUAJLAM=;
	h=To:Subject:From:Date:From;
	b=QG/kj3dQdV+YCAkYFMqG6rtywYDh3j9EwR5mdZwPwdHawy00gqXbUXtzVEMB3dlwM
	 E1ZY2O+ndnvdQUVY+9RVfdsyNd3Ws6Qd1U8XkcY88Vw7yVC1hTioN3ReywdEF0IOBb
	 nkGtwXScCNJftadDI7h/+jwhIcpEbBko8QN4Ik5Gq9CfLmrk4JNy1yzwH4/I8VTIpc
	 GFB+PjAw3FF//kv7vxJF6Gy6m1I8pAEW7LVQvjXf9H/ovuObF9zJwUB3yw0jJqlXHH
	 tudk/YBnPKKbWcd6I2FbZe0BtR4ZiUqxQrBbTosPbi+koVUp0h2D4ZuVPmAM+ANgeM
	 Trc4liuzvgPRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906F0C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175025219358.1563.310680386664772466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b76719db45697ea2106bb35cc2cec896bd7530bd3828b5992aed58d892c785c2
Date: Wed, 18 Jun 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750252193
