Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507BD8460
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744750194; cv=none; b=fvW+rKIhnvQSjvgJ3NeQFEQ6IRBfSzFIIg1pZHKJLA2PRvONwfYkLy0Gm+3YhvX9ACqH10Ao5QGXPnhtUo2B3OdFaN78BzFy6UKoPuxTrMfQjwlLRCgn8b6/0CE+EAaPJZhOrABxZ+Nb3qE2D7gcn0buM01OJUKPz9A6qDNN0Bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744750194; c=relaxed/simple;
	bh=5ME8Q62gHJZSJp8gMfmYAMp6H4RUNnsYmXjxvv0Nrvs=;
	h=To:Subject:From:Message-Id:Date; b=ieCqxHcWkjKGWwvHWrYp9M3Ks4lcIjlqUsPg1apws4AtvxAPCy0m2l2Rctkfu47xORmSuOuMO0nm75HTyx0FGOgUPtBWE1OxlosbM/K1OEdwB4pBvcXGQNmFNf/PYHTE02qAvExOWSJYSQz8jb6MlmuYWnBndfyA0MEaFQEtpYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QmW0pp8A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QmW0pp8A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C24F8C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744750193;
	bh=5ME8Q62gHJZSJp8gMfmYAMp6H4RUNnsYmXjxvv0Nrvs=;
	h=To:Subject:From:Date:From;
	b=QmW0pp8AWC7Labbr0wrb03zk1ZDMGDdoyrBTqAPmSQzU37CXJx+uZ6O2WccQpeo3f
	 YhoF0Tf4rxetF4W21eDLeCT9zBNxGF5tQNk3EwFxlp+5g59jsQxGAqUwDRr5JG1P7R
	 dIsRdmUhB71JI8gGp2DI/7aR+nSzsDdPhgRJVBMV9HTCz4EvYnkjry6WyzaK5UncYo
	 6hupDVSGsx2Rd6zn6trA4yHgwr98CVA4gEos1eEAKDnu4dhMyK3X6QU9129tvibFeT
	 xH1f1nez7mbBzawcWCePH5jQdEs6CHnYSmRHQbW3LOExg7ceGNreAea/7gRwTk8yrg
	 mF4k7VxT9pajQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B35C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174475019366.9124.12692060651798467860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c3978d142b96934644c0d8277e66d342d788937c069d5922324e0d0d8b6302e
Date: Tue, 15 Apr 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744750193
