Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BBD83FB8B
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728747354; cv=none; b=Ev6i8R3cDamvDqi4g9owTebAhdhXSrhutEcQLCQJtm6CfJ0ADI8Z5rItpfSNYh+PKSzGaaYkI0asOk9HjLjAMu5enahG3F0HNh47aq4QCAPPTpe0PN/inuiWN2rbDPlQ68/v6z827C9MaLoRlhK+Eb7Fc+n3GIc4839olPAAyIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728747354; c=relaxed/simple;
	bh=GYzRoqI46sGPMCuRN6wXHeAjxunWvohMIjlI0nVVRHY=;
	h=To:Subject:From:Message-Id:Date; b=GUEVKHz0sd8HfUivLVqob2vsF4Pe9+s5zSMV+gU6sDUTeBVKsGwqBiVBJ7H38rb4oJU5sndgqgfPeVHdBKzd3aKhUYdeYiIWR74l0EONqFJP7fQcFptqUx31DDK4Jmaq7GE4IVlmGjjGkkDWaXuLyoymMgNNjHlF0uAIHLyoJ+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ijFoUumw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ijFoUumw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA35FC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728747353;
	bh=GYzRoqI46sGPMCuRN6wXHeAjxunWvohMIjlI0nVVRHY=;
	h=To:Subject:From:Date:From;
	b=ijFoUumwDxBOdrK2hC8oLmSJhGkjxGNAMH+/9/JwXCwIrZbBwxfoQ7knH6nGMNitO
	 jOEmB8vkMt36H4vkc770YpX6a2paVYZOQvs8Ffs/ImxCCMdHzqGMvO7idegFlMxWg6
	 rBtqbzbqjGgODYy5vzpHjaqhidrBkTELeA4j4zOXEzV6qy7+w4MuACGg8yWH0OBXuZ
	 YNrWg+UJWYUArn8VJod9zSnju+WJQ+k+0W1tzQBeRt6sOYXiJLuZseV2NPpfqjMs1t
	 WaqoOmBydbCDteWlIY87oPRLGd7wpZ9o3aO6x1rowD49WCo8gR8+WtZNn19KTl7JbK
	 aJFImg46XFpWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B99CF256D
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172874735361.6201.18412315341014251755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cbd585039018301bc9f30d00bd7367389a97a6e872fe980ec037d33980e0db1
Date: Sat, 12 Oct 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728747353
