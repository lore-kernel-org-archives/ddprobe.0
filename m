Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531FF276D0B
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 23:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740698934; cv=none; b=ij2L1x1k3NqWD56OfjVjwpNpLnpS07vcnfBCdLhzi3kZbEaXwwKoun92uFVqxKeVTt7X0YXLrkgONuDQcidGmGe6IFenZTTXmXYIhNb8pacguKxICUec1EOn7XD49C/1k5VYpsIUwjIwIOziC9/n0voaaJzhInEEZT9xCBf5qCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740698934; c=relaxed/simple;
	bh=1vcBH9CZ4MYGONebQRSUjoiUyfutptXq2DR+67CzbPg=;
	h=To:Subject:From:Message-Id:Date; b=K2y85UB+9DJCEK1TZ7orQwnw5mo64RLaI7VSi+Z0OW4VHakq5kcRd2NoNrtdXBmiohu3NEe7f/YS7tfRcHpAGuWhe3s5CsLyR89P6IzJDPgBb7jtsoJHaSvWu0Go1zFODWmTtyEwqhu7yM7eUYSRUzkZ+T1NkJfzcXMYluTkz4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6cLG4n0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6cLG4n0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B42C3C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 23:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740698933;
	bh=1vcBH9CZ4MYGONebQRSUjoiUyfutptXq2DR+67CzbPg=;
	h=To:Subject:From:Date:From;
	b=B6cLG4n0n4S9mkHLbtLBrAph/IotCbVmuZmbkZTaglAtItlp+9pK4PNOClGUgffch
	 sPIBcBLRA0mP876mHJFf0QCc5o0Wfl2xiYIoI8VVKZwiesOfqZByLh+7WstghIpbE+
	 5RT+WyLORzW1t2hIlu6SSnF4vCpwd/ofWBXlJOB3JfvlHf7e0zHZx+CJ9Lo0f634YN
	 o/gDRlfQd4wcyfiPQg/hprh0JjZX/SGDeqWkUylEloyoxmLtfdZ6zwMR76qyp3IwXn
	 BiDTyttmALT1rmhgb5MefzX/dm4Jy4yxTQf9FoTmDDY5wBit51KGxhZwG+Q1GUIJF+
	 v9vInxvOtYTjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3D72C197BF
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 23:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174069893366.24041.14468315086576167867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbc7dcebf6032987b7e2bdd402c6cea04cc4eb0b6c785d99cf9cd99e202cc3e4
Date: Thu, 27 Feb 2025 23:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740698933
