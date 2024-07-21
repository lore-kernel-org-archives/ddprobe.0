Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D52440C
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721553954; cv=none; b=Vl1sVCh9uyW16E0ohOAIAZXkHCUAS/mYranNYUOKYFHbUtvUzD8LNnJNtbraSRKb4RO9lpVj0UQZ7sIe2Au7IuHbmME5zriIs3VpROCxG3LJy1k+avhpASepWDYAIRda5MaZyT5kqsVrMLAarmjPRjrZTW/sZEwAu6N8/FjDnB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721553954; c=relaxed/simple;
	bh=pGHozp1uejj57/wMGquBm0b4Z4H92HjHILhXFPdCj+4=;
	h=To:Subject:From:Message-Id:Date; b=Pf0h24y+fr4NT7k4sRdIiewLCe2k63djvTK+bLCuSSVjuBAQQr+001cg/+mVGYNrNKrI7EZMgyob5lqoiZtdqiVyk4i6YCBjRlgc03J3ijLmsB/h/jM0hqYw3+7w/obxnbQPBWOd+gdyI70aawSZlb69+GqRxhOYrSQ0KRi6MC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UtzC1ffU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UtzC1ffU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C189EC116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721553953;
	bh=pGHozp1uejj57/wMGquBm0b4Z4H92HjHILhXFPdCj+4=;
	h=To:Subject:From:Date:From;
	b=UtzC1ffUaWDCP9WfNy3NECjgYajUfa+okios3Z2iLxvaSAncfZ0HWqXHcCAptiUZU
	 fgrHyCuHGYDHnxEf10CxrjYkaWNgW8ZCkDhItsZLYTgvnaw1B3cPcvn9qMYp126S/o
	 Ba2tywJ+/ZQ8ps9jLVq8dGLH/HvYiNn9t935db1zji1Z5swPS9asJf0IcNwY5itsWh
	 VBpbuZpgdV+cXmKFlUNCixJFyoLIqpea4EgyzCldRURyezW+wHCOfRkaB9SoEehlQ1
	 t+PSpjygmf7d4Q5RVXP3LB5hKnZV0sgyOKtKK/NxbqYe777pdtSXpqYW8gNOJE7Tsa
	 0VKwYwWTFYYxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A34DFC3DA5D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172155395363.5866.12016366230177224787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f6e42441a4110b5782ff39e17cb1910a05c82618dea3fbbc17b874b0fd98324
Date: Sun, 21 Jul 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721553953
