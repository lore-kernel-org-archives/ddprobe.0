Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 651E4369219
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789052434; cv=none; b=i5aR5urewW7jYlJjgGjShxwdGf8eYSD9CY1F+fXz4fZRIEAQ2KyuyQU+wRd9ty4AAGWRmisiSoixXaSEFLiOgxtuc/l1VZ7P2iYKK29SodYKvHRSqN4i9ODRBtfDdYHhkFwYhhFDEGngMKCIlDUhdTm7ZtP9nFaMBIW+C95onO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789052434; c=relaxed/simple;
	bh=N3cExkftQkoULvQCOL52GQsd2CdJthtkP08y67PPFB8=;
	h=To:Subject:From:Message-Id:Date; b=A8BesQpg4ZSuVnhBFgvSPcKs0CdITVEcedp4S4Te0RSuCOUEofeR7amttWJ3ogTZq1ErqemsQeKUdkpAUAOYnsbkn5n6+kkZKA35r+Qf1LTS10SqLyx3Fwgl3W1WAk1ivz2hk4vt8ZlaX9m8J2xZwGYrAeZ+4X3whakS1rJ+pLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqhU0+wW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqhU0+wW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAEEDC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789052433;
	bh=N3cExkftQkoULvQCOL52GQsd2CdJthtkP08y67PPFB8=;
	h=To:Subject:From:Date:From;
	b=nqhU0+wWkTRzk0cmnu89N7wcjyv8MDysr7KZqvFrtfwdwfK2trKjUAy2vpFR+7eLU
	 B4XEOzmU7eTd77WbjBW1mnkQFba0ePM8PIpyhk6rg7BlVoSZr609NVQFijSOcZpEg8
	 6TROKJOOw+BHG+aO23e5tLZlEgl7qExp1P016CpubtHfnrYx6DquVpYQTKSoCaAFRJ
	 jtzy/VAJnHF346z8UkXZynYd+tkl/iyWTxXaqKrF2KhL/XyBNWav6/EWrmJ+mJj6sA
	 7MyHlZhnMc/VP5YDX7BWFCwPvO6k9xODsYUJzD8gc7TxkzQYMOzuwHnqKN/bL5RLwn
	 czA5ccXFpoamQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B13C79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178905243372.29667.10441645352767220351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73ca36152a5e7a16b0ed8aa11d69581b54e20a7739256014c7f182d2bcc41814
Date: Thu, 10 Sep 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789052433
