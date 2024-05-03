Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6E515098B
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 13:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714743143; cv=none; b=hKxB39OelYY2EbhegQE3IutLh3ghB+Mb6UVkEIYjWOY7ycPpoyu3XnwXs5WRY0lLK9Bh5CfbhxsG09hSU8UtRnPHZwmQWywg6eSX+mq/ZDfEJo7p+a1rAsMQONRx3qajcFMhUS6RLxvnCrhr9NOBv5CiSHEkLxwzah4UF6jecRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714743143; c=relaxed/simple;
	bh=soJ1VpYrUg1/QVKYMSrhUaZ7ZqBRIl3mCpF3w7IiKcc=;
	h=To:Subject:From:Message-Id:Date; b=Dhvsw4Bvoojlxtj6xlA3lWWTtiNthiFCoOumS1rwtzI9RbmFYfE8Th9h/eyZN0jaQ1yXJxH5SdxW/H9qEbMPsnbMPwsOIVRvHdPsnMIg1Bxvapx4KT00ilDxhs8X6soOfbe/6ouDoEBihjQ5mvs9Lb1AivFMEK9+a7lCZYdc5Es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TjkY31S6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TjkY31S6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCEF0C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 13:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714743142;
	bh=soJ1VpYrUg1/QVKYMSrhUaZ7ZqBRIl3mCpF3w7IiKcc=;
	h=To:Subject:From:Date:From;
	b=TjkY31S6wf0EcOpZWqby9NH+ciRVn5/XO8rCR3oSco/5Z25Og7fSzZVuhWcgwbNAn
	 pIvMxgochfpRIVQDq6FC5sogc6kdgthuYnOS6QB+59rNdhuWT9tqIorIZz9XjIOgky
	 40v5vWoYWhCysRT18/4Q3o2GBHFheitczO/6y1zVZT5BEcnZjH8OXNzFTmO3TAFbFe
	 /d9Lro4uuLbgCZw3lAHXPmdHFcpqQI+DEj0swFOHbB5H5nxlil1fKzOcMQYXcY6bPn
	 7NUt0WMic7OFhC2J78n6NBNQBcPmyENyPBWZs00pP2RNoX81c2lu512R6wxSg4AYgF
	 5vM8p5JLpHcPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5E38C10F16
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 13:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171474314280.27187.18087369943225139919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24f732d4260b177e7b1d455b1d38d9620573c66111d582919809daf8e3d62cbb
Date: Fri, 03 May 2024 13:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714743142
