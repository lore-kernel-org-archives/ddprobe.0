Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192E01DA3D
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757121594; cv=none; b=KE02RetT1esYzMogFugZ1pRHhNiub6ZfjbexJ+HkyY+FzsvRYmCtB9aRgQpUkcuJitB0DCZ3QnrOW4sPvaO5FnSk7J135Y1Vko5f26AkqA8mz+1zYTjCOTuQLinpc9g4CELcAGJmbo3+Fe4G+/Wm/cCo1m5sr7jo4HNCbbLp4uA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757121594; c=relaxed/simple;
	bh=rJ7uAu+3Yde6pvhQKiU/h5DJIAy3gmOZfP+2Yp3tC44=;
	h=To:Subject:From:Message-Id:Date; b=dvkbggDM38w64RJ2uN96huhx/1mE3WfEtT0A7n6Z0sqeoR883KyQow8pyE2uMDbOw/e8aPt6WatoeAtaY33Kqy0A5+FmBdZX1kPL2+AjPsCp9oI34V8SeuMOj+N+ww0ayl5ZZT5wC/tz1IsG6yunWkNkBRxOitSw+14j/g9gtSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qKMV9b8j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qKMV9b8j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD49C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757121593;
	bh=rJ7uAu+3Yde6pvhQKiU/h5DJIAy3gmOZfP+2Yp3tC44=;
	h=To:Subject:From:Date:From;
	b=qKMV9b8jTFFcBhyIXawZbiAlFg4C1ajuTg3ioxJM1v2L9VW/WRh6PbvglWiB+c4nL
	 D6iLV8W+F/HLlrK/Keh17ktBtQnAT+pp5+mioITLoaoIq1jjmRwo20vPChIjBX6iwE
	 bGPYKDZJ1Ggq5jAvOM/9by2qegJr7YyKXGUgOMi3pzRC2riY/ju0d7eu6RWkI+5Gsx
	 YOAPNE9qR7HCB8TR2ztxylv1p5gLBo1c3fheDDoTa3Ayfy6CMa7wyUMGayIsAdR1sQ
	 0Mvk+q0MZIxWuLZ3uXiUfiuNfAQL0t2hD9UQuQ15NXWwqTZH20daGFe8CXIYe76Him
	 KFYuZdjHbqrHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A95CA0FED
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175712159357.21979.16601552316014718319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be6f0298a9aaa5d1f01d056169f49d2138fc195a1e785f01b13c11c3e8ca5805
Date: Sat, 06 Sep 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757121593
