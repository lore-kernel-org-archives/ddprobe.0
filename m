Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D6123ABB0
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757652594; cv=none; b=ruLBCba3wADlEBgcmrJ1h6ktmdjwI+iZUwzJJTBCp81HjchhXOyYbAPf4GjJGL5fRa4dJElWccH04GdULh8lUodOvrgVQl43RSvvyZtb3Vv3eoK0OvSNVn817Kw0leDFK/9CFmW3+5sVaSUDkRSMezmb3NHYNQvORVHnNvJyMf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757652594; c=relaxed/simple;
	bh=k5cmqzQs4qzlR9puBVGuV7R1UqW4hNyAHcSOYYXdNPY=;
	h=To:Subject:From:Message-Id:Date; b=ogn3XfRkQo3UVI89zaIfivDnOVUhhkO54bsgVH+6BLBW0LzMTf0091OhQGublITsTNRDvKi/QlYKuWEmyTcKubSqsc4fiXoTnjcUsmeBBkNknp18WsbqD1Xg2GQ0KnCjw+fkY1r23aPXqK7wdrFfuhuiGfeBvcw5gS4wF+HfnVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tlLqnuEv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tlLqnuEv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A001EC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757652593;
	bh=k5cmqzQs4qzlR9puBVGuV7R1UqW4hNyAHcSOYYXdNPY=;
	h=To:Subject:From:Date:From;
	b=tlLqnuEvdw1m20qKV3oQVbAlAfJ6LGBMLr76K7wRqxM/1G5maH/r9vzmReKYfQrUw
	 Y0f8J6bkt+oOMW2xzLokXjXi+oGE9zyE80a3damVCW2Yq4cmUqp4w/A0N75MlQtsxp
	 XA6399wjUJNOb84iOwesoIKOeLK5mvwvpfzKacymADDJ1VBO5tvwv6bzr72wwyPK77
	 CFbUHhmROt8JKJnr2+E3A6Ci9znTnr366Z9QzCk5XYiVtl05EMU0Ydr2ZmOnIlUvjq
	 cjggH+Hoqw1uLJ6jxQxbLHjnMdLJNMmIlGYZbnIdgkf+N4VeHX1xnF1K3BQZ6pANS/
	 tRJH+bKuNWSVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECA6CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175765259357.4095.4652646280338388314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 188fab51a4c68ce5dbeba8281763adac4b0458206b208c95e661b5fccded1fde
Date: Fri, 12 Sep 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757652593
