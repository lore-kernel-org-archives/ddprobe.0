Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD451862A
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 04:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776573454; cv=none; b=B09xalAuQTvltWkXoeyVP70dkJh57S2IpAN19l8yLFSDvZhyu+vSYVvjJ5m144jiMrKvuFUCS4KIQeaiohbujOnOPy89RR3zhCvl1h3TLPud6D65JcSoi9QWmuhwkXagXrzuZTdeufCc9BU8AoukUt0MTo8T1CIUndncwUOjjEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776573454; c=relaxed/simple;
	bh=8+m8opFZoszozdVZEJBlfbbKV9kJLjDUd6NS4eQoP/M=;
	h=To:Subject:From:Message-Id:Date; b=KeL+nki8iilxPkr2dQM4jEDWZMOGfJ9Y9uJJxu7iZ0bjOoTZQ2rOxJ5fUuTIEQApxe4IzTYvANhoAqZRgYEflptfEQ6T+OOpHN3VXuU/ATarwFbbECeoH5BCmhmUKx6VKsynqAMubWbAqtccf6qRmEdoc0uMIra6PROH0bKRMiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EYt3YoNG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EYt3YoNG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C80C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 04:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776573453;
	bh=8+m8opFZoszozdVZEJBlfbbKV9kJLjDUd6NS4eQoP/M=;
	h=To:Subject:From:Date:From;
	b=EYt3YoNGxWkPCdyK9FYGSibOmW7Ezmn5mkV7uyIyLTnmmL6tua8GVG3kQVsq81UYc
	 rO+crMxguz/2wQHfK85GEp8tIKXAEERCS7wWvt5P54bzd42ADFAtkzSenWlRT1jbQN
	 H+FLVaAh1rnC7/davf2tcY6jGPKSK623DSWCBYuQjvKyfomkRhca8dEzQLiPRB2h03
	 C0wuk0aAHsca4LbwaFFlwOHABwOkKMjw1gG7qWwbF99dNrNSGBYgh+C6O6Uo0lUTn7
	 3ZyAPm8z7xBKTaNADqJmTnlkKlrd776gkDyghk83KJRz4v3RBDl4FbedTUmfYCA7iE
	 4Kk2sl5Jx5SmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF677EA7189
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 04:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177657345368.26031.8712194852390014088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 777cc233e9fa09eb0ed103173cfb8076bdbe3611bd3d80d2b9f751fcdcbbbc59
Date: Sun, 19 Apr 2026 04:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776573453
