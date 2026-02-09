Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1045C389449
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770657834; cv=none; b=D4JkTX2oOgm/EuZoJ1uJdgfUzFnH2eFwPEJhy9IUnMmYRqIaIoc7OEViwv346Zf9Gv+cJLH9tMMnp7/DDFoSflqfsDJADAwCzKPXwUPo1GbZ3By5gIeHjVLh6hDKOsBciQL3arhn7JsgZi3Q6ow61emlKpE4qWumMPkkP+uSJLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770657834; c=relaxed/simple;
	bh=A7eZDeykTjlXcReX0tbRobNKs3PReYJc23XcKitx9Vg=;
	h=To:Subject:From:Message-Id:Date; b=Kaa5MYfJUiza0tofNGatCVjCjT66LJkB8aY5jEFryjUcoVTRLA78PJsLVAPmHCRtk1dKWueTVzrSve0pxau72zTeg9s2i2KHZ8ocJBCqqLnmWD80lCxbVs3MmOT+0dhub8Y/MbRZZg8JGF1mrgNfYRVqMlX4jaeUM19O+kPulmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tqhFDjyo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tqhFDjyo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF845C16AAE
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770657833;
	bh=A7eZDeykTjlXcReX0tbRobNKs3PReYJc23XcKitx9Vg=;
	h=To:Subject:From:Date:From;
	b=tqhFDjyou0GYK3YUP/WmiG4mtIk+8C6ABiAfW1wp8ii/Oy9x84K3QQ2iNTxkd8JIZ
	 svrv3bjRrfQawfZapgiY4GLtfnhksSdiu5iIYimUG17F7oripicL5HVkn9rYOgjWvw
	 v7WVKNtWe/MmYcRnWPDE6r5OWbXr0kZSJzMRZbk9+Y49vhuns6OQFAXryx0vrItOGA
	 sY1RAcZ0+CXK3O2Ph0UfzP+nWwaGFg2S3L16Q8Guysbwf/x8bH0gqywOsq1EC1VyNa
	 j3fXWSidKUDp6iQSPRyaRG8gp6O6wH5+bKCMY5qw9KAaTdItvljt/zQFD6TFxhGnlE
	 /Yv14cd0109qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A22C5E7E0D2
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177065783365.31048.7978250846787919935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70efa547b8b450377bbb7ae3166fa3ef79d40947ecf9f7039913b607745763bb
Date: Mon, 09 Feb 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770657833
