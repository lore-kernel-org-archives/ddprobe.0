Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C20F28727B
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770114834; cv=none; b=ZR0jlUcdDGuRCKWUNli221R4uRS9JWgqfrH96IgvxqTSMfYjYja5NWIuDkqn/nKen90GL1PviIz1VpbroodYGDAvbcl4va5DTYqNxxgEgUnR4aKCn/W2WGDCr95FEmeoalHGDEXPerGM7oUvOQz2awhXvrNcxe0nKnyUFbY5UqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770114834; c=relaxed/simple;
	bh=5VMN1n5+RXsxJBo/X3FKuWUsdfYauhfbFnxEmeUo+k4=;
	h=To:Subject:From:Message-Id:Date; b=BT4ENdZY0jbu8NnpFoRS97z/i96uFntxIHFmxMVIbsDqGUZIMXVTWGroSaRSwgJFIHreQHeqSNPuepwk63dDfHhtXV8QCqPFnmUysgn61mAajZ7juE7MXfY7/YTUuJYY7vL6uisSoc1sJNUoNvFCYH/04HAYdaN5lx2eECPf8EY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PEcIYiUC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PEcIYiUC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D9DC116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770114833;
	bh=5VMN1n5+RXsxJBo/X3FKuWUsdfYauhfbFnxEmeUo+k4=;
	h=To:Subject:From:Date:From;
	b=PEcIYiUCoKUqyp0h/VEqYJcXVyibXxQSRBEfoTr/vhdeDKH3U18KEy95lo33q7qS2
	 mNp+y4+dDJ8ocHXmiV69mfF7LbMKRFmHJRKCBQNE69Ib++xZExMiJz0WJVYPT/d36O
	 M7xj2h0EeGRpgjsqByyoDiqefGBUCI0MHaxOJb/28D30wSZj6wnSHi/1TtNPQ/8X1b
	 wyqS3EDoq7zyJQEO1ZO4EYocnwVC328HVq8dBcNYkueo/ge1wnkPUXCcqz8TUSIdeM
	 uA4hxZNBPxycgF3jQ/E2N4cuc82Of2ywYHOQuMHfS5WKhe6NKDHCFTZzlX7CJgfVFx
	 n7l+pmSfA2kUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92719E6E7EE
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177011483358.4277.5651335044721618654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 404b5a8cb03a2e55dd9485383a53bf66fcff2c6db8a3ed436089da170a40901a
Date: Tue, 03 Feb 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770114833
