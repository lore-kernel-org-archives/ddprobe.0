Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE2C923B616
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751492993; cv=none; b=pyX3Sc+lEu23RRGb7K2wfxreWnrorUTWpbwtXXylxabDdbI+hir3p3/ZodfSenUenqXZcn8enBqpFWNciPtjf2QHdDyCd+HFhb5TckbiNokV7aZrB0Q6tOgUjRPR1c7O3vZV50XAT0Xw1hK0ESm3D/zms7C7ql/qalItas6qOXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751492993; c=relaxed/simple;
	bh=6tKn0nPEwjKXqyL1WUmG+FqKKQIw6Yscgp1qH/5QXmc=;
	h=To:Subject:From:Message-Id:Date; b=LFJZhQo/lA72d1FXqZhr4ZpXx2cKztrQmlf2DUYEHqK49nCqLwqC64A67CJuokZ2Q1BnPhfyB+qmBQaIrZjtGctzUTnTG6TgiavbV0eqlA+PlsxE/dNU/obWgoW/xj/jvVAsjrPB8JTexs3czMB8U8qb6s1n+By5+50oGrxhnrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qioLb40h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qioLb40h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F667C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751492993;
	bh=6tKn0nPEwjKXqyL1WUmG+FqKKQIw6Yscgp1qH/5QXmc=;
	h=To:Subject:From:Date:From;
	b=qioLb40hxgWA0mppKL3fPLU1Eh0orFWINpWuHL66wsA11JemCpCQOZfLSWsk6wyFT
	 Lxjra6tTyK7bPh2UsqK6xUmNom2gsyTqByJlM7O7kkjl4yWYF2JOvLzAmQyvcwRkLk
	 W6nahS+PWrMsf746BiW7PWRjRvD2/tl9jgFwD4nyyIZAQzC/dAztKvwxKurr8uTZd6
	 N50L9EItX6tgJGY846/5Y+Q9ommmP2kUSHuVCS5gdV7H9ovW2iWpA12UlVxDAt5/YN
	 xVXWL/Putn64ViWAOfTVrLxqSX0Yp9TZMj6G8eP16lvjXYeV6K3EDsexJ7lPkGmf3C
	 2AJFUXHpwpCFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE74C8303C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175149299358.2084.14140455450884787963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af343548ba1111c846c6ecd69ed01c3ce73ccc0b282d1bf5c746f695da11de77
Date: Wed, 02 Jul 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751492993
