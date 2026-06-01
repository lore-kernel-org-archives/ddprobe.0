Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A2AC37E30F
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 20:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780345474; cv=none; b=r2+9wVDO2QEpRnzWtmfCqs4TQ0c12gBAAZN3ceSFEg8bJ+cUch1Hg3+UsslDqaOoqSFBfCrp5cDxjJ6A4KhyLMM8Nzoze5YVYQEDMT/VqQKiB9U5/qvJMNJekU8aMA/q21VM0XMIuhJ6+APxbtds56vz1aYih+Pxk5AEyR/nLw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780345474; c=relaxed/simple;
	bh=sHxF2tTbGQSX7dHUsGCqA9VXpaVxIplNK+esJu7EGDM=;
	h=To:Subject:From:Message-Id:Date; b=rrBPALxt0Wx07pB9Zn7d9tBivfHSQgLdOvqRg4+jQ/2cy24s2sUtdmbu4kQ5G+vfenyYbjb1XZYLjrk2NmDWeikBQOsC9eolTybU0YBgnI7HM327y/wuh+me/VP4ZTPQehMHT5Vxb95LiKC+54Rr3TkN3baRh50nx6Oa5F1AYmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ho3vTHi+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ho3vTHi+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A81C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 20:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780345473;
	bh=sHxF2tTbGQSX7dHUsGCqA9VXpaVxIplNK+esJu7EGDM=;
	h=To:Subject:From:Date:From;
	b=Ho3vTHi+Cwn3bpb/XJOWriCG0+hJaEIddGOwS1+6S07XxbMkbQYYISq+l0npRdZVu
	 ZtofP8QQdH01M5z/WKjX0vQcAT194PpmOKsDibpfQjy+rBwypdn+ysULw73wvYA6Gi
	 eXdwk3sIMa2oz/FpcU4u/YAF55BBhQZ3nmsr+csWSXLmlL8WDNY9kKfS7FZGXOB+eA
	 TyCr/eYFBgeBVWAhU2Ej7geZk2vfKBjOK2JifMIXJgV/UsSI16Cs7SQpxEDu7+tmEq
	 5Hgqgqj06jcSSUyGrTBcmcGe5zkYVFwCICjmrKxU6J1IMBirA6HY0U1dRIJ1jiZt5s
	 q4IG01rlfZIog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCD9CD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 20:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178034547368.19775.17974991100187966201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54cd4ae237fd0f1b099c0a552ee2a6dd17cc509714fb322a95c9510640830b3e
Date: Mon, 01 Jun 2026 20:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780345473
