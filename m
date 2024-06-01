Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 793157E766
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 11:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717240463; cv=none; b=AOFaesM3Ok9tV2ES+RQ4HFvk0eCkfGPvRJyYA9v1qWakQxfI4LyayCh48Z+39nX5Wpjh34z1QXmCvt8A06dILQxwRgYZs0nBsXeAI5asW6KrRJfKjPoxBFHP/k46wQM6TQ0hUogXed78RIQXPtzSR3LRYo5/4LutyrMBIzBZfuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717240463; c=relaxed/simple;
	bh=sAqxxN0JCobNcZGIIfL7hhpaqrs1hXFIBwCZciUJNPM=;
	h=To:Subject:From:Message-Id:Date; b=Yiy0pjzg/W5Ong9gj/Zghez7nGv8U0a1R+MG68LdIRuz7LV6dOaKes4SQLgrzz3khW6vhanyyfQnsj1IKCpGqAVpxHM0c1GIaStORcxmoIXwA5VeJ4PPzV0BqhlDmqv2d1QhtVLYyPEQUfEmbQnCyWbGQVx0T068BIgwD/bIlSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BNH1yyes; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BNH1yyes"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1436C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 11:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717240463;
	bh=sAqxxN0JCobNcZGIIfL7hhpaqrs1hXFIBwCZciUJNPM=;
	h=To:Subject:From:Date:From;
	b=BNH1yyesKn6s7p4BYJJZHQRiWkpsY+S5r3rnY8lxcG0Pe/7fGyQdxx/5/qmAaEsbE
	 OqgC4fnYDMqpJqcRM7W0nx1myvsvRl8SjqJGunBERtIpWkqG95poQV4IJXeIZJg94w
	 51SV64heIQ2BNd/80sC8IiKjg3RlHkaoXD9pkypQONkulzlYmpZ2KbaSsaR2oYq2v/
	 uNWPpoRJhknV5NKxYyKl/2oR4UrLqxe40ZxCC9ad6GyelaoTNE+I0RF6JIPCPNhXp8
	 tSp0eqM9bs5pnHrNXquj34/0FV4p7y/sT/1dmXwxu9HyuqD1wp5yF4L+TAyBrUfaIw
	 TGxXr9lLF0vCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5490C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 11:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171724046283.29930.2775471859557107276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f02238bf7677450bfd9bd6a7c2bb2a44935667aef6399e1109aceceea66df0b
Date: Sat, 01 Jun 2024 11:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717240462
