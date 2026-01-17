Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE8C21990A7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768673033; cv=none; b=CjXKPNCobXwLARjdkb1pY8kmoUISmGfB2Ab33fVaPOOOLZL6FV4ihfSxv2zdEyCsU3ROy+A5t4vAscOJFQGBazo9SzB6kaglje2l3qFz91sGHyBrF8tibXDzJ/seon/7cPxKvw83rHOhaFGpqsXZ032fXZO3W4S+o6FQciPazsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768673033; c=relaxed/simple;
	bh=l6v43yw/vpQYW9sODARegOAs6U2QVc0kOwFXjIPyUKU=;
	h=To:Subject:From:Message-Id:Date; b=F+uL1lYGqj9Ke712ncsYrUWtryL4TXTPXZnrPjXIvbKSYQ3h5KM4QtZCsvhfBZNzjEaid1YxInMHQ5+3tmk9Rozsl/b2JmD0rZ3KwHZyAGW9Zg3BeGQYbtySigeeuX1ceJrawnX8qmyTTSGGmACuMAlX87pBcH6hC+bf+ggNs10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7VzT/8Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7VzT/8Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63C2C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768673033;
	bh=l6v43yw/vpQYW9sODARegOAs6U2QVc0kOwFXjIPyUKU=;
	h=To:Subject:From:Date:From;
	b=Q7VzT/8QUBfhjTnuZWAwBk99t9fGhsBpoam2LZ8ltF7zagvUNbcVZX8U0gfkkfbsO
	 qIRYDRKOoSfS2UMff3vrL064EYYKwDn0rkLhYOssCC+vxYBXwWfc1XcDTIbRal8FuE
	 RRStTCbGRj2vsqLxbnsztdkTN1ZotdXn8EwtMtNwk8td1Q5czD8FLA8jyBQte4BM1i
	 BfqM8+mOKgQ9IBmvLUB2MpOWTE2B7fHD9ZWj6gjc9PAL1wYXb6IcfYE8z035H/QJia
	 VH3kKX9uoCeFRH1/xQG7hbOmOGfZRRoLApLKvkS97tWNoxMv9aFfZ2HcTZaIr6VZyk
	 rtJBGvzVJoITg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9264CC9832F
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176867303357.16125.15554845866278667834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 327ccdb60c5c3f720b618fbb674862bbdbae634e34f66185a02c3da94396dcff
Date: Sat, 17 Jan 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768673033
