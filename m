Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BECC314A9E
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 21:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777154254; cv=none; b=Mrc5x6VsqZe+RK1WYBzE6BLr/okO2SQUU+xvx/k4PohCWbh6Vk1sm/+Not4CUp7iDXD2cDZxbiD9/ZsVOrjKEmV/31HORsqz7l/K+NJazQTzGFdpmJ2A0WxDczF4y2tRauv4CfesmaRS8Yw9O8DpGTppkUG48FAEj9bKRJboBBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777154254; c=relaxed/simple;
	bh=v/fRn+QR+zRpkcfUEg5om2ZB/CbSlKqRQ724c01++SA=;
	h=To:Subject:From:Message-Id:Date; b=XeHDlOA1g9s/kfZnDqNWMu0ihGvtDnblIoJoGN+3/ux5fae1b8/JqMDr7gOIdj7OjP4UT5HMeYjL8yFTxj970bSlQ0FGX1fUqwKvLDgobhlCOu8VdUrWVTpdWj862sjdX6KsHLMoXgUEFSJzb1m1ZufwxvNsNeDmoIdvRGRRFLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ejjrvmK7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ejjrvmK7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAD9CC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 21:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777154253;
	bh=v/fRn+QR+zRpkcfUEg5om2ZB/CbSlKqRQ724c01++SA=;
	h=To:Subject:From:Date:From;
	b=ejjrvmK7PIkDHgivWFQ+VyU4kiuHek/boFZXGCuB8mrzakhL2Jp2tvsRvkgb4HWHC
	 VLDSTCjLSE4vKklnf3VPzfRZtbndmLlxkDktn0EnoqYddk1xeSul4FbqwxJt2tDYvU
	 Bo79DoAAK3aJ4IDxqe+Zyt6yPBGCt9I3tMeIs81RJuMblz5n39yqGzC93H5IflbF+L
	 eYIcs+6Sl6+DMQOVNO3fBQ8IiFuN8C5VH1FywkXllxl6mRkk70sMw64HN3T8JMRCZr
	 PTg2F03RiEsohMkkYq120tFUodR7I/TjEya269FQ7DG4j1Fjc0d9Ov+qLm0wrSRASO
	 VYCKfqiwO4GvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F9BFF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 21:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177715425368.29131.14248701732547768854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11782f68a254aefa672bba88091fed1653b5bda3b40c48b71cfb0be01956144f
Date: Sat, 25 Apr 2026 21:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777154253
