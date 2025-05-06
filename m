Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3775861FCE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746540594; cv=none; b=fxWWuMmq3sqBqcPT7iRtCrFY3g47TgKQ41qoj0IQBkwkOaIwP7FMUcpWFTE9UOnIwvVTE5QE/oQHfFWWjpwfxwuZErgqSwAJisuxPcYjTsBwF151vIarzMFnaHIxYNob6mXvnHr04OC8JkIEJ24+67mEKiAUBdZDJ0O6uWDKUL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746540594; c=relaxed/simple;
	bh=0sesoNwaljT5Xm6qqoPfNKCmKdgi3bPO3Usg5bxshs8=;
	h=To:Subject:From:Message-Id:Date; b=aGd7WnEWR/uSYj63FPhIhSHHcYmzJu03ygsiZxx8HoPAW8WOupFoFkT8LVj10g/Z7m0WD6GGuLezkeDwh+RxKSUr4Yx3nJI9dtSPkYRxf7OqyO9o9Om8YTsGVZtYcaST9MSZfDMJAhUTpY/TFK7oVuVZ4AqanbGnj/CBtu7F/lM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K06/zIOy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K06/zIOy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE23C4CEEF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746540593;
	bh=0sesoNwaljT5Xm6qqoPfNKCmKdgi3bPO3Usg5bxshs8=;
	h=To:Subject:From:Date:From;
	b=K06/zIOyrpkaJe6KwClYaWC4d1GIM84Q9NFkiNT1V42tIxIQ1Nb4raoTzZgEjpd+m
	 6ztwX8aipGF0A0sr9wQl7vR5Ee9gK81NB3N7dUoxHvnCX7f1U0pwaM5Ki83RuE4TG8
	 1g9AqcJO7NCOwDQlEYFysbYWMAMNda/2EhbndDPh2o2+XXPM5VTa1UlEXVxegI0Ywi
	 zMcc/d+26VClBjygphrhIYRKDDhN9hk2eEkeLqAolCg6Mlx8BbDugy4KZFNxZtl3qK
	 0r3nPzv3cQB93z+QXhXbi/Rxgy5YsuBLGs1uFZsYSXovtxImWoWpdJV6h5IKJuRW8O
	 Y2Q97hl9haM+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF7FC3ABBF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174654059358.2287.14083385553803759137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dd1be7fc1b2eea3394cfec5b9bea1e6fd893096d61da1dabc14146bde465cdf
Date: Tue, 06 May 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746540593
