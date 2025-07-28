Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6C78BEC
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753706394; cv=none; b=l5X/QczKfLKxgSPwRQYoodp4GFsjrsZFqg8S477gIrMVvlnl+CoLCK07aB4rhLtYFEmWlM88n8gjGvWSIs9HcESc3jPB+GugIEskNLhHt1f3tB7Ygz8UxH1ZJNxPpxzof7kZuqA9TTxGxnr9mRFVKOEC4dVjvY8nsUXPqeQ0RWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753706394; c=relaxed/simple;
	bh=BQqpvhpV/NFl9ZHQ/m0DAm0ZA4XvJA5G9wBVWTQfSzI=;
	h=To:Subject:From:Message-Id:Date; b=jfw33mF4xYyGuT45ZnKMlWUAiM4K78iij1wVFAf0OETJ7HbhTQVvQjmZJWPh67Pw1tIpxQBIrkh1oa4MagmYw7UcnVUvVgpM5RxGTxKDCL9/E+eiBlgttBAwlcAkFyqMtEp/WLEMhDR4zhv/tOGHyqdbV5EiXF//cMgwM1hXdYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7vIS2IH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7vIS2IH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F553C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753706393;
	bh=BQqpvhpV/NFl9ZHQ/m0DAm0ZA4XvJA5G9wBVWTQfSzI=;
	h=To:Subject:From:Date:From;
	b=a7vIS2IH5xwN1J4u95VLP6BY+W+HoydUaG93Jev9Y76pfNHaDpZ7YIgcG/2HFqYss
	 U2oGRdfn5QMGp2jNSmvKGhWSd1GfY8xvAwbWBmZrquZw3Xou/p8qP5TZkHM0bZZRMN
	 zas7WtwNvWaETVIo94F9oPcvR/YCmZCBa9T2FH0yj1o9TZUvvp3JDzBr5BRyPlNAHq
	 FN5fg20j0nx6aOPplHE1eMkVbOOS1DBstLzcE1jvUvR1uHnmLFzYFIjrV85Q5cc25c
	 JngooRkWliI8wSZcNSsmYMb1Jq/V54YJ1AQj8I9OtcvbMKzNyM7hQEaQM/YPIFtvaI
	 vDQ3DQBWVTSJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E54AC87FC9
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175370639357.28209.1326660662387089035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe681e9b7ccd5ad80f48aa529268e4fef3e92da8598d66766872bcba66723f5a
Date: Mon, 28 Jul 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753706393
