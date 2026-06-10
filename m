Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6673C3DC84C
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 09:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781084134; cv=none; b=Svm0YFlb3/NSB191WqWDCLo6/gOM4YAOBI2PSvzRD6qbWfgRYo1yduqzskK0dtbti3iM+//0ckLRX8HLwMgf4zksfPMNWa+omTshJQYT3PrTqAtTrrnlSU4QvAJuJkkx6Nyy72JsAs7VdxwtVkffC6wu5/C1l1HzJKuuYobGyBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781084134; c=relaxed/simple;
	bh=+2BRn3VrU9WmmXsUDc+kn8yMbKGNlaT1avASPCcCbjA=;
	h=To:Subject:From:Message-Id:Date; b=UScrYGDMvlO1Rm6VrXRaATgsIFDowf13GAVLSkZg5RJqhblneO7vgKHHsyp/wYGruqmAMqjzVF6VfySEaoqUIfraEJkUxRR45x14CoXPoQga7tfSsgU/yUDdMmeeB6SGlIizJCBSocP4MwNS4H43QLzqBWQMCeks93pBCyLPmQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iMv2JPVo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iMv2JPVo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5556C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 09:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781084133;
	bh=+2BRn3VrU9WmmXsUDc+kn8yMbKGNlaT1avASPCcCbjA=;
	h=To:Subject:From:Date:From;
	b=iMv2JPVotgameyVvomhzdySOMRv2JOEZg5VCVpj6woDA/aHexKXqujxoPbtRQDcv5
	 lpVXR6IlgEnRypELvy04E2OYy8VqTbdXwAhyDifwvL7x8Lpa3n428BeoUx2tltDiBQ
	 hnUBEG0TaWdga1wJSIAnsWsvSVcvNWp7GuG469LwICMKo8NwLXFlsJuyJ0VxwkJQkw
	 8KEZdUPjDyQ3rlXD/NTjmA6mrIjHjOSiOYnHhKczKbqleqZ+FZcrnL9MlvlJX1SPkl
	 EmpGSIlW4pKOq8oCWWevwrjJTSI1dduzgbCNjrzZqfRmYqVdkCUpu0PdwfElh/0Dyz
	 BVeksdX+Q39Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8A6CD98C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 09:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178108413368.28643.4197139316129791421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a54d6672a8ff25ec3126076d10b2a12734977c749291597de7983ae384a13a5
Date: Wed, 10 Jun 2026 09:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781084133
