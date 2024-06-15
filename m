Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8208EDDBE
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 04:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718426303; cv=none; b=D6WG0rQdSv92gsDzu0OKAbXjUxcyXTYEQo82+uxmW0b8V8YOF4jTa2c4QVWWrh0pIlJEZ+O1sUxJpBcYs/wSO0FJBvSJ1AJ3f++L4yyZL/3VMOrxnUQuYmKyzDTJd08VRDYEHu/x9LEzHcvvA+A/YHCPpg0YZvf0/mZcac2BCeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718426303; c=relaxed/simple;
	bh=e4kHoMg5Ig6qBsHGllhGHAVebrlCCmzraHarJFMnx3E=;
	h=To:Subject:From:Message-Id:Date; b=FLTGwPtYRhKyRu+L/oHFjQ2k56fixfQF9ztfLNCMCdhkEhRNVuwYqQ7FEGjJ6oj0oUvpap6XxXcTOD5w771IxOsnfzx2RdBShgoafuYsuxHZnaxcdAVShuW9J60+0IM4auYrQOx3Tx6LkWyBebqWNO2YCu7i/tHsxPASJtbdnZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XuDwFShK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XuDwFShK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F348AC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 04:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718426303;
	bh=e4kHoMg5Ig6qBsHGllhGHAVebrlCCmzraHarJFMnx3E=;
	h=To:Subject:From:Date:From;
	b=XuDwFShKMwHmVH90F77yJJ3gOX9dsvgxOV7dVjMGEshtc7g7ypsSK7rcPt1j4KXvy
	 5gko0SY4YIt9FL1o2dIkC+xTMY7ZCIpTT9GqkEVJ2HxKYYtF6pLTQwF785z/74cUy5
	 ThMNHkpJe2EJsI0uuq+BUAw7CSFXcZF7llNg/44yqwT12OK5qrc42rKynKdRjUaUT/
	 HnbjbQy9sZbItcUCiapR51r2I735H9s0P04eqAYX91noXu2iJ/8jnfvdiJ+e5+1UUz
	 x1//6fP0cOA+zjNiKyJAd4tjUOrv+tB7xqd55n5fBerZoL2lCxmVLzCGQ6kWeR/PdL
	 Tn3k1O19A4YOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB32AC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 04:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171842630282.20423.12608395198306486256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90a63800eb0bf849f16a3bc3162788c67628378093b7be4e99a384f04f985e77
Date: Sat, 15 Jun 2024 04:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718426302
