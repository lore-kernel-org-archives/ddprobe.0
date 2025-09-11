Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B2A2DEA9D
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757591394; cv=none; b=r/GEX0rfVUdQZFjdeJB9y1CClZapzGuDsg2J4Y/91DEL1Y9WAa2mD3AnZzxs3Z5+NUryom+85IlN8lWFTGUYz7aFlV1OVbyDFNMG3xtrl1FXxoyzsnmC/0bStZeop2oPzb1jul2pHGjUAJBYh54EmlmwnrO32jgjGXDp2wQ8ouk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757591394; c=relaxed/simple;
	bh=UY/N2+OFJbXaqEy+Frp+VU9Qsuh1f+YTU94IMPuDLPM=;
	h=To:Subject:From:Message-Id:Date; b=ed0fP6QKexlsiCtIwn7cb7EbpTOR79Uigk2MXH7lckX6+Gh9xwQM7wURsnxiYz2oq0f53ZFi3c6bOSnSMruBlUZ9O6wkVFCD6vC19djVdpO6RtHOftCmuSW6FTzyd84ieXEWSgsevO/PRbViFDhr4vXA2AAmiLrTWQ4gVKTJ+P8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=abmsoIaV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="abmsoIaV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9297C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757591393;
	bh=UY/N2+OFJbXaqEy+Frp+VU9Qsuh1f+YTU94IMPuDLPM=;
	h=To:Subject:From:Date:From;
	b=abmsoIaVo+rjHlfKSxg6+0VY8AsdCFmiBITmd93HYXFs8h4DsNkXgm7ATSFOS1LQ+
	 hvY3iaKTrK/DEoAvGeEFrAm4COrH1aq2RNCY0KWa2bVQHw9hzDD39OmfYGHeh9KrmB
	 2ViQILIjhvW7VuAbI1am1uk2qI8Swg10FIziepwS+MWVe5U5suU2lMnSKKxq0ajzgM
	 40JMoPDaTgtbq2a8VEvwD0YSpVZF0xbPb8grxAmjC8M6vzZrieeQIs6ebS5HIqR14r
	 UZmaZ7+8Pptsi5kJiK8DIISNCUolMqpeeBFKO/EtOAhAm1cgOJHUjRzvpMhkGZM6f2
	 VoEpcxIeypQuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C87CA1016
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175759139358.4590.17900703215993137666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 769673368c971251fd90824ec51103139275ed3c5a73ebb781cf8c64c6ce7eb7
Date: Thu, 11 Sep 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757591393
