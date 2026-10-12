Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E052376481
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791766834; cv=none; b=UOOl4aIVKtaBpQbuo1nb+4TFfrDETjHx2KEcWHDTXwBh8lrmcUR1mn5fdINkvcbX1K/3CfvagrYxnByaQsNp9Rl9nDD4K3KymHX92pfa77GGCsAtdBT3e/VXkBAl8sq/oxdIRxt3hAgFSDYu/c8tUDg7uebrhjgVaKXfhzGGTO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791766834; c=relaxed/simple;
	bh=QLyLSQ5J+Y9YQ7EBC/WztFMXAlzX51LMAlXAXb5/yKs=;
	h=To:Subject:From:Message-Id:Date; b=FkHbsnmopeRe3kpAZ4hCtv4odtVTKR50mwR29VwRYkBIVoQnh9v5NWeBsTHkvCnzHtjkPRZGbuLn7rPBmMIqqGHcUwuEsknCf3+t0/wLq7o4i377f31tFpNodgsGSFjDlNrgeYErHKuPFzsIgKSmvtxikMdbTDEu3EzOBWzDWAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IetwNYGc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IetwNYGc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D248CC2BCFB
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791766833;
	bh=QLyLSQ5J+Y9YQ7EBC/WztFMXAlzX51LMAlXAXb5/yKs=;
	h=To:Subject:From:Date:From;
	b=IetwNYGcwbveXZTXQY67DN2OdNtmVzD37ziD4bhmsqKV3GPCKrNoTg8bEy2a95AG2
	 06FCQ4uE/BgpROEewkjuCUBLDlU1RGDXL/AJRpm1/HCqkS/Oa6wmjTA91toJ/38gCr
	 GZR5Dk1OkJVRAsrvy7UebAP1d9+SAanstYW/O6p1CE4gaf8XQMbEWMkLqK9e6rkte6
	 g8JnbaR9FH2cEpkf50DZuscX8aaWahXjP6HFE/mMzpLmN71w8M/sUX5q4rHTrWVS/X
	 Tqt747kxb67D7qF4/haCL7kotx6P2wjs6yuRnNxwXKB6nSGQ10OLjkjqKUzegTCoqD
	 YIffipZwMSXEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1D3CA9EBD
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179176683368.19871.11535414719560095399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98166066cd5f88394b4af6fd6464ae756aec6aeaa8dcba1b314d01cb67d56050
Date: Mon, 12 Oct 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791766833
