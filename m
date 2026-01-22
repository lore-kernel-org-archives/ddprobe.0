Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D928936213F
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 15:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769096035; cv=none; b=oKBpWr9l3bQi1133wjGzY3+ybcJljN9CpAEVNzEnuQBX3NzhKm+40Krm7Y7AqIWiC0m/64L8VttPGZ6dOAxPvzhMMj3JF0N8dOGVTaYFa+/md/QjosoBMZiqodlX+Lf2yjsDA2a93wDQkbQZa3CJ5Xqb+TUmyaopCeTjw55hQ5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769096035; c=relaxed/simple;
	bh=kevT4KBbk9A42/MoDPFFQnI0zj9F8FJJOyyasVKrajI=;
	h=To:Subject:From:Message-Id:Date; b=TEC0U3Uhld+o+x5/WIbeEI41lIUMpYsvQmu3pYBpkXT70Zh7DLj81+X/oiFgWp1mp6zuNsK9uOR1mg9isP5tK+qr0kTUB18MXQnWiXxEc8Qo8c5uJd02snmmrepbrj5AIwOpwRWI6IvLsDZbxL1QBW6KoLWG5Zh4YZ2c/7sywMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/aq64GM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/aq64GM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A097CC116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769096033;
	bh=kevT4KBbk9A42/MoDPFFQnI0zj9F8FJJOyyasVKrajI=;
	h=To:Subject:From:Date:From;
	b=D/aq64GMncpG5Iz03ez6/NZncPsPRfk7Kcgql90V9uLkcVHjOQ1xmrzJZL7fMMf7E
	 CqBZt7lmFLhR38NYHrdRq/dX1kO1VSHmnWlblwecWDJ8zTyXKrRNjiAz4UqMixpOI/
	 IiS83mNpCia/1VQNUqA6/t3ZJ7KTu7E+soslZVEteYXSSirIP95rMc4M4nrRkqe7Ra
	 IxeDaRBKGk6YVOa1Xns6CMTQTTybgOuuMpqVIi7V3+F6n8+tIvohWdK2SPxUpD25Vl
	 nfAZS8kt1/NWm8ioSy0EV7mrUBt88OmXQNHuegSs9TFz+1raPs2woPULYYZ7J7Ty9o
	 DSEkxejLA9sKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909BBD3EE74
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176909603358.10011.3616867766794966061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 401a30b4c7c95f2e0f22e16f81c9fb23782df8e06d124d7b1d4a1e4d9441639c
Date: Thu, 22 Jan 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769096033
