Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C61381BA
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759517994; cv=none; b=MKNbd4vPmKMx+zaSLGmohzCvowuGM6bMGLIqaltyvhU2SCYPh5u1/2s2po35kdyEuVh36dKJx1wVusLkwrkywJhYwD82aiaMwx5Y8AikOJun5Pahk7vNuqUkkdDQTV8DU++UWD4hpL12lkDxVHai57j4hNf9ybVaPwBJmLneViI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759517994; c=relaxed/simple;
	bh=SyJlo+D0hl3qL5NUCB2V4y3dDOwyT0i27scbWNkYWYk=;
	h=To:Subject:From:Message-Id:Date; b=Oy8PxIb8gPloCk+HONrAthL+ULgrHZ95XkM4yb+b/sri0Um2WfNfNe2AKuzzvgtpv453sQHgUtu++CeOFQVFMs2yPbbuIekPzEYVUYKO+6gvNleBHPYi+8CIMJzc9tcnlL8TLzuLZgyslJSOqyWBK6a2dfAa/ObjhFtgr4wUwVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9wMTRcK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9wMTRcK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10AFC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759517993;
	bh=SyJlo+D0hl3qL5NUCB2V4y3dDOwyT0i27scbWNkYWYk=;
	h=To:Subject:From:Date:From;
	b=H9wMTRcKOpc7ZzghGMGu3Bx+plN2hr2hb6dmfwuNsyOrJvQzoKOMZSNsQS05S7rc3
	 pWk7bClwS+9Dn1PwcxOR6AJH+WF0I63nm/CJuJEvbaSK8riwRtsLUlPZgspBRjLUMN
	 yfKntl5+aF0vj7pe3LGGN8OZZoZ/BmuZTXPdjzrl8Lh2bA5Lo0d/H0u9nFYHTIU8Kh
	 wC4FVCNFaimV2SKzUOJnETMRyj5/Qv0pyrdo+w//0fT2TLoTcDGtk6tGZhiDCd2E6b
	 imhxnZ6z5qmPpI4sFmeeijk6Pmf9o2ZyidfIWMkq5K/vaysUr6D0c9ChQItAKxxtZ1
	 ti5lbWvRuHblQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9078DCCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175951799358.11818.2049666260351569159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09453c7765015d4c9c6c38e4c46b31e0ee918f5b94b9602fafcbc68dde3d0bea
Date: Fri, 03 Oct 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759517993
