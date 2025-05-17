Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3941C2B9AA
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747522195; cv=none; b=rK8jQMfIVzyNzgQBfdnvZrpunXdF211mai2jtPOLTH93iQyEKO1xToM2zLEdQdEi+gBNLD4/cqxWVjfOSQlvV4NuL/FVuL3+VD4QA7UnD356g+fHxA7tCAjN4F8fLXkXK/Itvblzhu7mVrRTIkRwS0+35fDJwc5azXSFOgtmxCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747522195; c=relaxed/simple;
	bh=XyvKg+YtubzkyATt7k2vXeTe7tf1kltIhw3cYD6D7OE=;
	h=To:Subject:From:Message-Id:Date; b=uUN0KOmMK5mFTKzO0rZ58vTR5SU1Kp4UxYS9wslmfMXPZsONrbP26rBjkGcjKqB9iQ1XLiytFstaAhRZEvv8Tto1Oo67jMe0MyWqiND/JcN10NF7lIvxf667s9kmiQP1a6286pTZEjpTzCh0n/kNsMcyAYGgJuRD+04SSeaLoAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GSQFs2ug; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GSQFs2ug"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64BDC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747522193;
	bh=XyvKg+YtubzkyATt7k2vXeTe7tf1kltIhw3cYD6D7OE=;
	h=To:Subject:From:Date:From;
	b=GSQFs2ug4FjkoJLwZjSDXnLWnQDDv1vIU2SxwC3Iwa3TnKUkvYL2V1PNwKRNBfKkm
	 AD8P6z3BnoMX8Ov6i9OuPPCu1R9asOwzZgHHQRe8Su8oI0wg+8iOp6LvmkawhSig/Y
	 6FG381t06hmTmzx8Q9CJMeG5qnF1L4DjrLYfM0RotRvJvGfopktpBZTMI19Lg/BXl1
	 VdC9WEFVRgwwvgGe+abIDUTMu0eLUYMrmp3vEpEgrYa0D5VuPBn4j5CXwHu1/So+W3
	 1EH7UkwYUP5KgJm0bUPTH/eVpfU+wRiqPx6/K4eYAwv8TYW4gdOFvG7q7IMs+Uv3LZ
	 vF+xoHhBmKvzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946DAC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174752219357.31582.7979385764173736003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 988a80c9296254da795624f12b098836a8fd22b90d0d8bb2f470e5f1b40a5fcf
Date: Sat, 17 May 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747522193
