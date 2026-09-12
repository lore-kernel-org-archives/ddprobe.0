Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7746938F62F
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789242634; cv=none; b=O5QYbDiva7XTlqQdIf+3Rjw7koN4Lr7kRZI0nP/JGayewPDjb2R7chYEKnKsZbThg6DyK62oVbs0DlRKeiFKbm14E6Fk/LUXnwEoX5nNov12Ev6reTIgo/+xfvfTsPW3InDGRd29i0Z5jGW57xtDOmnbYPOIJr+CZsYm2IaRsJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789242634; c=relaxed/simple;
	bh=ZWY7XydfzET36txeBfRUXHu+PY99I+HXsI1sv9mohs8=;
	h=To:Subject:From:Message-Id:Date; b=cgqpUr/eo88hcN2TdDm7cXt5ifv7MqtGv9fdmnZYs039vNdbr20rt/KYvZJ3/MAJ2bwf7TwBdMKGGbNZz4sFW0FpVCEb0OsU09DbQoh4gXbIyJdw33NiewaEhuXASqU1Fnvn4Vbcva1REFOyXC1fQZY8BFaGlBIkKPVe2zkTorw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MShpMgnp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MShpMgnp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D22ABC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789242633;
	bh=ZWY7XydfzET36txeBfRUXHu+PY99I+HXsI1sv9mohs8=;
	h=To:Subject:From:Date:From;
	b=MShpMgnpgTVfSaEk4M8D5ilwRnJeRljI9fRKgBeWjh95BRJ6DiIGskdTtBFT9LDMZ
	 oyUUNqBb4PiUZd2BFRw1wJxbRCvWoVkKBGwBAh176ABoIlQbWQhPlL8g7Jm1dfBM0T
	 1qUImndZj1YhgKO/6sGmDOSKwOPmzqb/w9MXnAgWftXeT9lmjJN6ciGCcO1rpbWuen
	 P/cW97bmVzkSqgxCD13bOkLVcFn4E81o2aEmi+bArHqXNqXyrwI8zBOdJ7un77HYWG
	 R8BT25Vi8ZNOs80YrtCyj3FdW3PQIL4vcMV/yChnULfaf+riAOz2/RwFoLHDfXBoAT
	 JwS0+TFU5pwRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0579C88E53
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178924263368.9015.3226921085783658857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 144a4594af5bbaf3f90bf7ea98f56afa1a3f28e00e69a0932aac99ecba111959
Date: Sat, 12 Sep 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789242633
