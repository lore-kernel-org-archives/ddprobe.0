Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D50738396
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 09:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715332943; cv=none; b=SlJWCkMWDOqOt40D0xvRRxkjJbhYKRhI7Uoi1aIViLrXTXh7xgdwLEnsPli8zB0jEY1ELqTzU/VUGZBlH9+f7IWKK8ks3EAChDaHlPb20+Z1l+SV5/aUqeZWq9v505SVCMLvtozkBKZVNUYijjd7aYlS5XH6CEZ5YslY4afArnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715332943; c=relaxed/simple;
	bh=6nI7CphcExxBpxJmoyLpH91CQzT1IPwpp3tNEuhUDOU=;
	h=To:Subject:From:Message-Id:Date; b=IjX6AzatyP7fgv29NcRagLyb21dR/hFbfw6QTIroaUeMrbNXw4fYrCJAu35KsAtser8g+vK5wuctQD509qSETQr/54a3K1B8r4hlY9/yJu5LFwokeIHccMZH7EJFy8Mo6Zr1cuWGYJ8QdrbPhuIOQwJ5WOpEAlS6YjVXzz4zabQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EP2V3kll; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EP2V3kll"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D641CC113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 09:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715332942;
	bh=6nI7CphcExxBpxJmoyLpH91CQzT1IPwpp3tNEuhUDOU=;
	h=To:Subject:From:Date:From;
	b=EP2V3kllRIFJWw0Tn7IJchSaIfeti5uOeo+eeziO3pzNGx0ruXrNUrI/85/qJEXt5
	 NSr6REyNDUld1FDs2Rr+m7YA7fCxll9oFjXJwug75fiMJTrUIdG8v2IT64EXomAx0i
	 c3Jbks00x9UEkDzLsM4JTT2Kz3CkhIgcel6eLZ/ZPlV8hVaxAWkf/b65GSzDKza43u
	 Ce2J8tCAxOoHVBgORGALDw/8T9++9GlyixIhZ2V4UDlTJpjVq2TPFQdtIwgIOYOHVT
	 8Zpe7hO8BPELsMjg18g0DoXGwDUn0ifR8d9e2ePAC8Hr+ZhuIEFAcchcJKzzXhrjv1
	 wvjyhTFDFn95A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C31F4C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 09:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171533294278.7150.13863551943633913424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9104106de0f8573e64d29d891aff26075ea49475edd7c6c8a519dbd51e4ed538
Date: Fri, 10 May 2024 09:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715332942
