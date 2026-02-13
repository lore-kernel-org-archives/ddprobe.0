Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B79F356A08
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770992694; cv=none; b=iNNE3q1Kt7peNvv8Ynp6CTjoncACQi3B96/TTLUFEwtKHjkqHDlJWyTWwA7UMJdfZgSUPRFWltWHxqMeH1RQ4KP9m2hjJUWDiK9TohqoCKB15zHF7K0020FynE3U2NZ9geI2OdrbDhBtRiBVE+pv5J2gFM0UeWrGwCpzJXXV5vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770992694; c=relaxed/simple;
	bh=nCQpD3vfStToKoPOfANU84DdF78/ryM9snymrntYVgM=;
	h=To:Subject:From:Message-Id:Date; b=ZvaLKEnrkfToGwEA9ZO9/jgThkMdoM95U4QSo8SLfmo53jX+/IcT12W+iwhEBIENzIhfVpNQum02psP+SnxLiRiy8B+ef0dlN35cmfLM70ciTG6Mheh361+8xCV1sZ6G0NLdTR6ABY3Y15xqWTq04gsRr0ALCnXpShi4GgKjfO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NVaxx3rs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NVaxx3rs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6EEC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770992693;
	bh=nCQpD3vfStToKoPOfANU84DdF78/ryM9snymrntYVgM=;
	h=To:Subject:From:Date:From;
	b=NVaxx3rsyNsihmQJwMRs7AaKxotc8IvqMz5gp3xlFB+JBFV3o39TigvNviyX9ADnZ
	 6FErzdJuCNffaxm4lpEMZQWnwIOo1lA89AJp/PJbN9vow+FEaERPrjp2Qf87RM1d3t
	 CmFhyL8DhryAqn9dPC/oKgD3KfF5HGqyfLDzQ1e8dK8VsMLApFKAGyiZjAQdxryfy9
	 nLnrdTARYzHf4OBZyFlmh0Enn8JseYQvlt/tJneg7KcTUWONW8TDGBmgyv7wlOI9zQ
	 JoJWTz3GY+NT8k2hsGPitx/zndUuBnC9KoCx0K8Ef//NnIKgtvdVIyM/R6v0FW8rzK
	 k/kNY8r9BQR/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D39CEDF166
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177099269359.986.2583529984165693664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1202b7de1bf4a24334b5d3d45a8d322aa38841c16ff086d32b8e05047fbd2e4
Date: Fri, 13 Feb 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770992693
