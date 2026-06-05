Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D9F3C0601
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 03:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780628674; cv=none; b=HxYzIYRhMu2gPAig8gVbLAqvDPpFYYfcetKs//Z+2PYDdSuag1AIU2cZ02XF4BdW9Mce1dm0zNLd0q61lwRri9JG1ELrh/WyV9H1P4OTdJuZ2r+21N8GAkNIYuNw4M6f5cGNXE+6g8iHdgnQ4BVBxQKbsWK8rxf9kROWmhFpMfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780628674; c=relaxed/simple;
	bh=Al6EiTohCfXyeZr7if8JAvtDyJRplF5bmPI0rExoqqg=;
	h=To:Subject:From:Message-Id:Date; b=d1bCeWZKSYBIa6XoBSqScK9EHHU8vBvhU6KF69/7aAVwzf+kYRDq7v+PU5AbMsJAxpl6FeI5DDo3vu8a58NQVmUXWPRxhC5d+pve00rdDmlnyl4//yMVc+62x+wsPoW1yVLlOhCnBDxzguFLCqtV27NUnvY7gjlditykMjrx+OI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=auHkeuco; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="auHkeuco"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D467FC2BCC6
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 03:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780628673;
	bh=Al6EiTohCfXyeZr7if8JAvtDyJRplF5bmPI0rExoqqg=;
	h=To:Subject:From:Date:From;
	b=auHkeucoYrou80Oju//P+76P0Wcjyu0LinaZLS8vAHzi4ctQBIBjrGc1kgTQLKnJc
	 5vdokX6iR7izRtmg4G4blSND1FyTN3U/R/FbMVTPQGBFrZju9iar0L74J1p3NAb3JM
	 TdbitTq7/XPFah0eEV1C9SGnzHdhlhYAXrZ7Ui1HvkdOcFSeV7hfCAD9L0OEP1GykV
	 VhBlH8V4ale/ju4rY5R6CxxUa2cmtyCMlM9VTxxiMGjMIG53LjQCkLmD88QpmaU34n
	 XwsZlzAFUUVL4f8lcW4GjD7BBj4efU1bDkiK+U0GzwsXYlKP4ijjHo60XGzAYOE38i
	 gup+JjdiGcnNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B50CACD6E75
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 03:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178062867372.7916.17039198023946969327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef4854445c6e6f6a30eadb06fc2f67f4db9ac373c9b6cad9c076c1e8b5c69eac
Date: Fri, 05 Jun 2026 03:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780628673
