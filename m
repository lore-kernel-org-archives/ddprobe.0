Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341681E7C20
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 23:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741218534; cv=none; b=dWSFQlLqtXv96RD3rmI1zEF9mq6R70XiH1Zk28UncIxuPekEeIFslRUeuT5olMdC5FSgD/50VAXtdY1/sd+MXnXouU0M87vRDU1krSgDSrcw+jnar7ZtEEmuXccOjk0iV4BJaefioJiPtIP4RnD75r7qOzh69gu9NHOxjkUXEMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741218534; c=relaxed/simple;
	bh=7FwtXMWVCKWXio3+UV/IbRZALShbc4AJnIUbOegMgYY=;
	h=To:Subject:From:Message-Id:Date; b=la2C34CXZFX5og7CZjqyo8P2YS7xU25TkEZo2/a47JbTCRpJ/Ty0IZqX1F8HOQ09u0eoci1MpXWwVdKnMEXd1gBT3iKHUOnfMXc+qDrcBiOLu0wvMA33+DfWqKcfmfNDknh0jch0YW5EMzzCLiLJ90sVo08rAC9cFQg8QpdToAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndWHAiGR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndWHAiGR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52FBC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 23:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741218533;
	bh=7FwtXMWVCKWXio3+UV/IbRZALShbc4AJnIUbOegMgYY=;
	h=To:Subject:From:Date:From;
	b=ndWHAiGRazROQ+G5GM53xW73Uy3k1bgoET/9RI/B5xuqOKJGpsTcpL2o57Wcy3xC3
	 hFj7qUI/DwvnQYDCjBevHUUp6JGhzGxjaGNzToJBLOEUF3rT53vFY0zR6TI3z5TWao
	 nXZbNoXqFBxGkQ2xOSxM/+lp3IUifzRXDzyhMcM51N7VlVpDyaXMFBxHMqbNgGnGPr
	 3S9fkNENP5XjC0blSis53EXr357/4D1bTYfMQFhxexGzLttCO7nTfztKliz/hufdbU
	 aiaWVEFSzGwj6bNLmpHU5iuOviIHLSg3VpcrM1OJPDRC1LqMiXVxxV/vRFq/f69coP
	 8H9fFIcqAPmxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95072C282EC
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 23:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174121853359.6956.10538897999909321165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aab63aab68c7f6d4ad879354ea2364f13d91158c3fc4264264724312ca79e1a
Date: Wed, 05 Mar 2025 23:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741218533
