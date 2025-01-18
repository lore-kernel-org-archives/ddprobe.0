Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5395117A586
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737234954; cv=none; b=MtSaW9AxoS5C4vR+ijeK90HJYIh3QiX2kZKPs7BERi2053yU3Q+NZmY9Ejjjm43IpS8XyVeKjYuqgnfOTHQRenmT53W8YBnBOBBEL1K/p3UQmZ+WQq5iNHKiqmblCRcPypaJZYMCLayOF0Z9NTj3sG7OUIKghJwpSCpaUpzDF+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737234954; c=relaxed/simple;
	bh=IufSOxauNVKxrgfKm/Xd5kv8QNGzBFfhYVzEYPGX3ug=;
	h=To:Subject:From:Message-Id:Date; b=i33aPmnXwj/BIPuavqBj6Yxj3rdVM5w2JV1SYZw2I00hQByZa2dOTQmP9EcFKN0RIHHMjSpsCcX60IZjRssnMmk65JMI4hd6LskEwunMB/0cOD1BqqVgYER36YfmpKocpiElEl5WhoGTYRm0a5/JRhMssWKTZLdwwf0ePl1wtpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qrBnMEHt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qrBnMEHt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0341C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737234953;
	bh=IufSOxauNVKxrgfKm/Xd5kv8QNGzBFfhYVzEYPGX3ug=;
	h=To:Subject:From:Date:From;
	b=qrBnMEHtKE/kl2wdG9jzdtTW3vd8ty5kHbKxJeqwzX5VzbSbp/7pIVTkAEcNxo4vp
	 4qyE6+VXD+fZe5U9mOKG2OVXf9/43ux9lP6iDbTTehG/SFuj/oIy3Z3suTQGyKdpbO
	 ZHVdw9LexyE27Xq6C6I8ZJsXHVe9D63Bo2nVmGxSlZ8wmbNLf8gLH2iOWUhGGiA7q4
	 LDvll/v6rkXRcZk7eeA0zpuPC9k2A5OxBPTnKsEqB/QPbzcXvjkD+hhvwCLO3M3V+A
	 Ghv/zl4Uy8Hm9papRYXU//Iylz9O6Qd138E+vE92t+fBBq7gUv/N/OU1nsL79UK8TU
	 bP2QWkPsUWePw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C876C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173723495361.19854.1466000354186162846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c2ff59ef16e2f4351171dc0482f06ee5630f6c9d65ca5305503d05ea4fca6b9
Date: Sat, 18 Jan 2025 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737234953
