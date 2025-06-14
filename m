Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245111DB546
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749926994; cv=none; b=bYCNToUVIZ54WJwwldvcUV1oR8N5dH2hlsLeKMQOK868ImPn/7l7aZrFbG/2sXlNvauUlM2Z9SekYv696jtx8BoIIB5/qR331uhYhy0dLnDYZhlg5T729kfq531GTWgMRaOU/yitI3YzSuqOLGKX0f/XoiEHWGlX5u22iWvijhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749926994; c=relaxed/simple;
	bh=LeK9SQd3LoLtDXY/KIKYbyg2tJGEZ6igmqwSmpwIat0=;
	h=To:Subject:From:Message-Id:Date; b=vGarhE4vKzD0ob9MUq2M1MJil/d4xvo6gaHXfpIkkl6LGM4xYxmb8Vg9jhdFZy1YB9k1ybZV6Y9e93phE3zE7ua7nzHsnJoJen3KevmKoZk3lxD8ege+Rw9OUMyr8A8/70P+dK2ivjhPaoZrK30LTTUQfhTVnZUBgPLFR6/oob4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oLhKeVed; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oLhKeVed"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CF4C4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749926993;
	bh=LeK9SQd3LoLtDXY/KIKYbyg2tJGEZ6igmqwSmpwIat0=;
	h=To:Subject:From:Date:From;
	b=oLhKeVedwnzaokpcKsCeZ+SbAP8dZ1fKMwZfqk9yk05GVT8w8DJmVTj7a3GVNDVRY
	 NfnmQPU5wScx1AaQIwd8Y36ZCYPhqPm+BuZMlRhze4Q48V7Ixb40kKbWowHhWO/sNE
	 yq6+mOqEppMVahOMJps7AJzY0E6lMEEhZNQSSj96IoYi41FUJ4n1eER7ymE1Aur2i4
	 v3GnyyQE0ifcN4KK3Z02TEMcPak4shaLoKguhU/ncuqp2RfHlSBj3WfZusclj86iq8
	 0DtQCDhA5/tmNMoI38Fps6DvGXzl0pudXC5Ha09mbjupxROaJeRkE9GR3om0cKTah7
	 BjdZNlIjYFtlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947DFC7114A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174992699358.9257.10083148420598775382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30a5151c9a4f9a09fe21f8c6d7e0db398f748c8b05c78f2ff4a2fa77e3ca12e2
Date: Sat, 14 Jun 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749926993
