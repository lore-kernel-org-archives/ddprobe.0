Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D4B4A0C
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 03:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783048114; cv=none; b=GQ/RT8hnrxEZwi31VCsRGdL8LkYR1FAeRobrBNuRUmFvPClrVoHKwWOdXjoLll9AFPYPX1zeHXu3GgqASrI2OzBnKtL7MCMe2PdeVPUyUCAfcbvrkpxcESrDOheYAgsSXWa5nNfYv3fk8QcVbZezLsTbS9WKJpbbs2oGH8A53e8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783048114; c=relaxed/simple;
	bh=WuaNOefNSEq8q0U/G6K5GlnB9kCnZkd9dJ7p9ludLvg=;
	h=To:Subject:From:Message-Id:Date; b=GkG76fVz5DlmvZ7qiQLs5edPvkDwcc+VTtURz+UM3Bl9bNs0OGdoA4kYUMb2T6tDlZXybdETf8u43bZ0dMuagls10FxWTamoW3vPMmraXLQE49OjwSqVD0msDboGO1QRMSKTnXYRO6KNoPL/pyxvYAzfco6Tmben+PVeNJWYkOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojrEgkpX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojrEgkpX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E30C19425
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 03:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783048113;
	bh=WuaNOefNSEq8q0U/G6K5GlnB9kCnZkd9dJ7p9ludLvg=;
	h=To:Subject:From:Date:From;
	b=ojrEgkpXMvrgZtk7OJC1jgxEfiivEWwtHZFz7h8vZDzttWfd+DhObAiaEg2vpHqIc
	 68M3uLT/gFu9D7RFTQ4jqPg9j9xfWzRsx2SG9K3Z38ObSFb+kopSE1qU80wUIX+GRB
	 RM5N2hilPYf03GxsQlu94035/VMH7+MLKlfjElWu5pDdlUMktr3wIDJ4RlEpemTJTr
	 QP0JZwGxleB7mMxWBuoK6gIYNl7/ywlOkdPNLQkBbFAT9Fmvw44uNfpRehfgPE+cAn
	 D3oAFF9R6Ft9Ujc8Rz8RvKvF2iUohpihFHIkWO7PsX8B0+1Waeb9GM3KymKZ/plPDM
	 5S4MCBVXCXMLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE3EC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 03:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178304811368.3155.9814159732463641066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2ac417bf59046a48d23bc24b69279d89a770ffe8d092ea426dfbf21bad0c58c
Date: Fri, 03 Jul 2026 03:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783048113
