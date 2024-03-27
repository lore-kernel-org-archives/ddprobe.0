Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E820A134AA
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711556897; cv=none; b=UmTYZfXannTDQwUt58BzROnqusxgqblfSd5q0/F7LIdj2xsal9Xcf5ozNtLPMdxjr1Au7tIEbpG5JFskHuHG/i46B/BkyexxwKJ/374+Ga9kvhzJik+v9VQ1TiXnfYh46ukvt7lWZomdMJ8JpCYXK2I5uE/Ri47LzPctWoBCi9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711556897; c=relaxed/simple;
	bh=RLQ4RVPJrDrvnZhC2GzUGWX236ELfDlyTa+p1XpZcCY=;
	h=To:Subject:From:Message-Id:Date; b=iMA8Ms+b/2An0IQfKIUqYVzjq3cSLmppnLDfYeegXP2rOS99abRMB7rWIJ4EtYmlok5e4cSoPRECL8pHwl/Zn6LRcJmUU7HVL/Jj+qIMkzaxrx2rTcKTuKE30IDKgFe/8/fsMOJJsoHRes4DaP8UDz8bWsMnGCCci6aYWC5OTHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQM/1aSX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQM/1aSX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D388C433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711556896;
	bh=RLQ4RVPJrDrvnZhC2GzUGWX236ELfDlyTa+p1XpZcCY=;
	h=To:Subject:From:Date:From;
	b=VQM/1aSXXUx/wf6L7d4Me40y+QFf1utVdnY4TfFx1FBtpQdVCeRbkQjBw6lXuGgwr
	 cQlxshzlCHdEJNmylV+2e4ZIa87UwN8u8oeX24FHR4D9M5SeOHds33RzdIUVGG4pMh
	 W7KLvqiIg7sZ/kC6zb6Ja/ff/tDG3ct+6gDLYLeIA8NEQEhGWB8zat5qzVfWQWQAoh
	 1Kd2ylW+0inWf1hWpbTHatPoCSE0PppDANiQwihwtXcs881e5a2tDC58NCTY377+5E
	 fB2JT4tfF9nLbqXxIbV+Dk+rrNd6lOqBFTzKmETEs13cJr/caajFm2M+hWKaHqcIwy
	 HvHElPdupOlpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A759C54E67
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171155689642.7610.16784941876864217706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24648c9c076b56a016e19a1b6bc66aa60d1b832fc8177e7b35e5a2d94d7452b3
Date: Wed, 27 Mar 2024 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711556896
