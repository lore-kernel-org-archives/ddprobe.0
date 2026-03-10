Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0353927EFFA
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773105294; cv=none; b=Xv8YSWUEc8g/bISG1QTuR1/MCIdI0gik5fgEFqILH3/qY83UGn7Gb9T3vL4l7PZqodqOnEkB3vc7s1Bz1+fNeLyHtLZw5ftGCqFj38jwssOCUFsj+lfFmnwfkLVmI3yE4W+kFau9fo2m7Jtliksj71SpeSY7z6D7PnC0fV8nbEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773105294; c=relaxed/simple;
	bh=0w1mBXs/T3jkqPxPhwyb+CHuep+/Qi1zKVmLiikD6EI=;
	h=To:Subject:From:Message-Id:Date; b=EaUrI3UbCOuY8YMsqFbLJa1usGunsfdSfAnNkKoG9CZcOUn33mOYDo7DeHQ4mybvYiHliWfFGGoDkcRv7nbpHj+zRcbf/QukleQMlpPuaetzoWJywIYzPaAh6/8eK2oRD95eTzask9JHrNbqEoLY3PKF4O6Hq1g4jK4hofa30j0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=poahp/Fy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="poahp/Fy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB124C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773105293;
	bh=0w1mBXs/T3jkqPxPhwyb+CHuep+/Qi1zKVmLiikD6EI=;
	h=To:Subject:From:Date:From;
	b=poahp/FyTAaH2QiyfWHNsMNQSKvmp1AY85XWih1tLVWuHub0oZiWgfN8eyNrxBXO3
	 XZVaE0E8fRDMf+d0G4ze0kFyqSwCe4+nvzkrwTQBkaBPY2oCidXizr9oFHnaimVrNY
	 O8GbuW2BTQDc6xA93NESnb7+OqeDltOj0zkCfKzUvHFEGjL8dZiYkpQS6fFPVrmCO5
	 NXS/GCjLi4j7fobcSQkxA9TCaAWBRorM88el0Ph4YJI1poAfWZsrxQvmKuUSSHIHrL
	 iPplWZHBNQx6oAOsv7juzSVb18Axm4STQn6Xt0Wde4kLH+hsOfEQRAjfyc4ImGlpON
	 clNGLo0JdO56w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9681CFCC9A5
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177310529360.5929.8523169696724196057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b3cd558d58e47977b20a6dca66a738af3ada220db2972b518210794e38dda60
Date: Tue, 10 Mar 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773105293
