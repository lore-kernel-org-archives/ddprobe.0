Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516A2433BCA
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785784234; cv=none; b=I2Rn8+OTWZWHjJe5p9qPJIXfa9g0DWDCZPfvD0IVVe1g1J511c58TqsQMyULrjCdN3RWSnFtXAdcEvZsm4XR/lUsWqGVQSRcihk3RFItQ2lOpVudk5jOyBwa9VJ2BdmcBOxqd9CxzYLZN9L6QlfUFJR/w4HSLgYbA0k6EktevR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785784234; c=relaxed/simple;
	bh=p6hIita9MRLZvIYZnqB9ae8zqYLkOvXm6SMY0QkTXXk=;
	h=To:Subject:From:Message-Id:Date; b=OgjgclPMS9x0mWiQ4HXskaGYlHvl0fVPZfUvUYPnjxAyJDGZu7VGD1kQiWZ3b1tN6wS2yuwHC8GS8pJSFgO0Pk87q3Qh1OjxDEaN5DPjXBuiIXPueUeDjb9fZH/sb3DK/XJeKA+aiyaz46BPsiOPYXjalKzHTjEzykkRZNymUWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kECl2SJp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kECl2SJp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD432C2BCF6
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785784233;
	bh=p6hIita9MRLZvIYZnqB9ae8zqYLkOvXm6SMY0QkTXXk=;
	h=To:Subject:From:Date:From;
	b=kECl2SJp67+bg/gYry2h5nbm2U+s08WaQYDpm36/9Gz3kUGJvtXpqCu6alm/R62zw
	 2iqr5z/1nRyMIYSF8TcXvNlm/38z3uY0hA1/YliMdhUWv6ovE6Qdb2lPBiZFswcfu8
	 ECfxtzUTdpIETnx6S6syEpSDa5CC0ufIvKQ7Nd1ATWOT/hsD5Pd/Hd0iX7rTj5Eyea
	 MRmiDc4y1nLz8KAWj/ffgiyAQrAP4lWpBVFqjufaXPYSWrTQIYwlWIbDLH8zod/8TJ
	 N9jM9CeGwyexlLrw47f8JQjMPEkcywN+Cy2zq1MQY6Rg7DdkTb9LWlvXRBHU8+9gQn
	 o5wRFL1eV2Bxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1E2C55196
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178578423369.27955.10796182631594586687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9c6b9adb87805c2cc46adbc37ed6c7d85e29a78b843dd771afd051791d10d47
Date: Mon, 03 Aug 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785784233
