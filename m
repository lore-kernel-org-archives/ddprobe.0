Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10FEE34320D
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767996834; cv=none; b=bGKqdMpAcY3ULVOEeMI+R6oUVjFSOt/m12RUn6bJB6Kh0NfHnsQsBpjkhIFRNXJmw1A3RHFVdkjEhh40uGL8/cPC70o4pwrhZQvAOJOOU+/P0sFbRkMrbxY2xBnhWHB8l840j+vkJEl/kx9qffyQ38NQQMEhWrL/lUjeBeD11tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767996834; c=relaxed/simple;
	bh=uBwWBZXXz9dUVgVy9keS30TUw15DIwGFYrvCSZChS+M=;
	h=To:Subject:From:Message-Id:Date; b=Nz9klpB646dtPMEk8/+jeb2J5dUfsIW0ur+MDpGPA/ncsZLIkJHHYmvyNPMrnWmHnGDOBObVvXd+JogzgZJCm1GQ9bHIVBORyYwllc/9V82+5IAcEB5tsPS5N0uKs0Ll/aagmAu6JOSvkbFG0bwqsfdhmySRwjobbR72BmwiOHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZgIqggd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZgIqggd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1A2C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767996833;
	bh=uBwWBZXXz9dUVgVy9keS30TUw15DIwGFYrvCSZChS+M=;
	h=To:Subject:From:Date:From;
	b=cZgIqggdUIIOzPI9QSX6JKcBwKpcT/D5ebNcRWDc6bhHJ7oroH7qxS/1KK53KDG0i
	 BddbmJGqBTsG6mH0v4ot0ZGUGG5lbNM7fb2lK7DucnzpYlK3BIFxVSs6NsweEpdWXi
	 UIQEuSBS38rhyeAWK00ifo5mnvxYUOHg4ldIflfxMt7aTBtD+4HpkIrmggYLblHKve
	 +7pN6bBUdBRt93xwifehRo87zeIQUjMfg7hdexBLl4C6GxA7SoX3eHXMlRiRmjDO67
	 teLF/orVPy2WKFbypYsloT9s6Ie9WEnobtOn+4PpPaRru8w12tJk0MhH1RV1N7OBl/
	 z8nWcycs6o8jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAB1D277C0
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176799683357.25427.6625139033300426438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37fdc9fd3b7b80ed65b7cc4c68741dd46e32cea9593bc717bd9a3bef2596f3de
Date: Fri, 09 Jan 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767996833
