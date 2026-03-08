Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A70AD27E
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772938494; cv=none; b=ZNGCtAuog9ZPzDMK7KNzfIUlP0jxK3rK1hAru1fv9J+OToANmlng+gupBVJEQhXn2peReQtyJe+kbZySwtH1w2WglELbw09+tyGYBhwSZr5uajEa3JT/SnU9I/3pQTMwl18MufWC716InYB9d7tZorSp/ZLTEw08b6Jo5RaQgR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772938494; c=relaxed/simple;
	bh=Ze9ZRgBg59WE3de2XT4ZNmUv6D0e7dRx86X2B8S9X4E=;
	h=To:Subject:From:Message-Id:Date; b=Pg+ie3IMq08mx2f7CqomOqShtJyqhO1cWuZuhZjHoeD1y0T6dXJ4/jGPZbcSZK1aBhGl9/1pFWkj4nIP7i1BomiWtszVtzW9FLa6MlAThUj0RYDL2iCrzHcun5uCA7lxSBoL1uT15AtBt8eEUWX9wfhFDeHqH/nTv2DIdhj4uFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G1JkYxbc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G1JkYxbc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0B9C19422
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772938493;
	bh=Ze9ZRgBg59WE3de2XT4ZNmUv6D0e7dRx86X2B8S9X4E=;
	h=To:Subject:From:Date:From;
	b=G1JkYxbctgaoYWWQhc+OSqEMgAX9FwstvcM638W5tF0cfGRmxWTornHY+Cg6r6LW4
	 SEt6gYaUjmjYlfOlQqVkLoPtLyNGNwlo2j3qK+0xB+aCsyyHe5fRR6Mff9FffoA4JF
	 B4wseLTKpSlLX7QOhOsJJndTmkspXV9pUo53HEbCC40b5gt5u3FXv/rk4QC/eholMd
	 EGKSuUXAlnTqileOfS+gdVb4tGLp06ZUETqrlh+kkL5duUetVUfJe4YMOMD4djbi0o
	 x7HsROMtGCHu6zdyvmAKaq7/j3uADKwptb3xxQyieLznGD2Pvy1s2x7TFPVawwWgst
	 xp1aFpE/NSKvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C5DF55106
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177293849358.2771.332885365030445035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87c070df43ddade380d9f4904fcf40908aa47a5317c467da1b69652f1ad6b953
Date: Sun, 08 Mar 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772938493
