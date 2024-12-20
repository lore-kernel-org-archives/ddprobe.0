Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A87207A1D
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734708954; cv=none; b=t+nkxvijaSSYJeQMGak9Sl0I8mJXPtxOU9NQn8txSIkPmxF3A2TX3uj37kPj9DKy5gzguSaHW2XOU1+49gPp5qWPRR2BY8E/+9Xq5waWvK+5LxLokHQh7NlcWDV15DVQEvtNq00FMW9NpLGgMlIbRcaneZ2q4kbAlFEiufiLp1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734708954; c=relaxed/simple;
	bh=zZ1QWw3HQGo+AOazWiIX7bd6Q4NodBwai9uqO144LSc=;
	h=To:Subject:From:Message-Id:Date; b=RvYGTF6wXTrHoPw0zSFNn26h5oWdLs5iCWXgbpACt7T+Q5Ao9KDkzrMgESqTs9YuIshEUwSADiUyfUg1pjJANPQHPXWSCWYzw6y22b94gAYRLiJnCuT7vTY9NORk0h9EXkMCv3CpmVOx1F9eVtGii48cIC0j5LLh6CtskKb+/E4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cF8vVPGp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cF8vVPGp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA396C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734708953;
	bh=zZ1QWw3HQGo+AOazWiIX7bd6Q4NodBwai9uqO144LSc=;
	h=To:Subject:From:Date:From;
	b=cF8vVPGpdX5jDI3d0N0JRJzKOVtdOs3JnS7GVUVXoKze9fo+RY7JcZSLyG3B85zJX
	 sLC/axNi7SIe0utFTPZ1hh+jt9PDSST7dc5SNmGRXCi6kBiWRw+3oFPRAvc9gfDHjM
	 60G8yhsJKf+wBu/ClAt/BY8AK9v+uA0g4Q8bqnjp7l1/ejeZVLH9kmksPMplPV63Ro
	 z5sIfajf8DRJEdDUFCVjzEiSyQvnqgthkLuvWP+bbXQ23E76nPF5/qTdHaEPVIL3qq
	 1wqyT9a1fOe7v0qzVxoKmXdv08PQQWyGFByyLZ13TGjdTIH+reBTMHjDSbVFGDvcgh
	 DnbBjBPWyHcxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A5EE77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173470895360.5724.7013148024069441569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f1bb979437fd048a17637eb4cae861f9a9457e4d906e79383e88a6e0fc856ee
Date: Fri, 20 Dec 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734708953
