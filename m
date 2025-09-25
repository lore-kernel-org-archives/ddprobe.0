Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA9042AE68
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758804593; cv=none; b=uuFoFZ5F8Ww6loyZx6oDfs5ivJCuuGl8Et34G53MWwX+jMd4sMtn+s2rVr7hHbPJDIgCBMuPNl5lwLtsNNRwwkvS4cC7pRP/nGrf8Rq8BrRvmDhae+hpI2EYyoAqYTz0A4rUUCG/KL8/xHx+vpX82bfa+IVITx63pTJYt6U5Khs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758804593; c=relaxed/simple;
	bh=rMVzfXIdKC+NSwkogRK+DIeFlpQZfaFoLp6z79g2wX8=;
	h=To:Subject:From:Message-Id:Date; b=mLShBqf7pZS19cGsdUTXK/utikvU7tGjrs1DqKq+5Q2CS8FCoaF1u8YXl6qoixr8z+xDtNhY4L1BnaULyFjNi9y09Qr2o520f9qsRbVosDctxELG/QpL0qniUs5UHFWfzLUmw2BZYbTkajVhAjrGnh+wWpRr/gBfdqAruDJ9Rwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QGMC8rQ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QGMC8rQ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A54C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758804593;
	bh=rMVzfXIdKC+NSwkogRK+DIeFlpQZfaFoLp6z79g2wX8=;
	h=To:Subject:From:Date:From;
	b=QGMC8rQ2BzFw7w/ocHRmRTuYiQvd5ZEQTZoeC9ZxRQWX2DBmba0nMUBVphAxz41Sh
	 7kbfFFkhmMEX0xPwVZ3KeWi2R+RAIYVYcAJeBbcgSF9GloUhDXScZ67z5W6V2u/0jG
	 2vZbgi0gA8L6kY8aXun75JRYvd47Zyi/LpaHahbAta8rzrylTNxx0jQDI3gcWNoUNz
	 702YB86LUNLoMSFT8SpoVTOuCSWfiK27HF1amRsnp5LsyI6MzMeY6uZ67l4dkfIiRF
	 UWwtFu4OwbT8J04sHMXr6bjBYidyAW05YZym25c9+MtXKpjbZxm3SYtzCFmtH2o6xJ
	 zG40f0oKU5UnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F0FCAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175880459358.14169.4691504608356076410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46820e702d9d2e099198a1f0e499fa6a01bd810f9dc46f7b09f829f747733757
Date: Thu, 25 Sep 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758804593
