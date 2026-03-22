Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161BC36BCCC
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774201494; cv=none; b=KjyQxI2JQxHf1Th8wVHWJ6daKv+T5m3X6SsJiZ7Tt6nDy1RWMfkFySW1fdyGj72wJkjVWyg+DCHfP5cDxmyXObl7fYfek6EztfuAqbdLu4Sk0r94K4ZdKXGkVrpzrbwmEMa1yNmtCCtr1qqFHXwx9jekJtT5XZcwmxQj6xl44io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774201494; c=relaxed/simple;
	bh=2Dg22j26UwXKMt3x/Hbsp5liW1aZepuu8Xxo7yRwne0=;
	h=To:Subject:From:Message-Id:Date; b=DkMrzSfvMaaDvfGNY1U63y9ajA2vArLyN5Ut3PuZ7QTbHTWhO3TAB+CqnTuGXd5y5+Aesw5vlXxZTzLb3pt5aC3IJctPVvU91fXNEaQSgncAwUFCqfIDnSAnH6qYCoEUwqyiQlgYG3teYtg5DNNLrWYBSJqUttER+sxyuMhW73E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E6vbmmhK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E6vbmmhK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA89AC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774201493;
	bh=2Dg22j26UwXKMt3x/Hbsp5liW1aZepuu8Xxo7yRwne0=;
	h=To:Subject:From:Date:From;
	b=E6vbmmhKitEuhEqlvN6TmBv4ThZpvnrfQ6mIGyIZ/QF+Wi5Bw2cnwr54oWVdDTL2k
	 0L+bBxYyXuQpG9+/gtHL1BEK8oKiiLUrXToQb7mdTf68DX9VhS+3lYLNmziNSeDfNz
	 tmsQYj2jNejD37y78UsDYxs17iWW+q7QofIw171IrSdgkKycSZnTcg03OO9nsIBlMP
	 j59DT1nPIDw7CNIffUQqJfIk0pVKApOm/FW4epuJgPm7kgCV/mJD3NM32+eWaCALg4
	 +CB8sRw8N9+i+oepS/wW8F1u7GeV4+lImHtQw2/bMX0mPaARtGJlyWHJr3IjTtea7w
	 8ve0jp7/TsLCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F0FFC72CB
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177420149358.15271.11305894686269438970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7113870ca24ea330c64484aecac2a90cedd01cd3b6b85116ea16f1f1efdcb5f2
Date: Sun, 22 Mar 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774201493
