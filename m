Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269E94C84
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721799354; cv=none; b=dOen2f2DbWL9FF7fjYYrT+XQHMIgm3PqVIgwWxM1iE+G2+MxRSm2s8XhzwiTk7/91myPR0igvDM52cEgI1WNtbpTkil1tw6SCeacjBL+aCMwc1nLnhE5Xcp5fWwpNl1pIPWhcoVWDDGUO+0XMmvUT/RsRgvJpesBjtwEL45cJyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721799354; c=relaxed/simple;
	bh=j3jTgFYtZLjxIBhd8XEQ9NVzt47nNRxuY0p0Ov7nNYA=;
	h=To:Subject:From:Message-Id:Date; b=QXDO+kSOvJTNNJy2kRzjm4AMVT4RTAIgPhYVJopQ+GXUI4TEWkrCIGFbq4AnPeEGQiZWn1wrVYPEs/VkikgxKwabXM5B2byQuAjHto53ZT1wYnAmc1Wdr4fWsovxRiqWMvRT+G03M0mZD9vu6RiDjL02GkcRU4J6FErkTpRPxq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ket6akem; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ket6akem"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47C4C32782
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721799353;
	bh=j3jTgFYtZLjxIBhd8XEQ9NVzt47nNRxuY0p0Ov7nNYA=;
	h=To:Subject:From:Date:From;
	b=Ket6akem82DhuS3VpdK4aWaXI3D6yCTlItSs3S9hnlkHJaCioTI1OW6Vf57czxQPq
	 QpyVDQdymPWwTy6PSZr969dBjr4v5MQYrRS4g4RHGsRNTmFNyUWXcnY/c5mKGzSxwO
	 qfp7tszL1VU6DzpDrrwv9LjEQ/9SrFF4fm9GNLs4PezHmNS4R9SFts27zRZ46iztmx
	 zYnI/v9SzZYoIXsSCRYga7kG3cZb+5N7tnBVuXrFTBJdWAhUytoE6nbvEqem+m2tNT
	 VRJ7Tseknr6pn3lRv6yhqtU+wsqSXBrrUMppAfPZSrgURpaOLdZgtu0g9B8qiNR2Zj
	 IJCYwlrRMtGZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA91C3DA61
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172179935358.14144.11508195312661098691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56771d940c730d8b819dd7d52c4bc912230ac05bf3e30f9f7427adcf3f6d7f77
Date: Wed, 24 Jul 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721799353
