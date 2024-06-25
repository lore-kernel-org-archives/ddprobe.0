Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16971145FFE
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 06:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719297803; cv=none; b=fNiF3RWPNZHq5WpN57bLSm5yRngzQhwq9xUXYjzenj7YoWy2BPnhmeuWWwobyrEdkoFpbpF9D4DK0L56GDvNtmErDaiWPXUrK88KAHrrzLr998Bq7uIwQ1SHAS2bnb1mMsx8FfAFi7wIw1pOGj9aqNsegmXo6mvs9KVq6KXCCUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719297803; c=relaxed/simple;
	bh=CCCXwXcq3ukQqNhDWKImKjWq78/8PnM6TWwzZ6E0x/s=;
	h=To:Subject:From:Message-Id:Date; b=jXjqDozeYwl6d9leX3pQD0kPmCl7tc47+X+wJyrHXxCHcjeZFNDDujt+QH0dXrHlhTV4ft5tMBmqZ1U/B1q0LoL4haiGZ8mB3+qj+1ElS2ddClUMWgFiH3/y75147Lx5ey4RYKXtYd2C4t+uJ0EXxssUS87lw/4AMrj7IpHY60o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eh9b70DK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eh9b70DK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DC6C32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 06:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719297802;
	bh=CCCXwXcq3ukQqNhDWKImKjWq78/8PnM6TWwzZ6E0x/s=;
	h=To:Subject:From:Date:From;
	b=eh9b70DKxA7abZO41/YkQqrvOGo68aqcy8meiqSjh8PDKQBcGmLp1V7sbGE20++My
	 mz6PRVhmvM2Kt5DkslcrsY8SJyzChUde7oTA6XYreDlDyyqAKe80whPHbuX7ktiGQ7
	 N+h/IfWLLmDIi6NrCyyqR4piBHQh8RPQXBkkHV6IrvCUxsRFNRQxae4WB7wuo8T6TC
	 1YgjGZ3rsv+P5aYmm5WNNT0wKPi2CiLN39NN1GQzatqNMoEar50pOTxbSwHybJIUiA
	 Vl4OW7bTVR3uRh3qlBKR88nRwBE5qS+0o1mfKT/JoKBnflhGnlmwxDEYmiCa4mgUzy
	 8pGhesT/Z2a5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1FDEC2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 06:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171929780278.2177.5233115899356770782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e2b2c6d988884dede00a9060b943e6ec15f4451d134bcb6a0adb7cca8d14293
Date: Tue, 25 Jun 2024 06:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719297802
