Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0C71E7C1C
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744235995; cv=none; b=mI+9+W8EsJpzLwb5StD+E/EJykAJqRH4EvA35pW64d4e/k0JOb/1z7g9ARFcNcyLgGmL/4vaRrK+c0h8/RN0ohs+iwWh4lOW9tpappwjSvD4btv4t/EqLqD1TXVq9S3Wj8MmgrRTtX6KeeMMaY71pAbuUQ2Yg9UL1WnTyFPyOJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744235995; c=relaxed/simple;
	bh=GH16ZBxmEpLop0qfcqMsysyt+BjmogbWFldjRA2MST8=;
	h=To:Subject:From:Message-Id:Date; b=Ar75xHoAeeoIrnvKPCnV7Xj5jk17lcASF2AcvDyLcyPDzBbnVdXHb+noPIKIYCdHIFJoz5OZHqM5Xnxk44GBgqmoRcIJDrkEtHq4iDZt9021dHMgO2N2iCz5UP39wsrvLLycyDVkIBKXGfhU8ggUhDGRHSCYzLpHMCutNH5rzL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUXX57OS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUXX57OS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95D5C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744235993;
	bh=GH16ZBxmEpLop0qfcqMsysyt+BjmogbWFldjRA2MST8=;
	h=To:Subject:From:Date:From;
	b=QUXX57OS2zPllVLFiISvcAq2h2n4zv3lyvhHmjDL7awtfvlPV2Xtndl8pqt6tMfOw
	 qsyFMAGchCcXXUPIMKi0EEvul/sVZBs+GRZcqaRxBWBDrB/RYksaeVV5QsIKAOh7Uo
	 4dlUpA40LMfDLONkSy9+8x/41vcffRgzcr96oYvMxgtD5FFQW9gS6V+819PnN/kBqt
	 VVuKrr7Ml8s8v2808s7JKqFDMPm0BO9IpVuKe/pc+rALuK3iujENaI0YWzZRI1/7Vz
	 zrnoAG/133h3ZTVflSSZZ+yvCsc1WzOVCdBJFNlDEKE8x0mjIsAqINNrfscXXCpHVX
	 F3UyR8siiNL2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F86C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174423599359.3187.1214520211879821052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f53c63e918ce5b1a749233d1e61eaa8835578739b839d95e7bfe3db5d1bd0004
Date: Wed, 09 Apr 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744235993
