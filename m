Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42AF722068D
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771123494; cv=none; b=qxH5vv+B7lArfqMm1DIM2Stt19SYXp25GmmjX+TAIbdo7ZBIl/laDDzcl7qFPktaE90xgkoW+M0CTbYT3+In4118yD9LlP++jjQc0eMKEcurNADrDlYH0do2qzWEc35hVEr0FWwbqK/bLxXtv+EAiBMjQSHIDOO399pgK6nW/yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771123494; c=relaxed/simple;
	bh=EzVJ4XU/Ne5sVoAbm+JzKze+YTbSbW9IEzNwHZRZxuU=;
	h=To:Subject:From:Message-Id:Date; b=l8rzQkaE8YqS4rXVh+/zgy2JM5nGgEtBmUC00XdLESntMIzTzEwJH2HWXIi1WCBr8PyX8+0SVoQw6kzX1V5QGaiLW6uZaiBlgk8CXLLJ9BdUC4iaI6npqrGqR+FB5n0tdufg9LTZqVd0voZa76xFEdIaFiaY//HmIXWiPA2WSlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CCmPbBgA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CCmPbBgA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E70C16AAE
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771123493;
	bh=EzVJ4XU/Ne5sVoAbm+JzKze+YTbSbW9IEzNwHZRZxuU=;
	h=To:Subject:From:Date:From;
	b=CCmPbBgAuJVWrni/ulCZQuosnjgKQ7oxzL1cqZA/611MUKbfqLPk47cWqPE3biruF
	 6URTSf1Osjgb9P/EOidx144U7gFXRrZbQVISAHsp+EOI8S1kdzDrd6AUZWvMGmxnoa
	 TsbagjeK7rJB4hZUf7B4vQbQqp0bBl9dS0yXpE0/SehIoxaFa6XZYkbzHspw3UE6Qq
	 FP+dzqr8CxGoNqEgxR6JFO5tEVgFmXTMRsHHa44MKTD0yCDEqI5e0d0PRNbx1TqUui
	 l02m8FOhY2O9gQshnvBWGq+BcYh/NnQ90ADNZ2SetJ5M8d0Vnx6s8UjXLiHs6p5krI
	 qouviV/zyA8sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4F0EF585D
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177112349365.938.12114906709857400197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 313cd112faccdc0a6a21c0e6bbdff13ee5c831c353287d90f867ac56f1f02330
Date: Sun, 15 Feb 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771123493
