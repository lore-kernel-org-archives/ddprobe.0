Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605711869
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 01:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713318563; cv=none; b=HUSlmMH+BrGfvTxutzT5al8st1Qwmbuh71FA4Zw1Q2m+fvZ2OUQXIiow+RCNGVUOTDK7D/NEmcqJt+KseaK4ZLofxkPYVnFkQ0fbtSyUDv5RE/yZytkkI7nJX8QDlU3vOiP1IuaVrfqM2LO1KlL+vj8oj8yG0kCpx2Ieut8H9L4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713318563; c=relaxed/simple;
	bh=kwNbKyRbs0KSwPDRBotWQWlgVJ5wuduxPVvIlHr2cSM=;
	h=To:Subject:From:Message-Id:Date; b=EguuI7HugJKx24zFV8OIFiiyzX9l5m48ERxCDBPZo2Mx0GmkYF1/XKLGi4vrDyPWZ6HEYhV/mcPICJiZRZcbGBrud/avNB86eltmfukWHJaHj7UcTR6cHCEjXklOyqkat17Sh8VHUek6niII5ChDogjiEUG7R1gdzPTvsDzoBg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5G+BPae; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5G+BPae"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1E16C113CE
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 01:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713318562;
	bh=kwNbKyRbs0KSwPDRBotWQWlgVJ5wuduxPVvIlHr2cSM=;
	h=To:Subject:From:Date:From;
	b=J5G+BPaeWvsYuzd2+4Gryyr9JPhPWXybiXh1sQOoUVkwInLQxAjG+GNMqTk3WpDGj
	 UzNz+EG16WR9ovfnsfSieLN2F74mEJkupLcDfgcqp0v7OORN69pYXlfZ7Hu67uwFg2
	 rfmFClao2C2uERQVkwse7d2qF5tjFCvDPepAdr4TVlea/1p0eUEUcFoLSEh9/v3NtJ
	 er1RFDk2vE3UkIUQYdHxwHB0DjqPCYHyNhovxh16ZKY73ruYznjUTT2ahoLEMYxcia
	 8LfQRhIdywTq0WIemU9bNpMas3pzKKVNoYCTp42gKrd6GuDT/VUREeP8iCLfvU9y1N
	 2gUQgA2wLabjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C91C1C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 01:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171331856281.32488.2316236654474538337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef34e7a64b737bb8376423c154a3f245020d91b03f04fc25a6b6981f1ab3321b
Date: Wed, 17 Apr 2024 01:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713318562
