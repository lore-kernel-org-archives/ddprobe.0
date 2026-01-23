Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3417131327F
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 03:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769139235; cv=none; b=saj7TW5vd99b22FkJgN8TiTQpcuO+XT+3c0Gei/CalIAK5cSB/VuNZ59ACbxbb1ScxQpo84lZL45HjYfhEbQSq0ij8KQ3eGgDPIWCutmZFh/O88MOrbdfBvv0k9IATX67Zy2Z1kZ9qVnzbK6MQIEtHmVHLxmziu0gqKafcFFRsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769139235; c=relaxed/simple;
	bh=bbuE4OEgzACSCu/kJJjB+um/mfEXvZIMCL3t5WYpoyI=;
	h=To:Subject:From:Message-Id:Date; b=NnDDorbmCPwsMp/yM914gr454FWvSn43y7zyaCtU3Ekx9StU5GouEKMjm2QGYt5k6+vnj9ptnvIwNkNqMaagaiQPkIUBhg12B4FONle/1ymK/46qs+HVi0oT7wdvu9JiRs+kgaF9z6d4e4ICN5bwm0QMw4coa0nOrdefO+bDE5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rr8ufZaN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rr8ufZaN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22B7C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769139233;
	bh=bbuE4OEgzACSCu/kJJjB+um/mfEXvZIMCL3t5WYpoyI=;
	h=To:Subject:From:Date:From;
	b=rr8ufZaNhweEjatU5wQ8WSmKFJc5xe5IVyeUlCF2vMrI5ysgQBFL8SISFxVDIogig
	 Yy5PcBRGJ9iLfxHz4+aE/ulJSguZRBf4g+8Q/rMVSz2hDvSxWy6OI6vGJc+rB2BvpB
	 2bNrjzWfoTodCLqcszDbGJmDg8iBNIvysBW3EirFc3qPbdoOaWn4hL0Huo2rxoSmcE
	 tTbIdr46W5cjNoJFECiNw0ObN8Tt2UXAAVHYkfswSIaZ/7bA+GCM2S+b9+ke9OV89k
	 KyuEAB/acaV+B7JbQb7OExj6f66V9HtmHpZbAmliNELZwfQJ3p+IeGRUjJvv/1jK0j
	 bKvNg9ZB/CX9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBB6D6CFAE
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176913923357.28183.15548153933640380207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cf5de09582087a74c46a63c6f34b7badce1b9f7e25a46fc8345b71b0db5b302
Date: Fri, 23 Jan 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769139233
