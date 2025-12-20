Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255502E7F27
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766209434; cv=none; b=pAbT5x/nVH1wRjps2PFen+WGyIeKpz7Rj5ukCvK7yHL6v2tbEVAea+bII4UNLYtocKRa8/SHGI98eRqUxFGKRsaNDZ6MC4ElR6tn4KcdGxkbYr/f6BTDMLo2GdRD/6peaohYwGI5qo2z0AskGtswx+uTWR9J1IT253WlCE1z6n4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766209434; c=relaxed/simple;
	bh=CNQSU0Oszzd04z8VSRl9wgqLVhiYwe8gudm7msM16zU=;
	h=To:Subject:From:Message-Id:Date; b=CbfIxQLZu2ZEeJOH+IKrhmlZZwfN1cdCW4fwin7HFBOuxiC/fD3AFs9IX9H0LLZAdii9y05UrAVBnqSo3X8Yj/MjPof1p3cbYLdiuLnZdsSObgEN4OR7PQYsjNhb3uZ4RyBPNT2TEyXIBqVTzZfn7I69PbNshNIHpBtqHzh1ocU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ObddzfRC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ObddzfRC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B57C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766209433;
	bh=CNQSU0Oszzd04z8VSRl9wgqLVhiYwe8gudm7msM16zU=;
	h=To:Subject:From:Date:From;
	b=ObddzfRCVNLzSoqwAGkKBKvG4uF3RqVh9oJOs3LhHksy/7/GKsbpbBdehEI+uvy74
	 +kC+qeye7YAhintw2xwOGijepwS+znGYlsusoc9ykSo7TGq0KAFg8X0TEQqGzpLjlX
	 Zav1kZRnTPf50HNv+N649o/63Vi2SgJ0TujqKSve4EVXlOBXd2lBQNf9jErQ7y1JKJ
	 MNcSRNog/hsaamEvAU2JNFyXSsoxhIYhFHd4pG5BqvBmHTk3INxXEU4UsR8ckA7bn1
	 e+RyG7Ng0/JytUYfT5CoJIYLiTHcrspzIFnn381bR8i8Y6l7zdH5vyOzPbdY0+5n3X
	 j/+03NdumqfBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A7DE668AF
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176620943358.25990.7775564390352747429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88d8ef096fac2d8474d42af37880803d05b948d3a21038c19ed3efdda732d154
Date: Sat, 20 Dec 2025 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766209433
