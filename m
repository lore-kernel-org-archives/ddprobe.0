Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9E2283FD9
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790469634; cv=none; b=BmeldM/+5L1/h5R8WLAHXDC8mAs4YcWJ21f7utqWTetdjqKOZjl4B8U0cDaYiknIdWPYXvzBNKfxFtpKmieLwY7KjbfBisnHnZdk0R2GZiYqtzDxamUe/QC6YbIheXPYnE7otX3FjSkYpnyJCMSnNoFm99Em01t7X1wEG4JkPBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790469634; c=relaxed/simple;
	bh=vpss4jb+Hj7RiOH+m+hCeJP1NNhx5QGcjCXa2LfWkWE=;
	h=To:Subject:From:Message-Id:Date; b=qVcLECfKyJtN+Yb5o0Oje6FM2OqmtvtWnaDip/YSeTSYIAlhxCwFuoYbjORPEaJzn3KiUsT1BUEeGH0EyIdfnoVo1MCT5Hw8Yp/hM66r1uVPc2dEFeI3xrV115vk7fCTeWfd9qgb9FniShvB/trcBiRqUH9I9MwUnb38oewGFvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hv4j3W/C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hv4j3W/C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB59DC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790469633;
	bh=vpss4jb+Hj7RiOH+m+hCeJP1NNhx5QGcjCXa2LfWkWE=;
	h=To:Subject:From:Date:From;
	b=hv4j3W/CF5JrIiIa2iSHHPYh7j23fwQh6Yhq5cRcLyBMbZdYrmXoA8T3jaPrzV06c
	 T4bZX7/8HPcXD21QjqS400YXVd6Qy5RUOl90ie+GmqA42OyMjSEPOzeocPA40HwoBg
	 McQgverAhkCso/BDvEjqbsNvPq0fpQs2tF4+X9GEP62PQby1uQSK5Qv5EZ5r+UPa1Z
	 aiDGOR9G2VfTud1NjKggd6jfJh52jqHsuTGqd3m175pJZUGu8CSL/DzLMOHwm4OwNV
	 j6/K8pysSy1aA6wS+hTZFPjY8LxRe+NR5pG+hKQmj9HyKd1mYlc1sXvnfYDa1GQ1N9
	 uAcAujXWhazgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AA3C98328
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179046963368.10905.7353439165680878891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81b35e8114288fd0949ea5e044d50aea7f17c4e5d15da706285655ed7987e424
Date: Sun, 27 Sep 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790469633
