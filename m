Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B3B1AB6F1
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773593694; cv=none; b=LWSxjBI15WwRywPjTbBlLiYGav6SLUrIPIqZ0KvZlGz97mGnmQxdBSikJioqMnjesoy+QlGDd1unkNy94bQsh/lcO6tyJsL7ThB/oJCVEfgjD6uuyG4kqQg+9WaNIQ8eSTokoNbY1VB07+ftzgxMHei+f9U09uGYUNj6jVXhwRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773593694; c=relaxed/simple;
	bh=RxQJHugeoPKvRky1jr9jdQSlOLicD2dDOXrJv7GkMSM=;
	h=To:Subject:From:Message-Id:Date; b=SldvaOa4gQSqOsoW/oex40wzqyn+GQU16zdATykRBz80EDPXkErYHTyrQieVdmbj/gsL9nvEwLzEsz8buW0+jdJ+t+dOh+bPHUj/tdaXsQdqqtZWwbXZgJzcOgw6vyRm+8KQscCnebquzaPzco/N6V2o9WaEUm3WwWZlEuxQVNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C2uIZPgB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C2uIZPgB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE12FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773593693;
	bh=RxQJHugeoPKvRky1jr9jdQSlOLicD2dDOXrJv7GkMSM=;
	h=To:Subject:From:Date:From;
	b=C2uIZPgBX36mYkTWP5Y1t/SVlMoqjIG4VhIQeDqZ1KewnWPneAgliVeDVwVY4XLoI
	 oKg2pae27voURtIuov2tsAG1Smh/4Gm1XC8M3bgY8EopID3RL+evrGMBFEndzEgvK6
	 TpAlbadbnndmaiwReD8lTCUtw/6FNJ2h+FiE/cZGPcOM+pPjRnYhmG6/y2K/nW0aWo
	 pY0VuIXp7XsZiX6j/l26uIOIq/uBksjvbxbatqUUYPkGWK6GLWDMKxkRGhpWaKtdPu
	 ut6eWAyi6Ov04fOX7ccArhS3d2RcvjyftGlFhS5sngE+GM4zolpEh9xsvlNBiyT9Ho
	 rdp2VaqTpoIUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C307F30271
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177359369362.3188.6911908167118444127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b78fbb1b12e156f388181547b4c73828ef51bd5fbb7d363ed73d28c19ceaab3e
Date: Sun, 15 Mar 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773593693
