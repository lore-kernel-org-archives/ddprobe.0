Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7321D54FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 21:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740949734; cv=none; b=Pko0YKr0sfx94ikxXA49M/2WwsyifsRUkF3ucv+04eMgUmEpAXRbQaN56LyKkvPTrYEcVGDs44w6M5sKAG5kiSJTHpL10x5GDo+IoxY2sjV4Ff8es0WeTXP+L0efyOSRz+e5T7hidTDVWHUfP5l7wUIyrUKYWw8CW5XP27SeRNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740949734; c=relaxed/simple;
	bh=svwWn7oYvfqINkVgSSgl/X5A5TMBiuiWMeoU3Jd1Op4=;
	h=To:Subject:From:Message-Id:Date; b=iN+kHAieN+hWJMmK2PLQekmxrT/PVxP50wAUeJ7Dok1E1b/YxD5f1sF4lUe8WwEFRyd5FTQmXPl7BZzO6kfnLbzpHzwXaor9AedEFdezxrXqsYyid8++JN0FV/lXqzEb37mCEyFhFtg1VgjRAwblhS3nZh9YpcpOIOhKJUet9T0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HmEW/xgq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HmEW/xgq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E87C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 21:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740949733;
	bh=svwWn7oYvfqINkVgSSgl/X5A5TMBiuiWMeoU3Jd1Op4=;
	h=To:Subject:From:Date:From;
	b=HmEW/xgqyySnxhFF4ssmVOd/Eu990rv6dszOlxus5ir/sANQeDrQLY3OCVKKr3Jh+
	 KM8MCT2MNf7g5AqLDxvuabt46SDDm/5W3AnoTPL0BRJAeMGxIMSrhAGZ/jlKX3T+7D
	 LAqEn5eNohFVhEHhlojDzL9RCfarTqcP+6F5uZgFpfkykxramwwoWz6aTzJ5+4A9/m
	 6uAoaHtIuohnaVjUKzv7EyoV13sLxygfh4ZZQk7mspG48Y2Gut6KIoEl6zOJ+XWNhE
	 IcVgdFpso40976sZuJ84AfL/cUnTSWqetz6Dfz9VGybztzu0l2IkF6x1Xyzv6R7FMy
	 /a2xAIu73aaQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3F7FC19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 21:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174094973365.9548.10199656673636064322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04b025368308128cadfbd7682d1deec8c6b32ada7bbd7829ea419c42fbb26e24
Date: Sun, 02 Mar 2025 21:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740949733
