Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 043AF3C73FA
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774286694; cv=none; b=KDMg0+/pT4hEekSB5vYOpl9cLiMprQjsoRgesPRxLmOovn4wi8VhIpVfgHUt8598S6xHZNOG2bppbJ+IY5iuWBbPMBFho54ThTt0LKqmjeocXbjRAzDRZ4n/6U3z6p29s/oMSaG2cb4FC3XDG4MIAEMlF2lgIBTsoAGjr+HnSXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774286694; c=relaxed/simple;
	bh=wOL3NE2XjvJEtVy3eJt25HUE2e6nZ4kieO4LeBorJkI=;
	h=To:Subject:From:Message-Id:Date; b=c44ffmW/r3ghAzZL6abmKQP9soEXHzjiKceyKABkfFG7FVs0jbLxkuCxWj+vBoLNHSl7QaCGz3BA40feamKgbV7j83DUlXsj6AAfWDdeZeMlub/Bw0yx8UlqwLA2sg1PuH4HG2Lw1Cps8sCzwRsTMqurOyVuO6tbYDTMfv0efOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OKp69mVR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OKp69mVR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30D1C2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774286693;
	bh=wOL3NE2XjvJEtVy3eJt25HUE2e6nZ4kieO4LeBorJkI=;
	h=To:Subject:From:Date:From;
	b=OKp69mVRtWQZ8EBlCwNMqHdjaVB//TvZLoX0cLn8GOyx4yQCtRv4i1UzRKwd+0mgv
	 SsfahuqBrvN5OTNMw9Gip6qxPRD1FnMdBY56E3DrbmHG8BOIHkhXYaboWCg6G4xPd7
	 q2H/XH945C9ZwsSaVM1FRaZEgi9EswEM8zOZymGFocSeOQapphMNlR1QqaxjjCEVHy
	 FfhkLsf00HIWSec/ukXX3nSmSYxs/hMYBbt6bRwTiLAfh0nFf8onUscjCW912prtro
	 sXz0iw7onYC0WGTdV0aHCsqFYbJANAV0t+fgDF5H0svJG9mT/dyc5lTpG1YblD2qZs
	 91SrN5Nf+kwwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930A5F483DC
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177428669359.26358.11908299397175643020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcdbc185b2f48da2d76db405047b3992f7754f5f93c26d6d887bb8f8cd51eebe
Date: Mon, 23 Mar 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774286693
