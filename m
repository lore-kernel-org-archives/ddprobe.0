Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161552581
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768024434; cv=none; b=QFF2Vmfzb4rPJwH3iWQIf8FWWixeP0PgA8Yf6P4hwBP8oDA6qpEZAoG1l+Cq8iCnBdRn+4nuwriEK61JVKhRz1YudOC6BfmusCOcqsknQot4mUbat+nnLklEqsRNiHjTpjATNULVsnywFexns/FRAUX/U/xb80DV3q3dM0ErF2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768024434; c=relaxed/simple;
	bh=arErc8Pyw2THVEym0DRIY8eQz6T9RnRiqgI1uPd0kh0=;
	h=To:Subject:From:Message-Id:Date; b=q17axD2xfNv4T8lvpoNVOiPIwxfQDwBpaZeBVC1pFUjb52AxRqav0UWeCmqgHo+G/KhPU3n1/3h7BUHJA7Mkr7Cr/baK3GgrggKQ7MvRBHOlvEEy3P9biqTJjw0O3HZRhv5wKOxbRDGR5ZEsoXOv5yBU9s2W6rysVFqMJsxvU4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+xNW6qy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+xNW6qy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A094EC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768024433;
	bh=arErc8Pyw2THVEym0DRIY8eQz6T9RnRiqgI1uPd0kh0=;
	h=To:Subject:From:Date:From;
	b=m+xNW6qy2XuMW6YFRKN6cxNbpiM6oM7PgzX62mDdh3x9ghXqbSgFoaNiyxpxBy7uR
	 ZWWu2Fz29foQOM94Q9+CG/TVW1z4Z6R+ONVWuCzXvsX1Si//ly0o+ae+xUXhtowJIM
	 +otflnsJvxbe+Zc/3srajgfiAT7uQykmOjKY1VWqFL84zQY40L+U34qFpTJVde0ofs
	 LLxK7lG1nt2nF+SlnklZhnaf1+BKh1cVLtXAbSwLBsq0k7b1nokOI5a/g07CQ0cicI
	 tn740VbTVL8k3gV9CH/dLgfu7deM/1gQgDUGB+e236Ea68Te/J3xrsAnVumfLBsgZw
	 26BLGuFqciquw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA02D277CE
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176802443358.7237.17767130706261126694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa2fa7dd8704a0f562858092f0299ae5fc2351073d388bbfb94e4386e7b22fc0
Date: Sat, 10 Jan 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768024433
