Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222691662E7
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752521994; cv=none; b=LsnIiszl9KuHFV67lX0z+Ko4VgIjis9G55wLAc+KC6FfNfkSjpfRcQWyzRNa12QixNdnik39qgkiyCQL9tT4hEUoUe688V8qKimejrsSrmeFDndRC32q0WOCoAnvJtq8h2/U0LNPbxtvydyh6q4MmeM1ymveSmB+eOymafZVO8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752521994; c=relaxed/simple;
	bh=MEetI9nSy5hlKiP5XDGzWsFIY3tch0IdgJLmI+8X9M4=;
	h=To:Subject:From:Message-Id:Date; b=LQ1XxHpuxNLGb6TWaGL0aAfLevaKv2uWZoHWdmlczHb/eYiNVix5MIDiHp53qteDEMvBNFKDrr8sF4LV9kTzKUWXmJPYP6SxxQFOqcLoOC5h9vZoe8htZ0ivNQH7rDUu5yw6W/PxDjEDIxmUbaZgVCGoYETHlX5nJahERu0mXPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OCek+rlr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OCek+rlr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C13C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752521993;
	bh=MEetI9nSy5hlKiP5XDGzWsFIY3tch0IdgJLmI+8X9M4=;
	h=To:Subject:From:Date:From;
	b=OCek+rlrsTLn4nFVS2+nDJFBvBUbNgSHM94pOcKv/HlebXC1YAhcRJFVuITOEcYez
	 eCoVbdGZ8FmVjoWObx2tg9td7+Cn7sP3enwDLWfV1BraT1TEh40boOBlgEc4T0TMAz
	 Huuz1pg0oTQicI4/jTkA+r9hQnCt+jTbzTZdc7vs1nm4GAfNd/aYkTZbcflNOITsRQ
	 55of5bfz7CW78Uh4kR7ggjjGhpr2Jk08saSjqPyA6hyyKBzduDlJ+VEG2NsE1ye4mM
	 oK9RE/bbUTh1FDc7fcEnoisXqJMUCuKd5S0ii+Z9UJjyiyvkWti3N2hpGgaehJA7Mf
	 tHeNcCpGp5J0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9619AC83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175252199359.23445.13406477216637429273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acf95455867c08fb63ead88dd9ca50bc46671c896d0b5b03b2af718428b0a6c6
Date: Mon, 14 Jul 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752521993
