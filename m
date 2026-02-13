Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E8F32AADB
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770987894; cv=none; b=BUThB/VdDA4TiAN0SBgrjaj9bxGnxmj25X5m0t+/dQ9CEWBE1M3zDgrHtB0cUf62N4uRRBYhr5OLbvWnbZ6V81SuhGRptDBGORKp5omuxnzMDYgZL61nEmixBEdts7U/JF48/DRubheg39k2pn66IIeo2/WmTMGfg/aSpHIf1Do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770987894; c=relaxed/simple;
	bh=hqjEIBVKSqJTKc7vuxz26MpyuSwckghr+AltbAhPEUI=;
	h=To:Subject:From:Message-Id:Date; b=U8aYpxVJ72OULlxGboJFULvnz+DsNA5MDDTryXP/sajdJa5pYAJyC6xz5q0mgxhoQ5KaVLBfG4mVdpKKJGsAPNp3tyA2JuwHAot/Yjsll+3er+bTy04/FMAkHMBhzgV4pAb+N1n1KN1CMNFSt32oCiUXAiB1Z19jtn1njCIZxKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h2weNusB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h2weNusB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B916CC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770987893;
	bh=hqjEIBVKSqJTKc7vuxz26MpyuSwckghr+AltbAhPEUI=;
	h=To:Subject:From:Date:From;
	b=h2weNusBQsjnQitN8gkJ9keC9/zunb9/J08VIIs2qgzlGL2XR15/44aQyo2AUjm6v
	 PlvdV+zhN8W1la+l/+XH6BuF8xXk7NJkQK7RyrbsXySvGBjAleqSU/mn2s/dKyJ6z9
	 4d3WC+/KVDM6ib+o+YZ1bNRN7sF79OTg/j4cD/oGBooWd0/ChcSPIMk71RTaoJImuD
	 mPJD0bw225depnL5TGkZ1YTPNde1ZoLF4KPj37eDhp8rz103OEHTlT5OBoeFEgeWw+
	 VEKhl9wpt4zfIDcNFvAaYxIVO/TY10S9aBH9U4NC9sW9zZQDY5ay4E8Z9GMa72pQzC
	 PtPJHcMdszdag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2F9EEDF15B
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177098789362.24472.17671571492925690498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a11cbc19f7ba3a25a8fdcef885255c76b539165def172c3e54a646c1c9bc8d93
Date: Fri, 13 Feb 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770987893
