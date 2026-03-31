Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00EDF25F7B9
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774923894; cv=none; b=DOlO65RmVtg/lN9r7pQE48zJdQpUne+4CWMqOZky9YmyREaqrDDODSIZBDRYlBITjr10WjBfbJUhp4+3Fj9Q3dvE5iJeGHVTyoxzSlUSlVoTnCiu463CBWnlsDe0zZtFLDqPvZmsHflXsLEfldiIEfkGRZcTG0XvD4C2VI1NF70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774923894; c=relaxed/simple;
	bh=2QuB22i8ygtxVpsLnAGORmmycpKBDqoJyMgo3Ffu8GY=;
	h=To:Subject:From:Message-Id:Date; b=pd7+sGplVhNyy7TGpg1o9uYxDqbyce2YeNM+Lr4eYsMeimKNjLl8JMhttNUTfOQavEA8NTPi01xfvHp0H78dSFfkA19yGmDb3ThhWzmH0DIRKLGj6dh3BdQhyFfEBd7/eLiwN/yrbAYBHgBb2sm6RF0KKv2ncWipHYDbyuuyoRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/PEXzZC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/PEXzZC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8221C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774923893;
	bh=2QuB22i8ygtxVpsLnAGORmmycpKBDqoJyMgo3Ffu8GY=;
	h=To:Subject:From:Date:From;
	b=o/PEXzZCiPy/WpTpb2NbfC14tHxUATvGvn1qROivND00QeHx5oNlc4fyCUjFftSlP
	 0bEzkHqluRhZ1x40byOEndVwk5rUH/XMV5sstMRqMGS30tkNnlN8+HmcP1nYG3+Rld
	 mwGGMS7pgN9LSgUGakEQMSe2VjgZaS1nxm75Xoy5NBuks/Aw3v9cHcdKKOIlu0sCLJ
	 jcqUecSeTtcoQO+TV+mt2RryVt4SITHRSeEHAxfyM9v+8tPcApXfQSe44JQDzfiODm
	 WC/CPPqwPTUndSfLQaxuHsoJP8NOlIB5TwJwynVQe+oiTD/Wa+LHinrJbJ/upD/Fjc
	 N4n4ekaKJVujg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999741061B28
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177492389359.23757.15078257034230732955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 094d6f69d76eb9cd0c31d725c8d50fcea200d31a809edba74d93195715b0fd6a
Date: Tue, 31 Mar 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774923893
