Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1582A1BF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 16:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783872514; cv=none; b=X/AHd0A5vO/uZoxfd5pegh3q/v8DHQcPzjuJ2f1/q636F3VsVfYdLnHPojgQRaTqslkEUo0jtXAAg1UhCQlQTHovcQ6vE4oV+RDNEcYKC7N5pCBo3SwzZLfgQYhyaYV+wFi+vVQuTYmNbkKqGV0XMdWSBCXMeCjDmmapZgkgZaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783872514; c=relaxed/simple;
	bh=rqjfXjoKoz9ngp8yChxyICmhEDyHkfN6uIJVwFTz9MY=;
	h=To:Subject:From:Message-Id:Date; b=g0k8gvEgxslZzQ7lf7hrI+h7CFNHJ/YOxB01aoqcp1NqFMSLi5AGhbZXpjCFBEA5KeVm62kpnTfZz4A5j9jLe1menKoQMUtrOyJFUeiK5Uj695zBah5z10QNy8tJbLVn2LzdT8RV2JGBzoGmbGEq+1fiVsZdPnttBhc7CNG++bI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=afnBOJjG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="afnBOJjG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D265CC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 16:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783872513;
	bh=rqjfXjoKoz9ngp8yChxyICmhEDyHkfN6uIJVwFTz9MY=;
	h=To:Subject:From:Date:From;
	b=afnBOJjGyiI7FN5eT2nPieE1kHcVaSZEACUhecvXziSEcnfkN2jTWjraID3/s7jAm
	 d7H9mjMcBFdFLXrIXG9DG9OS+WeCV45Bwo9NvYixr0c7CE3L84CpGhjnNUo6zXGz4K
	 SgkkhCT0zAa6WIFsVv3IrLtObbhmLv0OLrHCsRnFgRArrvp/7a9C+3+U7vfVluUohb
	 wlG7Gy2K3gisvL6nu4owrASV2IP0azzcXS1YY95FMuRKX4xgIJHz+PrmPG32oGQDKV
	 ylckuWZztjqXPE9FRl53cO+3xtvBgcHnk8cDs20maCHVl/kXbGHpy69UCLNINpIwsI
	 uMgELZyO6tbEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCCDC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 16:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178387251368.28920.2949438669600372703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cd0399edb51e3fa511f9d5d4ca54eac898722f2c73b49b88d74356cf91e0281
Date: Sun, 12 Jul 2026 16:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783872513
