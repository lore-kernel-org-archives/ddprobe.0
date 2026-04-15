Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DFC93EAC7F
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 17:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776274054; cv=none; b=riwKQY8F6lIOo4CGDUsOFIDdwcutWSL9emhE0OkURt0KMfi6k2LH9wrUG86bXRKicp0XakqCCqgroaqyvNzqKKhsXmKKedPeY3+QYfz/v2D+ZBLOfqUGtCYs6iN2ju3521NOwatNopWDg2+yxUHKte5f4CnQmxZtj1f+QVxiFYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776274054; c=relaxed/simple;
	bh=0ORxGgZMorpTNItgQP7qkYkD+ORxhNe2whcIrA9sXZM=;
	h=To:Subject:From:Message-Id:Date; b=G3QKjV4GOuNI11kzuG3k3mGj25ATUPtT22oqda/HHa1j+G3ZxAd8WqHJVW58qDqe9X72V6iFElMKunmv29XGjRX9OlMdWcxz5hxbsP8a3MmUa6hVSQKkPpKdLJ1U2k6iayUKXrL6mJrHmd8+wcOO2fo1BS0pl+HOdJd1DodpVmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dep5cMdZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dep5cMdZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8669C2BCB5
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 17:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776274053;
	bh=0ORxGgZMorpTNItgQP7qkYkD+ORxhNe2whcIrA9sXZM=;
	h=To:Subject:From:Date:From;
	b=dep5cMdZVLmZt7+zpy5ea2wqhuE7GG4VVh+2IBuvSq5TWeYFG8CFVzNo9uCYFqc+Q
	 f6d2E3DOXtSakt/KyeiMswO6o8ia25zFkAQX/EuZDMrPDZ7dXi/GQVl/A+huI6MDoV
	 IidUOHITZTpyNaAuTmxlHXHpKZYT7sEKxLxDKJwu5rlhKFFKLD2YOzOvhh21wlluB6
	 K5vIfu9lR/5VpeTHTI/onIrT6feGsLNEf9aokOX10GQXqUlUSuIzBC8WPtArFbWGBR
	 OojYgpw6EAGLZP0GZnAVUbMwo4Ssl1oT+iDO/uHgjjYtl8MtDPKxzXctiduQiYprdu
	 NcEH18vB+BHjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA852F4385F
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 17:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177627405368.18979.11344365633815066720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc4cb09df1825fd3f4b3f699bb06b4bf751d4dd5a3daf1fc1801432c1c33e23a
Date: Wed, 15 Apr 2026 17:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776274053
