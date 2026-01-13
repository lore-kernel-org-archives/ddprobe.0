Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA1A284883
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768279434; cv=none; b=Szn5L2i/ZL7izfQjqgGEJLaZhlHn6v/zNL5zqmHzVcXjOD/4X5PrXF8l1AeQgK81FYZJcS93KTx1rAzwgF9dw5AmLVJ97ngUcKQhV+STtS7bFafrD27sHc2kMp9BIGMNOxOrGy9DuxJ6UQcJHp3+qsNo8wVRmFgy5gZNgCpLcpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768279434; c=relaxed/simple;
	bh=wFpVoE71M1mbbDd5FHLQzNe6+YqqZ5PPsYydDW0T9cI=;
	h=To:Subject:From:Message-Id:Date; b=ON4tXsmpos6H+WsZ90v8lpATJ9j7S0ofCt3ACMxpbc6HW8JxOj4GGyDBsY86FZITzuv766A8r+iC6QXtdVNhtufo6USYjIpd2LPxxoGfbW2kpTtRiGTuuPuQqSMHYuHcdTdvkXMqvN9sJHj9WVVIPGZNJqKpPAGwuMgTCf6foQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jbVrKAxL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jbVrKAxL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A93C19421
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768279433;
	bh=wFpVoE71M1mbbDd5FHLQzNe6+YqqZ5PPsYydDW0T9cI=;
	h=To:Subject:From:Date:From;
	b=jbVrKAxLlQuY5d6d1D/aTW99Md+rUrKuCTp5+slCq9fq/sHWsGGHUdhSRrdzY+RZ/
	 aWBGc4AqXzfpWwLv6v7196A4Nnwac4HlzCCcfYjh/x5JRcMhLDkp7KshQz5BLmY+6x
	 5W6qB3+UpVGjgccLSkzwWEkF0JVxyuaOIquG3rv4qCGMlQynRJnoyoxNAXPXJfCxIa
	 5pBfVKxl4ylhGqBsH8ZzTVz160BADMPwTWDbKquTGpHh6+bQiUVcT9CLBeMMY9OtcM
	 NxACYxGn3P+Vgn5q0AbrANmb5sD0u/UX+ENOWpUNSHRcN8dSmxKtANMEGt5/EKG2Rx
	 vk35W7mzYlVww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925C9D29DC2
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176827943358.6241.6116996800235592662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a72d4eb71105e2960a0fec61884f712d56e17357bb41f0acaeacf5142b20c0c5
Date: Tue, 13 Jan 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768279433
