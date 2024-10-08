Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4449812C484
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728374154; cv=none; b=DgvnLp/aEsnwtLNqzFv+BGxBWRVEDKmGcB78Nzj5d6mvQPSYSQk8Iz76d8p90ADY16N9xpNKuJP6acwWhWXknXyW7qkhQ6V4SXf5V40DOH+LMb9Z+k0exrNsRI1S0vQv/A8hK85adve3+BLzXs3A660iF0kbOUzn1iMqgXJt/Pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728374154; c=relaxed/simple;
	bh=fOg/rPT+RLK/p6baWuHP2TJk5RKxxOX6Jf3MGcOkWOo=;
	h=To:Subject:From:Message-Id:Date; b=UkJIt7BMfnoyjMhPRFcsxyPduCmjsyP4MZfnNMhkTYsYatipo89TteCpXMXGXBcIJUPm89wLDdIVO2xMnONBQODSKQpD47dLJZediMHycr44kApZUeyso/1q9NT3XbgYwuaEVdSOxRh4oPKNxtow8CGYUto78cP3N/Tg9Fax+oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sA82kamv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sA82kamv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8272C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728374153;
	bh=fOg/rPT+RLK/p6baWuHP2TJk5RKxxOX6Jf3MGcOkWOo=;
	h=To:Subject:From:Date:From;
	b=sA82kamvP10h3fSl1ITeMus4LvEULwxe7ftnFQifyLdXGxvFpyWu3xYHs4fAqMICE
	 K16fybxR65NYrM+aJ8BSyu/8Tkzb99ABQ8P7ONYUeyNLm05jGLekqMMH4jGJLB/dfs
	 5JEvT3GsiWmgH5A3BPE+6zLqtXr7SqqgDU5gZ8b8DF6yE1rJBxn06u9J2UmEpOCNnF
	 CCrtP+cR4BTW6JluMbj5j1Z8r8diyHyC8y1vRkK0z5gxUxfJQDtDl36OjBkZ0hbZ8+
	 hlkOfv04F9PeILwWDkURd5JocqnoLmjLy8hUWBueMCZO4iUATa4iz++1pSDzceY2ip
	 RroU47b4C0Usg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0897CED277
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172837415364.5298.9350538559439426670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b51425c09725a1a71607a50cfb932539548ea8399b4ade3fc633c287807866e
Date: Tue, 08 Oct 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728374153
