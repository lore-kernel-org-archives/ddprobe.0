Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1569732860F
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 11:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778500234; cv=none; b=gtXhHHNTv8fBDNZpqHpw6wv50Q1zxcyjk5LbztMF9jfky13xJmcJsJehSAlbYtzTLdM+vktLekYmUfQ1yXdlj0rgwuMwGjQKUPqlhJ79e7i2PWqsuQZQwwqnKpd3TJMBYvYma4QewAI3h3a9BQAZErE5AsUAQ5ZUCCe/yyXRLQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778500234; c=relaxed/simple;
	bh=hlc/F0+iY/98kMfRMcOQUo3zDvRPSv9Bxy+YCg+ndTQ=;
	h=To:Subject:From:Message-Id:Date; b=C+Oyy+l4b4DQPimEM84vNUdnhJUfCI2uO4BdmVIr79MwOIe5O/bhCzHfdDw6ZpgON/I5/uklNDdoyefRMyluPxOanA1GjH5YTK6nLSLOBno4Gd+J52ehQ5RhVbrPSGb9BA6RFKUnWNBSXYKgZcEeMgAPOMrStYna5SqHmv60VmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IxvMHQY+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IxvMHQY+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F58C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778500233;
	bh=hlc/F0+iY/98kMfRMcOQUo3zDvRPSv9Bxy+YCg+ndTQ=;
	h=To:Subject:From:Date:From;
	b=IxvMHQY+Q2GXnES6I9FI8Exgf9CrK5IFWL87bGatXLhzTu2kNJ6kT8uwFGS1FEZ1d
	 NIMEV5dSRFj30QDaXoVBXEF5bEZ099wbohsBkL1z8/rdEFY3wx+DeUHZVjGwbEx2Ag
	 84fFeKF40odieMdcjTmWV1XkYm06rs107rHOQ13DGGQ4NMq8nrCnaYXXnKK23L0bcU
	 vh+4AY7lz09y32r1C3cNJ0B1oKHjLR+1K0frku6AO95aPrHbU1592FUB2c4suntDG8
	 25Ip/5FRQ3LhVQwRrJ1MpLlZqMVJKbDp3fKUxu+OCO070iXPzSMuX+XaS7DX6AV1RS
	 UI/TjxObdoNmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA38FCD37AC
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177850023368.29092.12347654021816949858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a48645b5d92a184ffadf74afcade1df38e806bbfbcf88be8b9ac40e07a86206
Date: Mon, 11 May 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778500233
