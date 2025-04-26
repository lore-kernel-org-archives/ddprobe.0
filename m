Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315954A02
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745633994; cv=none; b=KmnD52W9OWiqtmZTmZpbdrc4HXJ23Tx08nFekumxWPPPx0Abof2+k3UjjmnWTP0YcdvEwWX+m7MyQeEQp/ZbM9GLhGTNoaxNgwFLKT74hCudLC+Nioa6QQoaP5VGL0eqFPgaaUVR/zM989Wp5BxIjaQJCTyQmJuBeyaPsQnXE5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745633994; c=relaxed/simple;
	bh=3TfFm/g5KNxhecx234nbrBCuRKWjHnfhO8RDHxamT4o=;
	h=To:Subject:From:Message-Id:Date; b=Y7BhuHZwq6TE4wdPZMUZgUbATJ8F4KxvnUU4K9ia8J+x0U6A4dgGZ8uuhfbxVT9rzbAOnArVusOrkLsK3veDWBFLqYVJqn5lw/4savOTo6TOGpUs+5E5x8X9hbfOMVwlD7KnwYVEpf4xGEXo2L9Bct6vSrvqPlfHhtScGetW0tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m9K7bZwu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m9K7bZwu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18A1C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745633993;
	bh=3TfFm/g5KNxhecx234nbrBCuRKWjHnfhO8RDHxamT4o=;
	h=To:Subject:From:Date:From;
	b=m9K7bZwu4QfFLc72BJ9iq3+qv71nNvZ/EHXtyQ2y5D1tg9jEb8ZBtKuiuTTHjKkoI
	 0PqcvZX8l/3BFMYqD5SDx7Y9vgjTFCTf8QTgSLVItKlK5AT/sae77JhnG7g5I7lkzY
	 T4VGonffV76oAgwb0UcPC7802wYMdtubtJGsyummNPjBvtCPXJecKz4BtWFfitPIVb
	 YlCb9ywpkcW4Umo7FjozYXZKBPD5ugvg1d0rwwNplDNqoKlertkL736qfw3tZOXz/C
	 eVUCuanQdYm5Q+6zbiDWYQ7mWUph+TdJ6WaYRuyeje71NkkOcw81MniBfOtG11gOnC
	 6GINnHLlXSwXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91170C369C2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174563399357.20712.6789502953944902778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8300fc5619b4cc09efa9fa0b67b1f718bf7b5de168fb40e005199829c1e79f3
Date: Sat, 26 Apr 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745633993
