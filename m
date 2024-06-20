Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FBFB39856
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 22:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718921424; cv=none; b=K46vEqA28DGrR0PvsZJVm4OxX74eH6RM2TdAu89KELYBPdJXMfV+FzXPKI3NjrJC8R5Bk0LqKJyyG1iEF69qM4QtltBqCYP8vjDnDUDWOhezu2tbL2Ndkagb0vaaY0yZaVZLbehb+mdtwu3LUZWnuj0zFdJWD3szSBYVQzY5C98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718921424; c=relaxed/simple;
	bh=VITWgMGkaoQbX9BN60ocol20Ye0zKB6/BiGZCF0QRew=;
	h=To:Subject:From:Message-Id:Date; b=A2yr+WOXadBLjbf7H38/OCp+44QIowbiLhGxu9H8/9xsionu/PTCQsMxTY8Bg3LaS9ekjuj9crFHtUwpYonry++fJrK7T5EtyIkUSEIixFZTAurPT5YwuP1QS3zM5Tge40BVR0ZCf9RPQWD2hW/zQ53Q3kaJc3/a1vcz0g/V5WI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cu5b4xv/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cu5b4xv/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC25C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 22:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718921422;
	bh=VITWgMGkaoQbX9BN60ocol20Ye0zKB6/BiGZCF0QRew=;
	h=To:Subject:From:Date:From;
	b=Cu5b4xv/2xCtixLsG9ngfyhKyVXovsGS9shx8AtuhpOXojVIcYuislwdwidtHj1OO
	 DBS7MphkVlTm2R5lQ/RPM+2exMOmyUBPw8Z9L1xrWp19oTNSEPy5Ad9BGrfruN6xxj
	 B4/ehpUXvfUEUa00KzzWXLu6nnnmvOmK2RNo1XlNTp+kM6XLP2V10EJlcGHlVkojIE
	 uxyHWqYt9rWPTyH+JiVv3pqqT+7vOxy9WXEgUxxeGqVj1kpXE4Sa9zLv4hZt0NNSpe
	 I3cTXGPgW0FWFcDN0mWN3DpDhdFS2WO5FYyLpjBIsKSaYwu0B8HhOmU1Vlsgbtmifs
	 y7weoj5WoMnQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C901AC27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 22:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171892142281.9962.11636201514697533235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef14b50fd3ff64ee1aae367efd5e6ae084ea5996d13d7de49ae9765b49af5637
Date: Thu, 20 Jun 2024 22:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718921422
