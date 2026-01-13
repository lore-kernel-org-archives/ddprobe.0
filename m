Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D94EEBB
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768338234; cv=none; b=NUmlL2/uC9tdiCx3Aj4DuJN1+cc/mFtvUUqk0C88Gtj4Ycb7Ezic1sEj7jS2NYt0nBopzXXeY/KrV0m2uFILM4F9sKHKWPRhLN9uiDqa6AFrGJcPCMdLQ97KqQ4G7rSHxIgKNp9CiQXvyz3Sijqj9Dn3x77qtafFekfrOUOdbzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768338234; c=relaxed/simple;
	bh=3NVBH+coP/2/ITom2iiKWBbqwDInbFJV/WuUU4mVfW8=;
	h=To:Subject:From:Message-Id:Date; b=NZx9g+abW4mM/HWbJ86OYQ2jcytEPfPy/yUiihUzTbuHzj11qTavZ6kRBNF9Wz8r1bA7WzrU6ykjCQW5Dee+Eqxpp0xQn2DEx7p5q5ZaMstxBz0Hqp1Uo1RYJtxrh2p57n6adTmjI1zOhUhJQsM8GXhLSZF1ucyJJSsAgtInRbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l1t152wv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l1t152wv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E810C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768338233;
	bh=3NVBH+coP/2/ITom2iiKWBbqwDInbFJV/WuUU4mVfW8=;
	h=To:Subject:From:Date:From;
	b=l1t152wv6PE5MWR+A8LIH5Ll7TGBiHO0Nch5FomEY/OjEKIcKdSc0q3SPqFsAcrW/
	 GEgsqDcJdBpN1Z7xoSbbKEBdCpeAV7z286yoHmuU+7JsJNPSF8Pc0nsdX32gb+pJPT
	 5UFRra7uPaoqWEguNkR2uWzy42X4X7zlf4TnKlFj/DI1hG5gOMaWgP0Eyt6iBP/7gv
	 ID0KhXpuIyieyDFBnXJAt7OQwg05rvCxhlt27B8W0feWI1dvF0oFmeRQk+9RWm58wt
	 gJa5Zh9k6xERiUp9khb8yQ8Z3BVpjxMuvz0MEFcBSILJogmY/uQGmFTu+ZWpk/F1lv
	 ofnMRWTujqyyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901D7D30CC0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176833823358.29374.7485296689753061497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b01c89586543caa3dfba8294be2b9308b15240d7f8f41a74cfa63bfabcee0c4
Date: Tue, 13 Jan 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768338233
