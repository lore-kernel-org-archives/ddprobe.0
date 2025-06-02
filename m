Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3813F2253E9
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748892595; cv=none; b=iDiFWMgiskQbwTlFx5UqiCm3jH8dXJgnAYFgW0MPjRcrvDJRl3toGT1dCXvRqe5Jz95QWbviddO0rgq+YhFXi6uCuT4P4YELcquZ8drO9ohkS30uwvIljgdotlriW00XeNBq46uofeMndFV9VFF+aGgpbrirLyb1kMdK91r3ROU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748892595; c=relaxed/simple;
	bh=zFvzaS1mfbSR2kV4bmGLuFmDHPjdrpJAKl5ifnx/R5E=;
	h=To:Subject:From:Message-Id:Date; b=bFLOj5gXQXUTd2mGaO1JEOcyBb6x5t3l0flM9KJPm6rYXG2dbpOf361BAPZRvlIG9hUFuxQJ0f4Rk7ZIc9RBFybUnO2fuMtzMXjw8SuZOKm5diYIJND5AXp6b5erMtNgrxlxlk0XlXI+Xo4j6+9CesWYOmoNkSRqbzp4YjW1mPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VX62mVe/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VX62mVe/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75F0C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748892593;
	bh=zFvzaS1mfbSR2kV4bmGLuFmDHPjdrpJAKl5ifnx/R5E=;
	h=To:Subject:From:Date:From;
	b=VX62mVe/vibpUlJlAld0oJR+TW5EPxlIs4yQNF34tXNLmJlRMBK2kSRaBFzwoLKry
	 izci9KBDg+FTsD10mbMcsUiiGBNZFqa87Xlwyzk+nfbb/aODc8hrz0LwsOKjZh0li9
	 UHePFyUn9D2NPqD/0J2ZAeidG9JUwccTy2PAUg1//k/kR0aIQvzSiivlo7noXjbP5f
	 xBOUICPbyv7vtlx6tQCwSEa6LLPfdZkycVbzEt13WA5OoiZksfNa5xx7aYXDLzQYtq
	 pr02htuBmFCCnt9xvGOp0szrCxENYit84Gd5mWlf8M9CjnrOnrk16FmYE1izyn4Ma9
	 bby7PG+XH+5EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9282CC5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174889259358.10173.8870052888506600962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e56a01c2d7848433dc23827a2b3304666c2cb45c298d6e8770610571cde0f727
Date: Mon, 02 Jun 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748892593
