Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF2827816C
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773033294; cv=none; b=mwdftG0rbJkrLHs6Z1kqzRjpUIoyWuv8uERUIK7gL2o6yiPytqqBI3cdljCEu6pi1JQ5J7RWDKNJUxlJvWyUYPQp3Hz6ZiNVVogkbMjSxsILy4AibYGPIjDSGY/Qi7yfI5DJA5ATBhdhXirKF6wvlqht50pLigOqJ9Sdmci42I4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773033294; c=relaxed/simple;
	bh=lpGaQ52SYOuFrl4n+ur8conv/CJK3GsggvBizqZgMeg=;
	h=To:Subject:From:Message-Id:Date; b=cGVOcF7cgvmyLn8kE1WmVOf7GdgGOCAuFa4l18RicTQScUm0F8TH7pGE+JgpVsTqzVZzsnbklhv5UCJY9wXh8ocaVLuamlWPKwL4rJKuKCQJnGSnfZSq/ltzktAPjJrf241cqmtLQNqJlnB3UJrTNe4ig3I7TZ/x2S9RmAIdmQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j9UXNW0d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j9UXNW0d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA890C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773033293;
	bh=lpGaQ52SYOuFrl4n+ur8conv/CJK3GsggvBizqZgMeg=;
	h=To:Subject:From:Date:From;
	b=j9UXNW0dOqDC95b1ihA1c0DXAMxrtoPjLkb2GK9UvXwjT3faIgN0xVLdqE4niqjkr
	 8Mxajpi5AhWaHqFM7U8K0w0QmSbEKOpeHq8iX97gHj0enfcjx1vnVfbB9kJEdRVmxA
	 mF7uqjyf6IUBaD1CCGvDY3PzITezAS6iYF1OigJVFHOABFNQjeqk8t6bk6rIwrVx/9
	 /XQK8ghIdJBj1xTet9KRHxT5H00CEEHrrIvbzKQx1fTeFoIjPvgwuUVqcRG3iH29BF
	 rvt4NL+fRkD+Fo7SqQQIS2uvOg5HXF60N2bqIDFOTFzxa+SjQzNgmmiyavV+SdTVzp
	 2wrwgHCE4uCkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982F4EA8556
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177303329358.31650.7031730797493204137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea151755b15cefb7aa0abb66f4ec290a4ac2a6565091b3d2470dbcf307296b1d
Date: Mon, 09 Mar 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773033293
