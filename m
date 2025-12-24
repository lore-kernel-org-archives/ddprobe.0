Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6D0188713
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766562234; cv=none; b=VQsFw+75mEa2nVFNkFkx0kH0r3iLd9sfkq3EctFu8SyCsYaZb4D/twUE0ocBSkwUUwVfHf0QcXLXeWIpjFSXxet6fnOcBI3WITihNhvKW76VmIyRvRUqCSTkCXTQTQz5yCHuf7ya2LyBhXbk1brxFAqDI9gzoCP7+RHS1nXDLv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766562234; c=relaxed/simple;
	bh=Obybeo0ve2kLM3UFk8vTM3wSzjkYKLIvhhuA1yjFgv4=;
	h=To:Subject:From:Message-Id:Date; b=qEOOQ3qbPieA4z/Ubiu+jVZwUL0H0aE0FLHxuqNosUeRcbM10Q2i3kTPSrNzHY2Z34eG1D4VZlD8uBnU38lB7xVHPsG+pM1S9Rzzspw6Ac8sjIboL338cyX1RxlyMlYlIY8yWHmBeldIQyb4gCxRg2HLKpQgYrRpKe/0WKsJnw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CcoYbYuY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CcoYbYuY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A0FC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766562233;
	bh=Obybeo0ve2kLM3UFk8vTM3wSzjkYKLIvhhuA1yjFgv4=;
	h=To:Subject:From:Date:From;
	b=CcoYbYuYKF8NgS77fCU7VrzcOEPFmDHQCOeBMM9ywq/fXoD6JV3EivXk8+plAEU1S
	 qLN1uN+JEa1KyvtxOsEQQuU8I2G5yZq3eSjz+nkX2tPjkgeRMVrZ4lypjayj+Nvluz
	 kaZv3qtUunYxyKsAnp6A6DRVk9EMIIyKSRhQE0VZlgLlWdZQWVT0/X6f2efFPhO0xa
	 Rh/5ATgpRrgKz7KNJFxlx0ZHVGZJvhPp+pgWvhhHXS0V/CjRYgtoTHpK2lcwOjeXpu
	 5k56dbOZG/Sao9DfbZmNHI+KgxKh85205b7x/sOqVdqjkG4YsljUnuFurbw7qniEuF
	 P6fgKIVGCH/oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9537EE74ADE
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176656223358.17634.12096479306190266714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f602eb855b7c3fd5bcd7fdaca666f9883a0bea6a472aa8fab68d46ce1642c8bb
Date: Wed, 24 Dec 2025 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766562233
