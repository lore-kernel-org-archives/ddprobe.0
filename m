Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ADE48C0B
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742346595; cv=none; b=qtVWoHK9yS/1lHKktMfW84Qy9u6NM3t7ZAHIgrME8xjIvCmHGHqaypjKEMuZQIjcq9CXx//hXYh6S3xDBeH+sIs2t8pZVZW6A+Yu9egs3e6grvYgTgHVWOTU17JsVu9PX0omvgPsKVSQ1+pA/66DGZj6EULl1m/TMo5T4kelDPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742346595; c=relaxed/simple;
	bh=05Y7ed77VEmsr8vDFNR77nsy7KWsgOFLF9q4YJT5Z0M=;
	h=To:Subject:From:Message-Id:Date; b=NAG9OTnZQie+G2a0ykpR8g7kyJ7goh7fcEPxv/3R/9qm/Tt2XgHZDI5xJCTvRnHNk1Jrs70voAbEpzvwxTBVKP21JmAIyjhaiWmaIfVl3ZkFbXiqHvqLmT+UK4H1pt3AQylolIZIEVWqp2YuJ2ejiMdthpasP/ulwllUf0+0aCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qVB0atAD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qVB0atAD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC447C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742346593;
	bh=05Y7ed77VEmsr8vDFNR77nsy7KWsgOFLF9q4YJT5Z0M=;
	h=To:Subject:From:Date:From;
	b=qVB0atADApS/8votSbsk7fZQwmi2V1DfDK9zKPSmAW22Hw56Xj+KDf7v3B71Tm4g8
	 S4WV8d233/xToThEE0jWdBbUXGsb1IuAeDoUNZCzuEhE6PU6Ul5zyGuR6URbRoRxiq
	 4QLkwPMcUy427xhk9jf9Wm67zhFN0oCUG23s0Tx0QzxaHwnwC0Jcux0g+lzkGbD4EK
	 ZTKYR6ZvBa3G79LfQZHahwq++yaJpyrnmhzQW7yqaKHaG20yl259OwT1GgiU/RkLrV
	 7WLfCWylFVAjyXmAHT9Ra872vSukFxZHAnt0I4ld8cGa32GYGE6ltW9ut8SepRT1kz
	 ntVdi2v+BmcbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995CEC282EC
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174234659361.27771.4572658256936038396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebe985af797886ac4699fa77e4e16878409b1d90a8c2b4a95423a39864186219
Date: Wed, 19 Mar 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742346593
