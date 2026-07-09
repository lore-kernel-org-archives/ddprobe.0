Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D68618B0F
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 01:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783560514; cv=none; b=J8zX+B1xn9kKiloRF7FLFgQb5cFYbyurshwj8fQmdziHjcP9/erdERGjGMHxi0TyRdjjaDlKCcfxyTPalPuSAoXpn/KiZbO/BNE0lSRKSh4KbqSUJYBhbY4hQqHSB3O5QcF15Itl3t8cXleaTKreF1qKp5/1xUzr6GfL395YT4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783560514; c=relaxed/simple;
	bh=sPioR+IdfqJLAf/cweCyEgkdSQs9QRLpEzjRzdaCYOI=;
	h=To:Subject:From:Message-Id:Date; b=F8nRqJJY3YaoL6TOI5yITF3jII/1nxXZDckWU1y60iXwT9Q8VAyapGi3fh7c1vA6pYxsKJf/rCdAD5LJL+9TClAtxiNuVQqPigSb1QhQG+6UJm6noATD2FOwHacVNZcRYAc+iyoqdHylCQO6oBiBBC7hi9snH49KDv8U8tYGgEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tcgTztBt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tcgTztBt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF98BC2BCB3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 01:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783560513;
	bh=sPioR+IdfqJLAf/cweCyEgkdSQs9QRLpEzjRzdaCYOI=;
	h=To:Subject:From:Date:From;
	b=tcgTztBtRlPy/C6ZimSgMrdrrso1AnnHQwnOxwcT7zniFQx/K1awSMtf4u3/lSxkJ
	 ujC4WZ6GOR/lixLIt0mF73VQ1m/+SUJ4iRDgg1pGBtv/jtBtk8nOuQLEuSg0ZRt8oG
	 ttaLTLFcE8/jT8upMZCPXUzA7f8mBEe6d0gTHIofvtfXzks/wHF2J3XBu5YUj/PLdj
	 ejBZsmMuPGGnSA84E6GW4zzzwyzdsxqp4oN75/cfkzcPQ5nWNOTwIaey4aewwu2I/P
	 Mh+vjAc6ZHonW34/1io+POQ0pIkFZKBApL0VKbT5Qf+yKLE+TCUtNb/nC2JCoS2SB+
	 aBsvVXD2yzbhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A80B3C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 01:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178356051368.17416.12180985089797873101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 993ac3332a2aebc99d15b41b405d2d70ba2b749ac15efc8a47d01e6aa025f867
Date: Thu, 09 Jul 2026 01:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783560513
