Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78CC516C878
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 11:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718191703; cv=none; b=WHr8E+r8hkhBl9zaH7WwATkgXN8bjLGztCv3KUeQQAfQuay/ndAPxQk00fR7BaYo6/PlOHmD4bwblzivDh5/9b0ZOxdSbKjSAHw3tO47wAGs45v1RYRKItwidUUrq3FJUe283rqT/ljC7zxtk+YYBcnDpBPLX3S+AiBzgdPXLes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718191703; c=relaxed/simple;
	bh=UI9W6T58J1aMNlo0zXJXBiURgIsLAtPBxLpWEACQgr0=;
	h=To:Subject:From:Message-Id:Date; b=KB9Jl5ccAsybAbupH9fA9LBNm78r1aNoHaANTljLWlPRvm40SHRZFU0+JvuJP7W31b6T15LeYNJtVYJO4BmUcrH0Jb//YglJNyZeua/VODn4Jr0tTe+hJNPf9IgRV6Xb0uP/n72zEVEd53nB4GEw/xGcQwZ9eY8Pi4+/zWgI4wY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T20EUXaj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T20EUXaj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE755C3277B
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 11:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718191702;
	bh=UI9W6T58J1aMNlo0zXJXBiURgIsLAtPBxLpWEACQgr0=;
	h=To:Subject:From:Date:From;
	b=T20EUXajY8aJxzVA1dmj9GfhNYlMW1c/+91xjhZeRDdWRA2m6zhbbQQfqUgMpiMt8
	 NDr9APzxY29RNrs4vdds8HC+w1PmhAwva38mumoYmbNVdIOp/c+BR1jnpqcNEYbTy3
	 I6N15M04ol5fv0tNLgtlf3+ao/Mq/VfYJzS89o1xQvB0IUFWn7Bt9JQ5tnhxPbFmE8
	 ll0lJaN/MqLJW3MvtfAcUh9uFE938kipVsL9AEnFCeXv9TyU/mTZEXa/hvct8gqrWj
	 3PzeZOJQ88d3iuF6dYB8vres99MsqMLVbFOinATFiFpdrnLihwnmCzHKtg7N22Un8I
	 coLLDkFzyVIdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C62D8C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 11:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171819170279.5015.2722609984391772891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 433406dd418e39b3a5474b22e8242ae8046667d9613e73f704f1ff81e7439613
Date: Wed, 12 Jun 2024 11:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718191702
