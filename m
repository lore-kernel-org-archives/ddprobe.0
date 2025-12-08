Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9E37262B
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 05:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765172574; cv=none; b=m5T1chsWrOpXxqf0Oc265cmmxI8Ps6Plsru8SqqzG2LzFwxi+ZucM2/YnO0lcK0zQpbTJb6u2G3waR4UXY1upXpSfeJOQ18c1Wah9BU8dJbP6ESOSQmtBtwo0qlmA3qTP430GYSK/rsLY89TDwJLkBOD77Xubz/eo8KOHcBozRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765172574; c=relaxed/simple;
	bh=yVphTKqcSzu2M414YgKNScdJlOs+8N/wM/TGpX4FmOI=;
	h=To:Subject:From:Message-Id:Date; b=u8MsHNhGCaXS1A81eZCacV6xAFmIszL/1PPlefNS3PF27ySgM8HeI4lpTb/FpONKXOJYZlUBAUy4yOpBWS5/1XpiOIATiuyfz7Y/K6gqQxJtLFUEOqHwZC3fpXgeh57s5RNi7qERUUSzbrX3ggfsQT2VFdIOxnMF8iyQq8qQwcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=onkKf1z/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="onkKf1z/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE617C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 05:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765172573;
	bh=yVphTKqcSzu2M414YgKNScdJlOs+8N/wM/TGpX4FmOI=;
	h=To:Subject:From:Date:From;
	b=onkKf1z/tlKy9BX8w3p30Z0sHQY8k0X1bXkRUC3+mqGb9Zlr/UPZrJ5wPPGBnSYeG
	 DPk5DbPJCAkuuCw02evFLAFWUj7brhdOVEaXbik5fP5yPSgWkLp8/xh1q7PRIEmpPx
	 RvGZEqIDwfro0dkFCADlRBCUEgYEhmQyYeoXIOEZnNK+xUWE9Jl2yVv6ZK9BT3IDxX
	 QvnyvpDkOIjx7IKIwkjUZAhMV2S/bJ75GeNKtYI/iNjkNLsluOmf/8wkOOZw8kVtpc
	 RCLrp1abYDXiTvYv6HJ4dzkvN6rXvk4bLAvFTrCvrOVE1pqIUgoBjzcgegxNcVKjjy
	 W9sG2m2lraCZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A29ED3ABEF
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 05:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176517257359.9092.6158868246466240785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0107f22cabb4bd82943aa89c9ad75504be7cf145d75692763662b3c45b8c7833
Date: Mon, 08 Dec 2025 05:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765172573
