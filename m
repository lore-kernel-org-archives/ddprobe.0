Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BDEB21D3F3
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772945694; cv=none; b=PFJSlf9IUkOOVZBrmPYWmIm3bOgxbjNW7VQIdtKbBiZ/WViCPeZFpLsMi8hK47yo2aoZ/o0junFrry4RplnQT6NW8FE3WfOou7yhydriUcic5xO+XJM0/hp5QDUyYLCGY3omocDC2rJdhh4vzU8ltz9KbAbjEJ78/cMfnuWE7/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772945694; c=relaxed/simple;
	bh=yN2HNmMxxATL5of+p9poeUuuUoejvuFMyNfChD8l0I4=;
	h=To:Subject:From:Message-Id:Date; b=fp+RuvufdEmQM3tfErY9yQaCC4cwq3gkZcCGjXmO2mCfim3ip7/77LEd3hEVDgnllhkWf7RIhcrXq5qlkyaF97AKVe4hvzk6z6P3H+SpF+YNiQQ01Z4qwDLQfVYfFwB7amc2m24Q5m1re7qHwyzCL+c0ktDqjkQK0IojFQ/2MO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k6v+Ecvk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k6v+Ecvk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A851DC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772945693;
	bh=yN2HNmMxxATL5of+p9poeUuuUoejvuFMyNfChD8l0I4=;
	h=To:Subject:From:Date:From;
	b=k6v+EcvkGzjoGKzJa+vsMaBoXVfU1jlpmIrPz93imSnPSyxaDEwwKe253o9CCmYwi
	 AAmEsWw93iE6zAj76woCAKQsYn/9qzuF00D+mqs46lg6qqTOtWJi15493qYpXxJdby
	 +tscdF4J+rd15u/0tFL+YyRkrm5uGJZ3J7u6NmVrDvrq/IuNIEY73B+gS8Rgatmeqw
	 VmbrzsUJRtBCHOiOg4XT4BcPZRvn1vY5SMKWVNlE8AKH1Gv5JBP10yYM0MnXcQUcqN
	 b8U72cBc7YcLvG32QX5KHuMrNzSkSKEcFaeis6iuj5WBa7bPxmsb8mji1yFa03x0Lo
	 29tMrZu4dqRcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93436F55107
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177294569358.20182.15931982766776613334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11315d0c94e7bd548c73d41dabe8f8d607193541f956e2a7cec194dc5661a4de
Date: Sun, 08 Mar 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772945693
