Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE2C8C0B
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 02:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741489135; cv=none; b=bM1043jzNag2H8EjmoefQ2+IQwnwNoZRs+hvkIdHCPY+RkGJAG8l8fkwr8hSqgPG/qNF9tB+DA8ZxWFTsvKRE3GVMwT3gVNMKlXtxI8LSrjEh0hXGoGw+YvykrKV5InfqqwBiB6GnzD5i2Q+5DCm/yMbxQrpm2yKHpszNCwzcPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741489135; c=relaxed/simple;
	bh=wqk6zNY6PM5J2K7X4k0iHD//FFq9Gx6lWcjzRyUT/J4=;
	h=To:Subject:From:Message-Id:Date; b=Bk/xukCeJubfz+TtJVD+rwedc1heaJkwU+6cQGVJJIaIOB3J4Ytam+Ymtec3PIBUyl7DQNyRB/Di689KXIFGOTLM9YflKzHh9cAbvV49z/szS7mOB4WwiztfyEZ96XZq7LdJZOBgRSaEIMN8klT5WPgsktDPm6ZRW0wsa4facqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f6nuLO7K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f6nuLO7K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C53E1C4CEE0
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 02:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741489133;
	bh=wqk6zNY6PM5J2K7X4k0iHD//FFq9Gx6lWcjzRyUT/J4=;
	h=To:Subject:From:Date:From;
	b=f6nuLO7KLcpbKxfu7yfsK5swLJBcageFPkA2iHYApenvnsOOfPVnmQBXyCDbeqGs4
	 Cwmo/peOxGNjF0/SdpzqMbe0H7r+LXw7Nn+gpGthSBABMsXbMAY/neYMUtryfcLdI5
	 ZLIdOMnGj4f0XfM+Lk/n2Z3aXRGcNSIU8/XDUYUXMdtBpf4U6uwlVzYR0qz0O30Hh2
	 VcTiEmF4CvVVpPdu6TKSQEVSFCrRasf1/9sNpVa295/2pakY+3w6TZ1V/gRLH7boEL
	 iEEE1bLedKyN9u9qvSWVITfQP30zl0ZDEkKrP3jfROQCKZzMgTmJyYPYAl+3uBWH3N
	 OB/tKgTm0XqKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8639C282EC
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 02:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174148913365.26220.17398466418361892891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec3aceda89260bac5b3b9cd6f4872e53787db888b5245642eb8c78093285a1c1
Date: Sun, 09 Mar 2025 02:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741489133
