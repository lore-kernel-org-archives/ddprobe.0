Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AD842CB1C
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789489234; cv=none; b=BIMeeDhMg2OdTUENOJhpH4NN1MlbF7BIhVPLe1Tnoh5Rv9E7/s4Z04tyxiAjfZGk5g98Q8aM8dLiN6yxj2cHKSwux+6vvozX9cRnDzzT88Jj3xLnOVZmna+5fZ4ANXkUbTNpIaSCIx3hn7ANrz+0rmCXelmpWqvW3YUEQy9a4UU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789489234; c=relaxed/simple;
	bh=7QgKdCIcUKFHQxis7s02txsJbBQtzBBdgV3C/5Pai3s=;
	h=To:Subject:From:Message-Id:Date; b=hGsOIVzJipM4UozQdUZxBJLveq6tALWkuyZun+5drwAYVbL3Yn9dNq9OeiarwT+O7iLmb/GPuMhfsjcuVKEuK0diLITfPfoP5Vi6Gb5lpeLPINbKvjR8wtdhEKnllu1keKngiRs2MhfF93ZjdIx1oQf20uhI05nUnXGEAMnFdVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c1LpeqaI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c1LpeqaI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE688C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789489233;
	bh=7QgKdCIcUKFHQxis7s02txsJbBQtzBBdgV3C/5Pai3s=;
	h=To:Subject:From:Date:From;
	b=c1LpeqaIt6wRjgdJkHkpleMcdBa92uU0HjUYIPvpmi8Y3KizEbJ7A+EwICSHBAxOT
	 oYEf7+bLEG4ouNvcPXkif0RbUIDKVrYccYKYe1pROxoStfxnFIAUfQxkvmx9Q2Xquq
	 P3W3TAnQpc1jfO5wCGOMJjIWNtmvIm8fDIg7cmrV2kJCrA8C/u+EBa1+Uc8vpx2mbS
	 wP2YA/AzUF0XmNTzRU5V0dOMh8879iwfPsWf4dC7J+ABW+1VuaeMbng+BL/JFAT/L2
	 7pJspgQTgZOj1g8/mBE6m0Roh1QpCDN67GCOB/J2ry5TzWnK0UrVop3GCF1D5GfbzI
	 LATbEqsYU/68w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7D3C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178948923368.9476.17307036010868985296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42bb300b9394ca9768a4f4387bfde595f7030df519f45d699994c212a046f084
Date: Tue, 15 Sep 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789489233
