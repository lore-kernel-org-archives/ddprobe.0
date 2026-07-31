Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DEFC377AA7
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785535834; cv=none; b=VXH1XoEMBIUv3Zu6DBBwtulbEm0IymsEXlUt7Rw7mBKeU4bVsBxcyyI21xqBH2ILyRD7ipjCXbdI33q0QjRdT0i9mFBRw6j5nX3gaAAYtOk0Do4IJwtJcT2/ASFZyCq8M2iOWahp/yhaJi+BxLMHMBmySdKYmsgdo3lFGzM3sSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785535834; c=relaxed/simple;
	bh=p1MVgu25jUSmdZzIBUBeOvsgSFLv8KTUSlZCV1fbESk=;
	h=To:Subject:From:Message-Id:Date; b=dX7BxhBkps9UOFPjUsuJckKbt2U5TRAbThl5Kq6lVe4sAKon9N6eHOTF9u9Uzb2PM30p46iH2nK3WzE6RlaYEgPH8mn9yJdwgIBoBdUf7XmB8k73AW3oczVy+rhlTJc8H2SlHltXwlvbmyp+jTfNzpu/rWgzW3mP8uwqJI88O8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gEHxWVys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gEHxWVys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE187C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785535833;
	bh=p1MVgu25jUSmdZzIBUBeOvsgSFLv8KTUSlZCV1fbESk=;
	h=To:Subject:From:Date:From;
	b=gEHxWVysJrtAk1JAVXZk/HJuictceqJy8CelOxgvFMNLPUwcMtwwk4F/medT10t1k
	 ofXiumrXt0gBiOoBcUBFjAnRa/px3hcOG3KGZxcEQzV4dMYgxSYmmF7mcV9iXfFH7y
	 41/FeG4k9+aHPztuu/HQBkufTn2d1QqkeGv6lSEZwwdRMhHIJCEKCOWSwRNSiCMgeI
	 6XffhAADGWX+k3SFVDWkL/VLDZFFHtwLZaqJo/K3vOQxu74uLNxXsRtXO3CH1uV6W2
	 YOn9KAv/ObeF6Y7UNVYVQT1V7gAH09nNEYP6COuyXeHMFydFYX0bYgk9/yGkLY1hfI
	 U8HoL+hHUHorg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE588C55173
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178553583368.18946.470439727960239911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a08777600ae86f2dd825f206bc25bb87ff2b5f9dee86c32451457929ae1c7e62
Date: Fri, 31 Jul 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785535833
