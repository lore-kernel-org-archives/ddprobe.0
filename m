Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0262F199FAB
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773476094; cv=none; b=UIwt+mHEWFLZmM40oipYbJ0fiKYht1bdOsiWDpAB/8qdqSC1AGfpQX/Luk/G+0FuYzl8N3UXUZsxisu1NVygpm8sbFWMnpPjFgk+TN7goFyINRv/ioTfDfaqpcCtCkhMm/tnohDjKP1D3tgXHVrMTS8ypzpAFi8FRBeKg+uNg3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773476094; c=relaxed/simple;
	bh=Fjq75AoQab+5RI0iRUy/xyfbQaQBGHuiOXlHdIgZdPY=;
	h=To:Subject:From:Message-Id:Date; b=VxZoAOry9H660Ofvy35MAbhjdhBcyyrV2m9AuNY2OKkMBIVOOS0nXye/ODZwZNiXf0EZNFYDFm94DYGfxROK1NhdH95NeYWg5VGXXVUnagIFuIa6HGoMkeclDfaw4h4khAckCNrs0utKjt9+JuKjX98hAOSgztPViOuBzgql4bU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JVzcVcn7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JVzcVcn7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0615C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773476093;
	bh=Fjq75AoQab+5RI0iRUy/xyfbQaQBGHuiOXlHdIgZdPY=;
	h=To:Subject:From:Date:From;
	b=JVzcVcn7wM8o0lHmyYKkgtFCQTJAZGaZZtytvNIYNy2zxhpHNmR+vC5OfvtyZj3hU
	 B4PbvDQW44UnrVKAHHvFBgqC+KToa6qupjJ1NGqdUSNy7RJdsG0hTSIddaamnAyTOj
	 cBpPX3BspykvJ0OPi1fR9H4Ensx2V4t4Imxa8yUeJFrpA6o8KSzTaFImseby10ExpJ
	 Z+xOAIYMBCVwRMzUIrkyYiK/tquZrA0+LCu/+6FOBW8NwxkulpTDUuJ1mWCiGA9be6
	 Bgup3J4gkoBuwYB+6yUmONfDdIy84z8RmTbLEOBw7WJTJNVRvCB6m5Q70I8c5aOS7B
	 5mow0F1ZPyyXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF2F105F7B0
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177347609357.30597.15334641989525150008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 648ae49851744e423633f92af935257186d01b858f31f853b2778c6f26d6f40d
Date: Sat, 14 Mar 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773476093
