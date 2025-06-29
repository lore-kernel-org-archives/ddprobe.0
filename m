Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADE91494A3
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751180995; cv=none; b=ZHL4GRjDEiTkPbNrHSmFEflPXdlGqL0Jf497vv0roSBQLWU+uLGzEb5P8fDwIGr+gX79xMDUT4u5h84EzLt8uquel+AkSFwsHZuW1tP8gTZ4yc6PBJNK6JAn7iQJ9PU/SY+lnSJMr1wTq7agwrmqxnyQEOmWWSUILcgJb+v9ZpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751180995; c=relaxed/simple;
	bh=W8F76IXYXHavnUEFPoRxFcDM5NBpxfjXUwDIGXveN0E=;
	h=To:Subject:From:Message-Id:Date; b=pcRSCt4VHA41oo6IjcoQe3xd4cxETv3jCXEIvViNQBUG78isJxmGAIFzvx6ZlJH7AomHdDIyyO581zmYmstcZzHLtKruH4oWyTmlLrFFtiX1EDXOr+oOk7HuPA6EgdUhKtsITtKhq36LQ2Y7fFQ5vhyKvCgLnsW4GhEcSX3URS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gH2eufM7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gH2eufM7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D69C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751180993;
	bh=W8F76IXYXHavnUEFPoRxFcDM5NBpxfjXUwDIGXveN0E=;
	h=To:Subject:From:Date:From;
	b=gH2eufM7nI0RGMLK2vX7eUNLOfPH6FmbHlPWK9oMN4e8aVmlZah3ufBiF9uCHW4rg
	 YC/aE6y726U9gTQh9F0dI7rkjggCIxx6GAAmTozfYiJQLivpSfk5Bi8PcoVokgqhCt
	 dDLm0sfgI9ORzckU5AAOwiuwascI5r+D7w42ragALX6MYcAXX36RDiakuX8ORNREYm
	 jwxaKgksjoir++eavFlhvqabajJaPCFRSCxKnqZ6xh+Lk9KtvdT6fpPmd5tHjKtR7b
	 qKQ/4k5YXbn8kYm8B3ewVHUJKlYOTjrHsAWCq1WFRDkMpF7WaC1wURFWUBqaDgE3HF
	 LSxfEmnnWLihw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91716C7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175118099357.14789.16641554590800936660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59c79d70cfdbd36cf2bc02c8b220a1963069b51a308cf9fc0cd88ab2485c91fd
Date: Sun, 29 Jun 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751180993
