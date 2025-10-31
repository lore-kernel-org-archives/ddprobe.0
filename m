Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFA511CA9
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761915594; cv=none; b=oPRCeE34UHNX/oO+Z+J32agT0qLoGZneyuqYkLKdA/fdVdcLnGMZ/gm9IDoBpM6JOlJN4rPd9zw/vyJ2ldGYByaenQ5bDrZsKk+9Ixv3DKJizHji1nhOd0R2Gep+Hi8e3BKEfLu4q29p/B9fDaOrxoBBpx+NAsTs8tZaDZnv9mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761915594; c=relaxed/simple;
	bh=E9lDJVsK4dXuQ+41CgpenUi/Xcqi8uAocAriup5OEY8=;
	h=To:Subject:From:Message-Id:Date; b=JFrsmq8WHxGrByIlGEKXurSUv6+mD5btHfRCWTr6QW5hfzkKW5YtaeWJ0b1crex+4x12jOnKmBTgubUbrNQiLCFe9nehNIeMvFDR35QDSZNLkR5u5VkKSE9DoHu13UkJCsUcviE7X2M+4XZFpD69XA54q45ES/UOJdJou1VdRhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BdK06WWo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BdK06WWo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DB2C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761915593;
	bh=E9lDJVsK4dXuQ+41CgpenUi/Xcqi8uAocAriup5OEY8=;
	h=To:Subject:From:Date:From;
	b=BdK06WWoaL8EQLCHFJdpdjGpZpPuLT+Y9R0AZk/e4xfk/O3glsX6lbYtnj4yVOXhk
	 GKPOkKTrn6KLyud57tgQarHzihRlxWww94n2OirwqvhlOnAaE7iYne3Uf3HMqdqgrr
	 PBVBmq3/Lwz9wlpTmWxgAdi9PFbAhDoeLrHywtMNOoJVCrGlhxrcezjDqJvLsgZQ9e
	 s1OUDvYpnqMdeF9LH8s9N8tJcVBHr09xmpM3Ka3/oFzK13KZhsmkAEBMIp6P75jwUV
	 B8+I+RvpNkyNUGV4i0oDpeu+aaMxsxYsyc+Yqwxkolq9tsGD6JUjIIM+x2Kk8nDn7A
	 u0logM6PuuKYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B26CCF9FE
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176191559359.27902.17820116256126130263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ea27721eb29aebeb10771e6e59fd9ac404cb519e437726d86e6416de9a6d7d1
Date: Fri, 31 Oct 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761915593
