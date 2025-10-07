Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39216182B4
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759880994; cv=none; b=Q5LQJNQu2uJPxkUzCru3v78B8Yo9vaTca7yNzYn1OBZaZHKkW+XvxdW1xrxKiXus6GyqTo1RHrVAHMR/1V5Pa+dZRrbd0NLNgvZrga4ZzQuLWlXoagdjm4I/Y1S4z4pt4vFoylmZ+EF29ai/Ok2sokRMQ4iafcXBKwfWZwAze+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759880994; c=relaxed/simple;
	bh=d69wTrLvVsoXxpKEBC8RmP5LXLWQ1TqpNOeIHho7C5s=;
	h=To:Subject:From:Message-Id:Date; b=N+XlkV2WhKvrHy+A2AaQrdweiDRR/pU1zyomdKbO73qNvssE5JarqJjGEaWGVJjeNVSHy+BFX7zNj0ehWQdgleKoeHLCgeHGhAtAk95l++a570u6FzFZ7wgkRyi97PrMdgT/arAal37WAa+QMn6JunhNKMmGsBGCC5FfnCzcSAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJmbiMn2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJmbiMn2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E98C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759880993;
	bh=d69wTrLvVsoXxpKEBC8RmP5LXLWQ1TqpNOeIHho7C5s=;
	h=To:Subject:From:Date:From;
	b=qJmbiMn2JdfFblF748ZOOixSKGAKggixKWqNm2DQ+nl9jz3gPmIwbOLagePmKpBrF
	 sxa6EpUYqQ/2XDdyDwvAApAe8ZmugrnktoFICj8iwWbOrol1XNd9uxCk1LBUYHw1oe
	 wBVyJMcDV9i6QrtyN0BifY7w13J1eAqrWP6qhx6wWF+VtJMYaur9BnRhKPqwSstNe9
	 hVnZVe/bZT3as+m/W/xltJYKCFyemMhITt4UlhbHs6V5YNtwY+bmG/Yb2gjGiM2+hI
	 /hmp01OUAV6pRleNC94mt2JO0j5/Bjc8kDsViiLQD9HkiKq9N1kM+huTzsk3RjxKHg
	 HYIlrvhQ6Sc0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E98CCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175988099358.32721.10583970398751959682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf463bd32ebb5706b0c28693d8352537352b8266f65ff179b9efaa27f8bece69
Date: Tue, 07 Oct 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759880993
