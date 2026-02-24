Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F00F8C1F
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771904094; cv=none; b=PyCyGtEBDLC0OFNr1DBhscCvfuqwY98xTERflQVDI8A1g+/i+F+r5MuX/pfjiwM6/BNBBZ30j+j+Adke0/fweZIXN0yZva+PI3gDeDh3ZkSGK1sInGUB3u3c3nMj2IAWLwcyeGThorGHvN3yKlmqyFoe5o7jdG5VXqbJM9iP7FQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771904094; c=relaxed/simple;
	bh=T+phwIYn3ZHDRm6Hir4zL+37Gd/OpL4r5eAnYOho3jU=;
	h=To:Subject:From:Message-Id:Date; b=rQAEoxnfZCq93fOt6WCS4b3tf4bLbmr0PJ6DK2Qd8lVWimUiGzvhw575uAn1fymjR5dmqnWXhfQIzYprL1qjV9Wa0oKF0+ee2o6EoxSSZuddHp6qPsRT9tVG+ivAhQ0AlzjtB4riObynmVUowtbBGKt7kTqaeKBKa68DPlDOC4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNuMYOW4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNuMYOW4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A470BC116C6
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771904093;
	bh=T+phwIYn3ZHDRm6Hir4zL+37Gd/OpL4r5eAnYOho3jU=;
	h=To:Subject:From:Date:From;
	b=GNuMYOW4ulWl+CsVExRxUE/+cUJb1lTgzwUVA+eY61MpTTIvFzB01zmvj7XTJB8b7
	 ddnsPz2AngFbIQmc4RYH/RCsNeOMC/13gS1pqwbdQVUoGretLzi6yC1Zpr8eGkrZFh
	 YYXlnH19qPpJkbTb9GdOKABKoctqLNPXI2FC/OFWLCLg3lFJE/NijDaelF1+UUA05A
	 /rx9gfDSjrar/UtY0JdVdN30SUCx3MijlVWmte9VcKD1tFp7yGjqDRjcepYp4lwI+X
	 1pG+GjD56pmRm4MHZi4GEFwI+Lhs10duXELy/C8BU5mUAv5pVWznzXsPm4JS6ppxhc
	 saNM2LmstkI7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F51EFB7E5
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177190409358.8318.12954285407242777504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f2fd3c2956211d509aacf2d105f2e559de1e00cb626adbbe90cf7161d5d9f37
Date: Tue, 24 Feb 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771904093
