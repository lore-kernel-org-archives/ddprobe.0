Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A1246B8
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746256194; cv=none; b=mFwTzeorZ2u+/QCRZRWMf0wRL1KptXxhnkhUNyzFp7t+n3T25OFkB54Dlg97+s/CjNp/PKlXkE2Shin+vxOpks2ifq/AdqrUI4qL2yGnjODDN4PH/fYqis9qXBZ/uc+XuEYTiQboktfG1OmhK17OP4fKKUv4mI/jzLUXf8D3fik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746256194; c=relaxed/simple;
	bh=FGWJg0vPnqRa97eaVSRNGJiDj3eFKwes/eiKVTPKXMU=;
	h=To:Subject:From:Message-Id:Date; b=iqn0qZ9kKDJu1arcOfClpWX6iy0Elq9W5L/dYms40qAuRi0cnAsKSzlWtJO5DpQPTsZzrTUJz8xUObWbSMohF14/mxq1qZ+sbWA3HTs0moaCBlFXDfcvMnVgalS8QduTCQEm+y1gqOkH1Dq/Piuf9N+eGfavojOfgIHryTUeuxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WcOkTqdB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WcOkTqdB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D141C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746256193;
	bh=FGWJg0vPnqRa97eaVSRNGJiDj3eFKwes/eiKVTPKXMU=;
	h=To:Subject:From:Date:From;
	b=WcOkTqdB6rdThW/ZfeJlunpv8xUleIqvhBJscCaLR+g0YsLjUCQJxetRWbMpi0is6
	 2r5FygIDxKHiGJ/QGXdnvcRo7Lrqjcl3HyvwZbMjA+MlXcdUpe7rA/LWJivLksI5rT
	 FueDp6qElUhTUr7KIBlJB12TBho1ZL8KG5XOgYJC9W5l6dNTP0Wk2/xYWLk7oVqgB0
	 CWtcqZ0CtXVu7y0DUt6C3lCNDJ8uAvY9baAU+VRIQZUZfJt359g4uikcuxB3ZGDyAD
	 KZa8TV3Wiv1VuPXVPcx3hUSBxVjr5TQkF6Gy8M9G+P1BKVczrGi/4aUo12WEe84zMU
	 D+PvNu+GniiwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1D9C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174625619357.31036.16123093200950907292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d26984e4540d35175aa4ffe33b291cda6b99b647e9a7496377eedc357247ee45
Date: Sat, 03 May 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746256193
