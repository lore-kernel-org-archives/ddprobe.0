Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAD21531E3
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749693594; cv=none; b=iO5ZJB3daMh0GCG0Z1lFB34iTQj0PjGMPgqoIiOAq6E/1NYuNOENdnP5kZEnccd9XcFTaEGd3jq7YZMee9IRBXHmQtAGFgnbKcOeLqnT4u1da0i00RT/mCWrg8ChyLRVlOEo10ojoATeqPApNGAdvCoq1UydWxHwXzI224p2Ge4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749693594; c=relaxed/simple;
	bh=11f5m0kc3VAlKSuchoEH9k6sQ1tbWGOzzbOsZpjPuUw=;
	h=To:Subject:From:Message-Id:Date; b=RbyeDy8cYNHTItb3raPzwBlZPrAFmWx84t5Fce1rMNYBynlWfo7gVzhQ3ySllXWymMj9AHqYBO+48epJYIEtYE+aLOe7cGBqyPVHNk9vkMtXa+42BJJImzZtHkcR3Q4h3+5oxSuJ0BUsLJm71WAqcNdAZoqTcgVbIClyVEqXkhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dUQlGqPs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dUQlGqPs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7205C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749693593;
	bh=11f5m0kc3VAlKSuchoEH9k6sQ1tbWGOzzbOsZpjPuUw=;
	h=To:Subject:From:Date:From;
	b=dUQlGqPsd75HadK3MzSOXvtQgUwfTgZBg5vJOAcE+JOttj8bvkotO0SZGzDhrZhNp
	 KEmXh7QptvxalvlYt/BDuVq1KnjWER+D/B8MMG2aA3OV/amBpap4c5VKv+3zO+QZON
	 1KZOgVgP6Rt/1k/e8SiApkjM3WMejNjIkAOdBf2/bEzTUjuYJXA0CgXQyBdPeepENA
	 aEY2zUKGiNlajn5hdgH+2+VrKGoIpytyXuXEgBS9zbqtjGTRvBou/aDN/x2ityOs8j
	 pdtsa/H6yhPowC5VIY3Nh/7+gzk4hXcqh1fPBvzXTQ4IaoMYX1bl0UxGEjTG/wVYOx
	 wcbb5kntNN1Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974F8C71135
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174969359358.32462.12853929399046584814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1a818446bdbb712240a4635c5ce726216c5c12ce315c81d6473ceca28f9ef51
Date: Thu, 12 Jun 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749693593
