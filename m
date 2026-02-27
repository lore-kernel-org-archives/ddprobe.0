Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166CB36E467
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772218494; cv=none; b=YWp/mS0w7DUHtnq5z8A5BDaNv1gpqAb/O6oNrya16ULHvC6nR5nchyHPFikBIwcPRLYMrgURPKWzoBmpWy1A8RUSPf/qTg7wStK+jqX/7b22fZHNUwlSSGOcx/KwSpX4vrX0YL1zHgnlONA10AxoNdq5OsKYOviI5APnJQ8WckA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772218494; c=relaxed/simple;
	bh=QEgJ5gGjDlu9YD4vGtKBecFiAWsvkh0wpy3kxBkIbgE=;
	h=To:Subject:From:Message-Id:Date; b=rNVLKOZ4383giFbP7jwQ4RsuDpRFspZLYfnqB3o5sORmzShJE905xjiXoJXlopdk7cLX7K7icR4/XOHTSptJhWJFaKD3VpIwPP+bPXgRcNcrcJP4rcv5qKumGrvwUuiA0MNnU6smeOxe2HnOED4LFxvmf+qDE2fqQT8QnemLPyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FwOSWxXd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FwOSWxXd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFA2C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772218493;
	bh=QEgJ5gGjDlu9YD4vGtKBecFiAWsvkh0wpy3kxBkIbgE=;
	h=To:Subject:From:Date:From;
	b=FwOSWxXdXDCH/Sd02DqmYg0hIUDNoOdR+pC7Ar1Z4rNk14d588ChEoi8R1onA+yzP
	 DFt11vXz86tXK92dZBfpKdfBLo28ixzFbmtexuTRGkbTV7AoTowqsjw5s+j33t433t
	 fCXNPJDTwW9PjV4MtUOOSDoetkJ5N3jTyf4xvkKp9SeP2w8WWt1ejUwwU5HO4QWY4O
	 +bq9kH9T2m5/Fueg97b5BzqnKTfDm7TYtpbgIEaENWIfy5lxScJ+gryQqejhONpsGf
	 YEvDDySHNI1B44vdqtsbvZelKc/OhDzNsqZUmq73BqUDH4AQhLBoSBJW9Io0DiqAuy
	 mR2EtaBg8GTqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC11FEFB7C
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177221849358.23671.14841567025983156143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b7db60589d07e933b99992a4ca5bc2ed3de714a40187cbfa4f4584833675400
Date: Fri, 27 Feb 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772218493
