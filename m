Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08C1F37646E
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773212094; cv=none; b=XkCpe8533aWpJL4W4NkeJNMQZ1mSYw/5DNy0J6a2FglI30Gld9VrbsLUOoiqNwS9vpb7WDWzMCTgZ+NgXVG2bmGrtt5WTI8y4Wm+yjeVjtDKAlMWxOVS2MMRTvDByPZlqMVbE/4500InQ+5cqu1wArkXaVkXS0+EADJvzgxLWeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773212094; c=relaxed/simple;
	bh=FprqCXQ0bpgfMpgHvxuwoBhzJa0QuxOIF7+aBoOU7nE=;
	h=To:Subject:From:Message-Id:Date; b=PAyATyfL99htviTmju/58K/QC1jk66xKpwmdb3TPSNjdMLRmpaTdXW0lwTZPtPzlSITgIy4z47E7Ab8osL43fTUl8RI5a8SfFosnUTm0zYs5BybsE/XmbXgt6zCb24Uu9EUCSyU0LPYNltfYjZKgqkedW9nZh8X9gQ/0SP34cGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S4OCJCuE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S4OCJCuE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DAC0C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773212093;
	bh=FprqCXQ0bpgfMpgHvxuwoBhzJa0QuxOIF7+aBoOU7nE=;
	h=To:Subject:From:Date:From;
	b=S4OCJCuELv4bhM48hHTFBRd1IPlaR3M8KSzlGkoz+AqdDLEIDwfursbPYcUxe9yjL
	 gNvom3nGdYDbd+oM0ijv58ELKG/bCZBUeYOwAwZmizqduFU/gW6IYa2YZeOf08llZC
	 qTlQHRcbZ9fNbHO1l3iCnD+ILSE/RKCLn/wEHmBMPCmTWUySPF5sEnfFTARbA/hQh/
	 vfLznpG92/DdVZtY1v48MXnRqV/GvKtA0poxio2WgRzIvXoi7gOu3Zn6vtG95Lj3Mm
	 tZy7W3U6AbrOHbOIfMA102ZBOL9rWfsdgDZJ9+OIxKpMGKRbptjVMue7PjDyc55DF8
	 jaNUCztJC/Vug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEAEFD063C
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177321209358.3332.17561247078424596359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e000a1835d59357a22762c16c7eb8b7653ad889fae4debfd18499408be04fbe7
Date: Wed, 11 Mar 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773212093
