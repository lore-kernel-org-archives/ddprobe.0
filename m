Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D70D931E839
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 07:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775114133; cv=none; b=UACqcyyzAV9Q5vjGjvT9U4NV4J6iFecgP7rx5vppPzTa2UPmoHi59xTK7HnhoZdn41uT8RI4pc4AYKs0s8DqkwKgKYpeqgA9I5zx9pZq9KaPOG1R9UKGUQzfYeQ5hwIGq2jtgdeEC8OYUJZU26jG7ZB6YQjbJTj3kWUM3s3bCS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775114133; c=relaxed/simple;
	bh=FXEV4NcH4R+ta/jltdydLldaDr9y2kF8guubtUrj9B8=;
	h=To:Subject:From:Message-Id:Date; b=sUpHbE0XNwnYl5uzpfSOe5TNucs1ngq4S3j2OE1KeKqGoxXYonAx/cPu33O9xaDj4qNpAZIxq+TszxvtaBpbSZKZBNtLLCXE3P4jLSfROpAMkQ5l8lt+/B2dGtmaeSD3OhDqpom8f/RHJgaP+Wmd5N7C5U1vbeMZzmTGossCCZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AlbvedMx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AlbvedMx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA8E3C2BC9E
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 07:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775114133;
	bh=FXEV4NcH4R+ta/jltdydLldaDr9y2kF8guubtUrj9B8=;
	h=To:Subject:From:Date:From;
	b=AlbvedMxQo4nwZ6lGVS9ren5vUrOM1qRyYRJuF2ogEC4lyIiimYx8DN6Pp2ehrEwj
	 8ztcxTj8tyrQOwqfUo3kzTXZ0kxNYIYpE1Mtz0/W/ogvWCFsIwPGSGQIM+BgLw6Akl
	 +kL/LDD7cX61hX34pBXsBVdjTF7w/FKxPWaMpZx7DBsixGekqg9pjlNYkOOd4BhEt8
	 QDZxAZlSy//Elp8y9wndqtjVy2eN856aV5jpg2hYx64WGNHAKc9zW6Lc7ndLP4V8TV
	 DY8jP+w8bz3zMsTjYajHPoHuiaRzxaAaTzAJl/1kwALX4aQ0Z2gwSWGmqnBBi22L+h
	 yse7b8QWFQ/ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB75ECC6B05
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 07:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177511413369.3866.13434396575371881274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24b0c8e507a1b7fa85e6895ecc2948e8a17373509e608950626ca0807bf31f06
Date: Thu, 02 Apr 2026 07:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775114133
