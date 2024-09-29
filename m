Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CD222092
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727577354; cv=none; b=ussq92BqqcZhxPmj2erkeNaefra+dXErL1Gyeuw2fNwuWvbFnPZvR7SNfrVIx/DLK6+MEi5+asXUmuRxJgIjJApQuHfGiNDuMDVIuuS8a0OPv6DmWX6saMd6hiIA2pltLa6Aqe7+3RyfW4+woOr4/FxYVTCOUzbFYxN4tGp6MXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727577354; c=relaxed/simple;
	bh=zeS/slyE6V83IvPWmHxOxx12FdBPR8IptXihZ9Kf2f4=;
	h=To:Subject:From:Message-Id:Date; b=fsNskLL48pXVrew8WEHwR8ndEB3naOCgd6Q0n28VNM9M4T9JxEUf+ehhzRqy6nAg5XfqufkCLMZHK+lbPbc90ErTOZvX4LV0is3Zx7hu5TYu8FIU36QpjE5iCAZXrm2TV08vw0mRfSysYDAFxh6zrLE3f0EKOQMhQmc3qyUZXXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=toA6uKQ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="toA6uKQ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA99FC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727577353;
	bh=zeS/slyE6V83IvPWmHxOxx12FdBPR8IptXihZ9Kf2f4=;
	h=To:Subject:From:Date:From;
	b=toA6uKQ8bXlvuagIjx35wnFEFWCJdZTOsa3BCnXEOG7796sj2Ige6McVnw9dnX+RA
	 5yc+rUu9VDc7Su2103JjX6jMFCalmjWum6dKMjHIvfNq+j7bbnqCtsDnlShz+2iSYe
	 dN4auqqpFLPR3MP+mV7BZuDNIgLo5AAwA9OSO7OkIWlhu5gPAF+n9bIDv4cmNRiYkD
	 lwQh1gLULA3WCllSe++SPlP/3NBHJT5/rsIE87XwjpEuqAYkOAsWqyKnG3eSsHczi6
	 MTlvo5AsvYbbuU0riwsGJ4ADvJ6uQ1koGgDoEQwTsvdX25+8Zs7MdgfsmqndxctdTe
	 xycdFapemd5Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DDECF6491
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172757735361.23072.9256930773938665830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e83ecdedceb807e765ea6cca07ab83de7b0a1afcdee5e91c74d6e433fb908c0
Date: Sun, 29 Sep 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727577353
