Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 678F874E25
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 20:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716582203; cv=none; b=FmmM9D1vlQsVroBMMNnUWxQGxGtWXWhyZr9M2rDYDBU4+Kc11rZcuzY2LTquLbm9eEySUz95WNP8TvpHh37lNusJfh7QHJM0N/yZ1z5dDrXn0hlKbqOnSL3MlBG8pVZNNZ1N3ri13suhqGW0qZIqLaztlkUYcJMJxJYOzcQFT7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716582203; c=relaxed/simple;
	bh=8oYkWT0mWktRsP545j8YFuTvThMNQqKODhFMqInBhd8=;
	h=To:Subject:From:Message-Id:Date; b=l+/nX45OiRpYpYscFpfRfKj/X5sN88tPJ15VS9FlIsnR3uMTpyZA7vLBcSNgL16L4EWFDaXgBus4VqflNkklCzSuuOmztx7vm61FzEihpMSWTaOzvXRumdD1c+Zac+2iCMqXwFjPyokLAcaXSHhPzS7qZkpOjoTZtKQiHbzOHdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uFFDpZpu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uFFDpZpu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0A92C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 20:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716582202;
	bh=8oYkWT0mWktRsP545j8YFuTvThMNQqKODhFMqInBhd8=;
	h=To:Subject:From:Date:From;
	b=uFFDpZpuYKB74VGtQSbe4l/7vMHi3eX78B8BIRsXCiNrw7WVg+B2qtRHRAmAVv0vj
	 8RM1VCQfiFtf14yuEQFS+8gZllFhO5ELAbsmDaVQqRVEioO2BjJnQto7sjKxy0Z+zI
	 ybvEOFwMmCHj1HiA8H3sqlKJVKK+nFumvP/ENVX8QIwzcuPm6+pz9WPzR6KOXvI5UC
	 fWTfdK0Ax1/mj1IA3taCJcCz7RL6QDJAKrkZiGOLH7uBzZdOARycBNfHb50TbMmNru
	 igd1/btV2NRdjf2Z6Es0ctSx2559RghsPs0D1mudbiu84YVtzAcUSdarCBJUGzknaW
	 awgG2W6aE/yKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA049C25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 20:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171658220281.28770.8130349832088936644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f42265c3218af27e6013338549ba5065cb0a240261a170ad23c5ad2c167660b0
Date: Fri, 24 May 2024 20:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716582202
