Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 538348834
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791072634; cv=none; b=Nr9J5kat/2BQlO6yWRhiMmA6ZkYeDqkkfP0eN7IBpT7+o96NRVDVPwIenlykN9hLu23LZH7lTcXwv5vpp2WA4Ey4Il/CtPdtWFSsLa7m23IIHZTZN4x73BRhuXyiaPeDg5PgyQYOLWm5wIgKay/iYlCAt1tC+nxmv5vhq3E4LfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791072634; c=relaxed/simple;
	bh=Q2e2SG1y/IlS5DWOhCp6sWpRjUpOytHHSlpPCN8pzO0=;
	h=To:Subject:From:Message-Id:Date; b=HdUL5pf6MIc3W8kr055+A+6kK+48o/oaRQ/LgxAaA6/UxXxGNDxlF0PmTz5fKaToJ51vOYaCuaTwDArLBfzq/zhe8NmDYEtIXYYZwRo1eDTZoU3VnpZXwxFe0lvye4DcDlssO7GH1W6mDYnhBXSInEcS/o5ks9ev+2kYLgTx1d4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZLW88qf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZLW88qf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D53B0C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791072633;
	bh=Q2e2SG1y/IlS5DWOhCp6sWpRjUpOytHHSlpPCN8pzO0=;
	h=To:Subject:From:Date:From;
	b=fZLW88qfmZw0pVkC1nZQUM012jaYMYOoOpd4SZ1tcm2p1jeQ+B31fJJWV0TqUH/3r
	 fXBu9wzlZ4rR0X4LpsThdpj/wQwniV3dG5s2vilBHvlZJf7MO4ab2RYQEZQvqt+59k
	 9BgNREWUswg60Ot+XhtA8kTQbCajxMM1PMR4QnSiDwSBKkb8cGWZ4G30qzOn3u2eRB
	 Qvzs4/wdqylNAglcnBDqfIB1KXIXypf+i/usbGvGFhYQ2OgUnBpgvgwB467OhtA9LB
	 Ev8gGCFMNkjjRfcGIN7vi/Mwl/6+ymbZMSmgJvSTQ2TSbaswD1f5Q6j7xIJRklIZeb
	 bWktRMg2oMJqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD295CA5FE4
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179107263368.23084.9203999289169710312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c24a0698c46e458296baac8014498b1edb9b13a8d6daa48cea1fbc7ac3de5e5
Date: Sun, 04 Oct 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791072633
