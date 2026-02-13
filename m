Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2A2E355023
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770979494; cv=none; b=bjDX2Fu9gzhRF5rWDH7fOUgYwL6Z4cOcAYxbHpreoqhwf88qaK2Kvz5txuI1nqUfY4L3hDmQpAr7txEgq2uEV6RiXeZj87lVnyKQBhli6W86FbHvdQkjcsAqnPRQremJYtKS9HkTFMglXamk9Z/W674tT8zC5B9EFWyGdq0e5Ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770979494; c=relaxed/simple;
	bh=bSu3vAeUNdogntRC+t5IjP8jwO6okuiYtunOFPiSzng=;
	h=To:Subject:From:Message-Id:Date; b=AYEENJSmrsWY4KZ20sB0e2otBItpqQ1TRfyWpgtKwCHdMzuWhc4IcjL7uIc+B+6GdCvuvJuBZgB59aZJ+TdtA8fSZFVbQNuceDDVcTaDaBJ52U1heCKXXKBOzPFjpiahycAu3geOHt96JQqPMZSL7Xx6sT32KqvuM773pQjP7zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YXnO58/9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YXnO58/9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B05CDC16AAE
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770979493;
	bh=bSu3vAeUNdogntRC+t5IjP8jwO6okuiYtunOFPiSzng=;
	h=To:Subject:From:Date:From;
	b=YXnO58/9ynmFR1MWZxIMQMpaLu6BuogDYFPXDL8Akem1hM8Y3pKAla+qWovj5Nrbz
	 UnCLWHOAQm/iNJjDTp0oiVNLXxAD/2m9UdLEpmimS8qjjk9siGNeeVNmQURWIUPFZK
	 kgV5YiGUg/o5rp7eho7W0G3czDYUrEykxRPI0UvAcuqnmWxvsDbTGBQBf7z4nOXp3x
	 qo2hLo66tdlUfx8/J+AyVHp1pkxgof77EfJ0szOtdwUlyxzFKbWywomCl429M7UrVI
	 u1bofrmdIfxjV1r/tlysQwz9G2ueUuufLVNlN0Tmpzm7ENzgH2kwys8IGehvrw6QwO
	 vYGMji2dsJfew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B354EDF148
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177097949362.2366.5631992642687023541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 261f68af5008a8d77d359c6008d2781034231dda98d0d68177139d98d4883377
Date: Fri, 13 Feb 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770979493
