Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A1BE555
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743230394; cv=none; b=IOmZc1QE3H+y0+tUGN4oWLfq/xFGs8EHz8L9E3aKrbRFn6h5lwbSYRoYj+3oh1eyPuQeTq8cdyWpXPhcB7aE/C3ibR6gb0nH7Iwj4frWBzb35HI1N4JfO+JatB836PoacbHAwGUHjMJWpNM1BvduSBuNML8xN+Dlcct6jpkvyXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743230394; c=relaxed/simple;
	bh=P0/kTWszpOakNVLoFPu7xaeqGDVdqxlCNHP6094AnZQ=;
	h=To:Subject:From:Message-Id:Date; b=TxXNb6WhXw0BeQihSA6KnB98tYepnouPjFlogUCGDingAhuQFJIaBSPXievE6BPIMjugBfRwU6YXdMw2BaiHRzl4FC3CDvuW7QN4LKiYe7nfdN0Qyl021O+S2a/rZ0CR2c+BK+PgwSEMdPoJcWnyAZuy39x16HO0B9fOGf2SCVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J8tZclNq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J8tZclNq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81EEC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743230393;
	bh=P0/kTWszpOakNVLoFPu7xaeqGDVdqxlCNHP6094AnZQ=;
	h=To:Subject:From:Date:From;
	b=J8tZclNqQgGlf4BuYQxcptVeaCzCDmkb4Mz29n1aH4WhciCIVF9qLfoGoBf/373Ei
	 Pj+XvJQ3uZ/tLHYvbrZrHQlg5jNyBUP6OxQjzNV3VWbwgWF8WVCPiTnYPaixXBVOIA
	 zCnPMbdBaxsy2ifQo2S71ox++o9XcmWHOR75yZ/uhVYbh4/mLklzpT6RSXHOBYVkMw
	 KzaH5+knOs/PFTqGP1dsAoRs0NB0JDOTYjpcAGDHnPmjks19dkjMZzun9vDeBAIbhz
	 dW1pIvmy5GldM+CIBMbhb8ROsBYBbyiSiDWWHhl2fjACkrIifb6M6hM2Yqd5t0ZK/x
	 fnSSJOM6mXVUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FD4C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174323039358.25408.15582355118484506862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd688ebef10af519d9017c9e18c0b3b4e37e0e3b28dfb65538689d472061b79f
Date: Sat, 29 Mar 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743230393
