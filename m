Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E68C186A
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755391795; cv=none; b=b2ldETTK2bVae6wzIRSJGWTP8x0vYJqDXumTg6YlmWqcx5/Lql0GtnLm1jSWWLy/yUIPvphk0kjZyyGqq66hZX+0cxpgTo+QcXEpJZsn9Qr72dMgyzmHRj6Kca4bfs/omJI50mbVd1rHq8TPWuOIxyB9hekd3UNtubiKD5sg3nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755391795; c=relaxed/simple;
	bh=8FOuYJGtUVLNCmMi/IYuM/X8eiC1UwGsuWexDZLISQI=;
	h=To:Subject:From:Message-Id:Date; b=Q2m1TaAcZR1mPIPDR6Jl4VbAEo8im6iK8qBhNhS+jAJNpa7Ra/0HRjPrkNAJ1YdAWS9jm49mB93Qm6rfdqvM3IyehYX3aPC2Ix/MYnV45iHG1CigQzOSDopPXkDY9nkEo4xVTNTP36GkdJklVvAMl6OKMAKF9DCwvpxHcc0oZOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPPxJ7RV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPPxJ7RV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42C1C4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755391793;
	bh=8FOuYJGtUVLNCmMi/IYuM/X8eiC1UwGsuWexDZLISQI=;
	h=To:Subject:From:Date:From;
	b=UPPxJ7RVTL1Tsk1ppSaIv9H4Gy+W0EJLjG8anz6eSdtFuAZBpvjcRtis9fjOU8ppB
	 f3pfMxWPNLLEk8VvidxyliFQAVVNNWJRBPoBb1uh+5pd7V1CC1isvNZG+glJACMJJO
	 hbmr1+UiUyMwZtsDgGewAuFNOUfu4B/nVYQ2wJ7vgflrBHx/JNOAczTMNfQcE2TOlr
	 q9kV7hKyaE1zh4u1W7o7/cZDa4Evm4Qe1P6COmqrZoJhXXVSJxQ7R91FZUu/fmfaXW
	 SjJeRzEYXQDeIM2Uz7Ui97lbP0lxkM3in4MwL8hcpw2FW1QwhPr34EIInbOAUb5c4D
	 mwqjAsdqtW1eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913C0CA0EE6
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175539179357.21576.8029455254291165004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bd9d64513ed4e3dc2c81ca5c977f8531f856014a0cb4735280adefd09c98589
Date: Sun, 17 Aug 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755391793
