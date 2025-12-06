Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E9C1662E7
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 17:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765041174; cv=none; b=s1UY7QDSujtfGzZlLaXHG7ykA17gaC72BwDiXO390Mu7/MDCYGz5Yi6dtAtpM5AYyQymNPpml3GLgH6aNhCBDVLVe/yiaYsMurX3oa4SSrDYtUMa/TNbXy1owzb0F0x7XkRxE82VwjeOUcqFZn788PGxhCIGx3Wqzroh+/BVO7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765041174; c=relaxed/simple;
	bh=nGve/+kqcxxUVIpzC+P8MKHYRtxjEG1ByfQ9/Pk6V5U=;
	h=To:Subject:From:Message-Id:Date; b=M9IpRj0juTxbMt8MJUlZvv08YN8B7cttEknim2jYyARxgBnNBtt4R9VBowNJdotcJV7FpkAFkR5/3E6QQ9ZZdCrHc0MJQ2kIfgVurOXdhj3ze5f6gg9qOV+lXjpkk9XhYqP8tORbve1V1taoRv1Kp8r9syK6Iuur78WyrPmc60U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ASH4Qg9d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ASH4Qg9d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40B2C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 17:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765041173;
	bh=nGve/+kqcxxUVIpzC+P8MKHYRtxjEG1ByfQ9/Pk6V5U=;
	h=To:Subject:From:Date:From;
	b=ASH4Qg9dvZxjaq+L1w3NhGJBjogxzUsYTiyTN7CMe7hFKqyPkIr5cXexXWG54ufkd
	 ktdFi8LklLV/UPYASsuLKcfWkYEOCGekZLyCZi5o69F5Q4AXh79cdGep/DKg60aajF
	 XgCpLX9J2H6sjIf2+uZIlq4xLRLhhqfMKYus6jZMxORP540a1EacU+SULRm7CxcA6S
	 FssIquwQcDesLxmdyhASInYhRcnOawuqZG3NNZBk0rAxp2Tv3wImscDPGRse3UOc2Z
	 wja1NGQZYpzs+t9DTa8MbkMszxi+nV/TDJBtoA7n9Y/e5KLzrUppiZH44kIQSzzam7
	 IopfKOAMAVTVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90928D3B7D1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 17:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176504117358.11212.5973723131475919864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57bf093a60de6ceb9fbcca2d8a6bbd87338dd0a1002f6fa6f7f1cd65055ce2f8
Date: Sat, 06 Dec 2025 17:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765041173
