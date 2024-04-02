Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2CDB323D
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712037497; cv=none; b=Suo8r8qmgTQAqyPSN7mfaXUkM3q30yqwzlXV9czvpjtgCZQL/k3uLpc2ZlxGogeEvzAn98VPdvNBzpH9R7MtN+nFIjTMolA+AjM/aw0tB5kL1p05hyQWIyTyb/yxuQSeNm9NAunkJ/RSvQinnIB8LYWMZFsz1cvPjyd0eAgDVXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712037497; c=relaxed/simple;
	bh=sNsrz11v1qt+0UZjEbAlBnNrIr+yg6+4i+tOT6B44SA=;
	h=To:Subject:From:Message-Id:Date; b=B431gAyW1Rn3r1wPMuXhXdLjHYeumse+Lld4Hn/RRrU5ES9b3AYR7kk95WTqifSbAxhbyx/kfBb1dHR7b3egizx57Fc26amEPiUw/2Y8Vn4ej5pI/48giVS9g2aF6iwR5059lVkvVJqL82N16JzUyzrgf89LVY2NquEmYjSzpwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHcKUNjJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHcKUNjJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79E4BC433C7
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712037496;
	bh=sNsrz11v1qt+0UZjEbAlBnNrIr+yg6+4i+tOT6B44SA=;
	h=To:Subject:From:Date:From;
	b=kHcKUNjJDHZ7u3WDFbzPlTeOsPscSuTPqJRwK4EICrftyjdhpA8e2FWNQKv4M2VQj
	 6d7PL/iGjGWbpB7ljRak7ndETyY1Vb/YdZ8xq4DOJJ+l4I6khQaY6xbI88bLBcdpn2
	 BFm2vrMOyrllBpKSCYo/l+oO8cgnEWigWmjy3glA1UjTWKW2RDx1DxReKYoufH/SqH
	 TjlhrZIcp3w0DMe7TKX0buMv8FmcuEoLvLVSzrtBwVSqkeEs8qxUWbcdudQkjpQmLo
	 uhn5i1Sx2Q8uuKEP4tEMB80EPZsmWPxqE78jb5ESZchUCka++fDxHtE4/kWgGBzXHL
	 l4otlg61Zan2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 679A9CD1284
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171203749641.4646.12376836726833542853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ec809226fec242c3745f9748d6b3e0dd314a57ccd5ea03cec10ce605caeb77b
Date: Tue, 02 Apr 2024 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712037496
