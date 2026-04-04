Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4F4311963
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 12:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775304934; cv=none; b=HTmlI9Bk+dtVDGGnwXHz93DvUsg0o0FCRZOLzJT5vaLY5ZMM3bX06mAiFuzDV3nGgCv8SQlXCUzrBygw9qzWfmSOtLVs2YBEhN+9XWmylyhjiwHWi+LP+saDgvIjXx4IbWywBgTSqjHiXm/vw/jndVJmafil3gtKySrAQp2x7wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775304934; c=relaxed/simple;
	bh=jdh7hB4ZS0Z2ZVNm4wsUUFdH4Z6gq+4aeQgVCJMrWdo=;
	h=To:Subject:From:Message-Id:Date; b=oxg+Jrhax5pBwiGA6WF7MXnoi+ectxVOg5GCe2YDz1Lphr31AnzjXRxnHPbfO+ZpmwV8szBeay4E9urMSKl74xPuejDkARE0BhoBCGQYCYPHCY9YjDbE+DHdwlfZ8HPMEgG1PUR9URkliMVjw2uzQz7rgutgOvt8KEm9kSLrBc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F45MqPiJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F45MqPiJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC5C0C19423
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 12:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775304933;
	bh=jdh7hB4ZS0Z2ZVNm4wsUUFdH4Z6gq+4aeQgVCJMrWdo=;
	h=To:Subject:From:Date:From;
	b=F45MqPiJGjMircatFF0htd3b7Ug7hJxaYsmzsIaz5XsU175DA+sFnMQTo0XciqXs4
	 Ci2MOUvLJR6XhRmLei1O5x//Z2sRbbL/n77VDU1KngfstjCG5+dqu8u0lE8kRRbYCj
	 6wiWVY84IjKzRAlxcHOqEFmaVFGZ2SRvzrk/HEu1de8L4S4/9Sc/uu5tXujJza/KKn
	 z854tjqNCG0mcdSCp2r7Zq3m5NGZN1rgNj/6W+m+T44QJS0nKlXowIKWPBUnz/NbFw
	 dUYrMIReTlI+IgXO0I4og8AKj+emNY0NnGGNUcJvZk1BHHz7UsCo77xtr5CdeKoihL
	 lvSGcD3V5VHQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA51E88D8B
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 12:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177530493370.21027.3630934230969043408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7140ad613431f915c2187a3e6b3f947b84f04fff28717664b6a532e63d80fd7f
Date: Sat, 04 Apr 2026 12:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775304933
