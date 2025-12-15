Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141B318C2C
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 01:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765762374; cv=none; b=Oi1pz1tRhcpxztZs9CMd/UT5DUXjDmTIBotMs356v/WA13RMndsaiWdJOMRlwozc0l5T3/mPBizS8N5EbAbaqbZfnyeTb7DLvP4fD+o8xxA3WXgiNzS2M1cnB2nM6x7y0XqW9fgh+hWeDUsd8TjltiExcErQZf/UOQqL3wPVe/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765762374; c=relaxed/simple;
	bh=+yPV5YpyE6atQjU1CpYKLePluBwFut35+F/9cK7PqtY=;
	h=To:Subject:From:Message-Id:Date; b=PR3CFsOl1YCnvOlAWbJE9bwg94+pW6hdMKxJUyQ9Kqy4+K2DkbmNOsQNC9+CDSErwW5LTQfhBr+AMRdAZU3ZHAVj9Sq/gt8H3eWViZLhYk1dypOpJEhezwOalfsV0TZAWM2E6+wWNfZAz3dC4997Db32z5uinEzbQaKjYhiMRmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VdYO88UC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VdYO88UC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63C7C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 01:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765762373;
	bh=+yPV5YpyE6atQjU1CpYKLePluBwFut35+F/9cK7PqtY=;
	h=To:Subject:From:Date:From;
	b=VdYO88UC/A4ODO/AD2AQWqvMZ5gnPlUDjzpCqMPjfAd3nK92ZDJ68Ol2+WV+9x1Oh
	 WHLf2Th3ZFughou6jymNYf+YbNq0Ry3C66pzhv9UqBPu5CMpQot+sy1KUSmlJ7sDuQ
	 44bPdTRtBtc8UxGP6QO2qy0zILVdixwvdM2yyq+GH0Kuq/O8qCGdFJlz77u83UYddG
	 IOHrLmuhVGVxHpEPgkJgw+zN66AKrQNevua2o5SQiGg9Tkvh2SArqXOUVKYeI65K0H
	 tGGaxtK0bccNlScaca/VAv14YV+vVkFEEKYj0qongPWll+Pdbwj7mu+mIb6aPN31HY
	 yN3pjr+AfCBwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971C5D59D99
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 01:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176576237358.3232.16062369273888567272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b65fcdc440a63efb4220338a13c4aeb531f8ca4107644f576c3a9bb19e0a8af
Date: Mon, 15 Dec 2025 01:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765762373
