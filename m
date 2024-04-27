Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F2B62E852
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 02:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714186343; cv=none; b=ievOe0o3aMPkeKY4i9rzQlvMkRSKZD5/cTZOhf6tESjkrWODUHfzrMxqJObIS3pPsNtNO4ebdY5rgVPn8MymJurYpFDjgMB3uEfnH43rToXL7Pm4imeDdBzpWky73LSCqUvOq2Do37H8j4eX8U5krBa3zryUz94d0Gfd3SWASTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714186343; c=relaxed/simple;
	bh=6CNWKyTM+5oqpuecKUb7G/VpEe4XHEHShtUDWC7+wkI=;
	h=To:Subject:From:Message-Id:Date; b=p/zXKKt0n0ANOwTZutEdMunbl61B0m/MEYuAn8FsZN3PEAZwPgQ+8tiZJcctZ8ufIAodwi0cPPbQSE2JuptkRBIJeuRARsC095r84xUBLuvlh/UsJlb+2mfgQy5gpmx9qJGVuqSXImzTGufVi2sPcvsbTRxAIfLYpEjKsRkhlnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/VnPnra; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/VnPnra"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA0CFC113CD
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 02:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714186342;
	bh=6CNWKyTM+5oqpuecKUb7G/VpEe4XHEHShtUDWC7+wkI=;
	h=To:Subject:From:Date:From;
	b=J/VnPnrajKA6r+YLxSehmtDwykg78YOUPPG/e10nkM3uRoYEuB5QKfDqD6zsPn3sD
	 rYR5bQj1aLblymhCjj1GwoePjXz1afKBPY9IIgYdXaYibp+SZqkTyd74zVzCUDm//L
	 oFjk2QucNyF9c4+h5yyctORreLSPKDDG4COIuSk/oYtEY58ImA1Q6sY2YOqc0UDMw1
	 PTvkF1m4TvopxGoZNvaxUt5mBQjOEx+6nLyZ4/4VPWh4CEJjJvBlDkrRdgssAiYdfF
	 MlbuCkU4fK8VINf4nnA2oVUQMGVEl6MASibGa97fuh5jVhSNpgWX1p20F5TY4oYxC7
	 +sgJP4EsF7bzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C45B0C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 02:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171418634276.29315.13628883261710265737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c69a22b818ab34273f33ffdbbafd887129213fdcc669bbc30fb6ea7e388e4477
Date: Sat, 27 Apr 2024 02:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714186342
