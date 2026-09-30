Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 505D31FBC8E
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790737234; cv=none; b=sf4b9zygmFx/SYbhVpX6m63+5LU0WcOSw7R8VqMBCaN5FjCTQggqeJfXHkhIo9nRmB66jRjflcME89ZqFLqdvd6a+wn9HpikQx3maxwUf3udhY/iPZxsGk8L3jfZ5CTGFqnxZjOwn6po8O4UrVNzaSn6bZlYjEYCigdaiLMS10s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790737234; c=relaxed/simple;
	bh=CxLfldHj4CCTpHlm3pygyKdYJfmTW/b6cTVrlLyjpA8=;
	h=To:Subject:From:Message-Id:Date; b=QMDmr7zy/TW741D5o7WrFXy202/cTy086Y5QuJGuRR0aliaVxiX6R+Chm8Mdg8DP/wvRPWGRf5WN7P93piSSzRapWl1Tr5Lt6JxB7qUH10RjgLN8hr8ekzBy7qSsqb/1ASVY2dwrjE5Idsu9yNHiQWexiucEOdq8tCXqhxg3xe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fz/tjhSV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fz/tjhSV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA031C2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790737233;
	bh=CxLfldHj4CCTpHlm3pygyKdYJfmTW/b6cTVrlLyjpA8=;
	h=To:Subject:From:Date:From;
	b=fz/tjhSVqdKAFYuXZNGbWSSExc8cXQEsQlZzHVo4YPImCAH8ZV+97kZpYhaBapyy/
	 OuNitMo7gEFtdq7K4DQRkZXtyYOg0F6wxmpAmXIikZuJom3kdYcFaiiBhs43BmwpAe
	 oKa1SrupqZyESDTRxHM59DyRn9JKWberKky6/ZY0OwLsUUpFAT67Comsgs3ydhYvYn
	 oR8VcIKyx/ax+2Q57fD1VJtsU4L+8Bkj4O2NQINJ65AvIA2M/ppMyXjMNS6c4x5WQP
	 pZO1o6f3J+BL4wRJ37TYWXC8L2dJFlaXGgAvygXca/645tjrBPfZPFFkVZCnvVxJQQ
	 fYjBQAb8FURSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D32CA5FA5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179073723370.16424.456676218142364793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c45ac7e20a22e731764870ee94e36edb25ab20aa84a707bd6e3b84201f72535
Date: Wed, 30 Sep 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790737233
