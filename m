Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADE12E36E2
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751929794; cv=none; b=Un9RDsahpqSmHmuKpeljhzPu9Vav28mYoLtFEwFQ4hqkIcM5HJlpGHFW85q0Mjrjpc6zaS0GEtFmOreD/OtP68Fb4ciU3BPaT4OZik7HbOVA7UgmHAOqElMGem+YmQ+aqm+SevU5b4orDHEtfpq3vmMzU1dcWRJID8AkzStc9rA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751929794; c=relaxed/simple;
	bh=kwkIg6CjowfN0+zfOPGtAPzh+UxY24JOigj8x9iJXYg=;
	h=To:Subject:From:Message-Id:Date; b=fXp+d5JkJr32rYc4nlL4BlVLik74NxZS91cjsNJg+EliYKYdlPk+iZVUW76qMRh8uLM2YAkAKRSchw/LjHssrKLzj+Twu6ZW7diwQ62DShbkNvzWEfqFMrgdOd7e2Vu1EgZkY1vxr9l7RfXbC55ud3MBgsOSry+MH5jjbvCH2XE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KZnUkjGr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KZnUkjGr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4144C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751929793;
	bh=kwkIg6CjowfN0+zfOPGtAPzh+UxY24JOigj8x9iJXYg=;
	h=To:Subject:From:Date:From;
	b=KZnUkjGrdj9YYepdaMrRT9WJB2S4YacPXGUaXkIIcIinZ7aS3lHHssGbRgakM8HK1
	 Y7WvOFRyOwceba4h95zVxWYwZ8WElMQwVzxFapgaj8R++dlgGZe5b9N3h4xdDdjw6I
	 +WqutcNe/NLtIFtxJhlQmDS1dkpVm0BOC9XYRIUWbx7rE9iAwopd4nEMumnxivavw5
	 EBEGB764BT9RjW2VjDykBmW4KBiJMv0tkuBBu9fV861Ivc+ZXLTCxA5Lf/zly49nUo
	 FEzAKQOQM/YQZ3v8Rk9Ge0bAR+NCgwdaCeELdtMTDqahWJGcmwEvbFIQKAuQGlC2G1
	 UNzWkz+SD8nHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957E0C83030
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175192979358.15211.17756751807536583348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0175ced5107d97cef9aa7a9c28f753dbf93be5932d3d410e607a72492efd1545
Date: Mon, 07 Jul 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751929793
