Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5097046AF
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 11:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716462203; cv=none; b=J8IqZIw7Gz44V3AJkDTUGOdKGDHaJx3KC1eewKU2wiEc98SnHWSyqWJho7LPyJWQrGfD+zneKCABKT/CoR3YJbDav7g/5+93O4pk77kiioQK4us103C06d/TwOluL5UwRgnAGHdWfPXEbXG3AigUgrAkZPP7cZFOgzoRXbohGS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716462203; c=relaxed/simple;
	bh=D6VAka6AJDc0zIJuCWpSMrYP3BJKRL4MQ9vFRdrf6vo=;
	h=To:Subject:From:Message-Id:Date; b=mObDcTmKwyZi+0dFJxVkqFCbEKbvKNZ96VqfcYB2aiy5loTuGgWI8Tso9TzcIlpFrorPCDkyZqrE2dnI8lbPcAYpHzhzOIQsWDG0jgNFPYy1t0OjLC5XAjFQV3RrbxDr10ijWiD55HnXzEK6JBbKPEtmhouYO3vnyFbRT0wZUsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KseXEn/w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KseXEn/w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE794C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 11:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716462202;
	bh=D6VAka6AJDc0zIJuCWpSMrYP3BJKRL4MQ9vFRdrf6vo=;
	h=To:Subject:From:Date:From;
	b=KseXEn/wGswlQXbh+ZL9tREj0sc8k7NR8iTLn2PS7AjKhL7LHP5E5gYe7Bh4E0YMW
	 4VyJeDWu4evYAG27D6fG00JHpoo05SggliLU0BtvVoHEvkgWCs8reRHOPJ0xhQUVe8
	 FE7xDsS30SIKLu0HtqGb7QvknTqnw7dY1bzrFquYDN6HPkjD/1ZTMp5oCH4Q1FSipk
	 S9pkg35yCeO0Wf1Qb56R1eeU60ePZSGxKKhUzq7XJxhXx/pHuGUjKIzNgMXibdwKyJ
	 1xYDt/8BUI7aguUcaTVi7E+d5U9eM+sEzj/K88suyAGstrP4QkeiJeOHgAKcPQQPLc
	 F/zEHeiA+dJMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8611C25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 11:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171646220281.26061.9208785188678755256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfdc797946ab91d0523b29c3078ab5278fb56ddec6389292a5e1e86a3c682185
Date: Thu, 23 May 2024 11:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716462202
