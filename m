Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A4591EE7B7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 15:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782573514; cv=none; b=JvB4mKMg13Vn03HKb/zU+crZQcy/MhvgcuR7IUHlc820EljWs+jnWVa+s2lRRcBmOenvAVlHknpycPMBPzvGNo32hM4nGqyq4CfW+eulhM/Hzn3PuiHSCOvbptkywQG4w0qdJ4UD0Dbmwh3Rsjfq5L3MGai61+ep0bhiccLSz+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782573514; c=relaxed/simple;
	bh=MxqFvU0LHlS5OYWj+QOzQ8/F6GaF1RYtsndFNi4xh4E=;
	h=To:Subject:From:Message-Id:Date; b=h5/Rpd28iOSYHv6yVlP8bN7cHSwNIka4g1f+w3rTk+efnzIMTRz8ekFfbo7CrVDOLSJEnaZcZlad6JgNCFqtifMdR1pTycl+ntAnFr7lFgB3yFXH1F4H6E9+DWQobVShdMk9iFy332pO1kk179eS5eytBRd4NwXdHlXpD97QHCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nim4wlKl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nim4wlKl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E550EC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 15:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782573513;
	bh=MxqFvU0LHlS5OYWj+QOzQ8/F6GaF1RYtsndFNi4xh4E=;
	h=To:Subject:From:Date:From;
	b=Nim4wlKlLbCZl99tGKcXe6r/AvnrPw+lyZVpmc5SpdWgAFuEbz4YfAfeqnUcGIKx8
	 OxMWS71DmGFQiVC83Qb+Ugu8THvqyZjruOc4RAEDrdeaT8oIlmY5PcaROjeSkbQPe7
	 Yvp+tS/G1MXPWYOZgmHRQGzuOgAOjKrZnzjvcaM/5QqxBAsEx29rnfGX2/hLy+jNJB
	 7ciac7XsucDWDbcAItclUWWMoWQP4dw+OtStNCUkod2O7TPA52iITlla/pYyUaI1Jq
	 tCNnUiUMwJ4Ma8ycv9OfGQH78nxIpTW89oFBjgYr5vFEY2Di7aHOazhqRCkw/8Ge5s
	 7NayXIyDk7Tpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE4C5C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 15:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178257351374.2727.8630939766676656080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c17f201ae3cd9e2761c2bd762b64accf02234c1beb5b8ea87cb06b2a1371a485
Date: Sat, 27 Jun 2026 15:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782573513
