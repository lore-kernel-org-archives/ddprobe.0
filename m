Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4F4BA21
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 01:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776389854; cv=none; b=Lw/6PwFL+0UHT14evPOlc/4K4qMtRsi4y2XyKaPtb5tl+MTnJYDFGJahydVchpiHFv6ITZBgVb8KBRKUaWJQGa56vMmZDyNpc4IH4lytMwqcXrsqPRWDIfqQyptzzRXxfoj0zCf+wbNnEVaUqsvgEA0DUBV4FETUSzQVzwS6iJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776389854; c=relaxed/simple;
	bh=LT0iBMyn5ZjbmvMNb0S2PtFZyarcUbnRA9BYXGonCAc=;
	h=To:Subject:From:Message-Id:Date; b=XoglQv+jExga9FjthNx/x6e2tnmpRkuXJ9lv+5wAyJdcMK2cPrHaycQpbMX8+B6Epem3GKhKZf3rp6GR4Qr6RKNhlwfEo862oKDxgZfZyqiiyESLuKU74vlGZI/zRbF66mCT5bmVwGobWGGx4VV+M3gVeDfg+JspgNEJFW2zMNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rhbEQGCK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rhbEQGCK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF0ACC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 01:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776389853;
	bh=LT0iBMyn5ZjbmvMNb0S2PtFZyarcUbnRA9BYXGonCAc=;
	h=To:Subject:From:Date:From;
	b=rhbEQGCKdptWlXlFuipFkCY895e293LrZ4Qk7JMOm+LTJ8NuQo9afXARoEdegNpRH
	 +FcP/Yfg6vVvt7NhPljArPRw4Mb10xoS/8QVS6ovKubPwx2xcO7c9uvXnMIen7ryj4
	 2Cd8T4WSxw+G3XKiRAUap/xSQwx8en/e2nFJtn/Em0eSaHt1xHuekwYjC834bR9Mdt
	 +YRvR1QIwt4sewdr+321c7jCGzw4/TPMHg8YHs44jbnJJ0evrf3h9dlrujkVCi3VZg
	 Gtvio/85kBeEVFnryFK/r+7jsUr4RwpIEI5DYNxOOibuQnK4eXn2QF/95galn2xNrL
	 9mRiOoYk7nPXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDD2F8E49C
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 01:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177638985368.8829.2983290688841490700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea872a2a41ac841044eaddadf46078821dc1ad5944826150f2d8962ad14c777b
Date: Fri, 17 Apr 2026 01:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776389853
