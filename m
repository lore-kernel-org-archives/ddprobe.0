Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B9893F1059
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787983234; cv=none; b=aGT6sm81LplNBA7F3M+Q+vNtRRLfvGYzhuGP6rz1n6Q/NyqRsHF51QofSBQf7x1WYknzy+OO9YuJG76+AU+iVwsnA/7sxk3cRxNKw33Y5/EzEWfiGgVRHftRNN5VnbeoH2tPSgJ6E47iro8dw2KzjItNSytZtBoBwyHrUXvQ2nU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787983234; c=relaxed/simple;
	bh=6oxqU6duxZiPdp2Ql2BKJZR7gX6Oc8ybL2qh1HCnsdo=;
	h=To:Subject:From:Message-Id:Date; b=bPBG79/mVBjdPXCExZzNSJ6vtCzYS3YSweNszatevNm+k1XC4KkNjSpa3LyrdL7RzA1WTepaufR2Svx23CrPsQ9S4/m5+EdztzVeXI4vctXxc9Ip7ryDpxGiPWiWekMi9br/MMA4nMQwUIcZmD1NbvykJS6oYtiqferOjUlOU+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWK4qpZ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWK4qpZ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32D0C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787983233;
	bh=6oxqU6duxZiPdp2Ql2BKJZR7gX6Oc8ybL2qh1HCnsdo=;
	h=To:Subject:From:Date:From;
	b=bWK4qpZ3MueieYrtqBhSwark8K6mjULJ8bPOiqwofc6DEvD2RH9cEthZtm1Y+qjXX
	 JY4OjfT4ttZxZ3bTJKnB2F9Xj+oCEYe/1I4YzppwwGfsbmJ0d6+A2jvYLH2wBjH7T+
	 fOyTx9IvRa0Gwscb/Hm6dW1O4KkTBy93JVR8zQVBepzLTsTVcGAkPkJ44FMKtashdD
	 mN0TvdjMI8XpTVC4HkpohnK6tyQBLELPyVu95OHfqc8R4dMeGfM2IljDnvAjXiIYB4
	 mJMdM+J8TD6KdMSEA5XY/wui+ZnnR79Ly6qIn3HY5dayNC4myNGP8K746UgZKlekzj
	 axeGJpadyVSVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CA4C61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178798323368.23451.9619040671358831117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 397a122ff10195dddbe17fa773fc2d404c384cd1536f04ce4f9ccd62c38f34c6
Date: Sat, 29 Aug 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787983233
