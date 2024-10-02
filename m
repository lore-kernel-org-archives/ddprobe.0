Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51AEE197A67
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 09:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727859954; cv=none; b=I9CUKnHFfXtCg5GefsPOvK/hYTPAcp+ufu6zXDjsoik5E3r7xJXQQE0FCyiKSXKsxG273xA4AwzpR+marXLLnhbqOqvzem6KOjlTau1dfp+0nmi9sgonQUb7YlHlQ2zU4gekRJ0i19yISngJ8y+43hunX7aPk9ecSY/8W2R0D8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727859954; c=relaxed/simple;
	bh=pTp4zBK7UFzSfBsMyDttN3fiLNDlwHIKfQpN35efBqs=;
	h=To:Subject:From:Message-Id:Date; b=UUdB/U0asK7Nsp+bgiLSFMAHPyKYrkiEnSwPZw+sF23u+xyUGoyr7NK4xScF0WMMpdBhrZG3Dbntrv8cy1Rgb6jpUW4sGytW875efnkVXNrqtjIeNLMwur18NmP5tZhmxEzvucAVrhZ4gnsjzkrK6/WSfvv0khvPkhc2P9An4p4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7rvNR8h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7rvNR8h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B770FC4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727859953;
	bh=pTp4zBK7UFzSfBsMyDttN3fiLNDlwHIKfQpN35efBqs=;
	h=To:Subject:From:Date:From;
	b=k7rvNR8hUnNOW7t77xMwgmJ2oi3Ii+jgkvz4MsFym/JS6awiXQ0Rm24MucoAve1BH
	 uycofcY7ds/Km4DYeS2Iv4sEylXmpr+xMHm3PYtQ9YA8lgMCQa/Whmlmqcn+lU+fm7
	 uYm+Pou8lt0owTeWrqr3pxa1pMzu115ZX2bZHzCCJ/rBhgklBUURysIHgy+jY8LHd0
	 ung1LKwl8lWipVDgdf5qDToA4sYDCLfrWC2WmeOUxrH0ZXALlzDofl0ihf1FKQiJ8B
	 VY1rd/BSfMRVa5WXg46scGFPwyz7rlSrrf7qkRQsGnhTqmn97XDUVUjj+LDJ/Srb9U
	 VqUg5rsEs4t1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0DB8CF31AA
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172785995364.8559.8140152656551185773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b452df5a3209c5dac6ccb0c5ca37bdfe535f3f6bd2b56c8cdccee204db721d51
Date: Wed, 02 Oct 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727859953
