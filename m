Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C15A5202F8D
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749835193; cv=none; b=eN0cWu+9c8nCPoefrpVhm5mQ1LN2qAuuOC9vZlbKf4s9nMa+lpXs8goe69721V0FyyAOQOqzBOPni1kaDtvFiN+xcKEGFf4yxZQdjHmd1vO+rYG1SfmpQol0WoNj4YeO9E9LUjYm3vDJIzdrmVXjTwFc+LRNMYJZPJ9DbnCRl7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749835193; c=relaxed/simple;
	bh=LO+Ze6/b4twVFamhzN7SIq1fWDCG8pWGQL4LgBP5/P8=;
	h=To:Subject:From:Message-Id:Date; b=kXwapypNooj8pNxI6OzPeMQ5pcjGJkBZ8cxWci3MKgQVVx6l3i5xBgpHwGyQohNk5SciWM+U49knyfoAeyWjEzYwMdJCuHN+PekoYFU3pYlUBnxtCLgmelKyXb3eDLgAh05kGmG3vYnTFbs3nrw1K2pxen9tmPozxn5O9dxsNkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+fV8j5a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+fV8j5a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB54C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749835193;
	bh=LO+Ze6/b4twVFamhzN7SIq1fWDCG8pWGQL4LgBP5/P8=;
	h=To:Subject:From:Date:From;
	b=c+fV8j5aT3LR9AwgMXhuAo1kSK33OEw0ARayGEu2FuZmKLF+2RnPXqg27VuE11d3/
	 YGGB72T4c0IJUrRGyj5ovY5uD0WRS7qXq+5jWnnsuXt4sHeOsmdTOBUe+kdojTNA01
	 zopBXxcGGZLJR6bn6HVHqvA/oDw1i7u9dcYM+JzgxKu94lQaFBto3tMaxXoOsdgG1K
	 k28THst4vqXnfuZxP1xCgmOwEZ6zUAjp2H3WQrN5+3FtGrpumn1NUKaBTIft+3UQOe
	 dYuDld66egGQZOyIVajCihiC3n+qN8FQ3xVzPl093C7GrUjiuYLLMa2U/H8LjD1lDF
	 oreivgKdpJfiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5EBC71148
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174983519358.21627.11984032853216587329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42581c40d836beed62db6a6e0a68ea8b5cf08319da80d77e8b8ea29b60c9ea2b
Date: Fri, 13 Jun 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749835193
