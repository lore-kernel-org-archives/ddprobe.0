Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4646F40D58E
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 17:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782667714; cv=none; b=ljU0CwijNKgMj2/42mqXWGxUkrh+E+hEK1vuJxtR51wL6qLeOx6+IKxGjLYWp0/h/Mo6Zpho+IRCXOmsh9wyo2IxSqHz6ipne8RL4aBnMMf0Z/IT2Pe3U/ya05S7IUqAVBG+60oAIFyXWFcuDQq5d2WpLTAcajCT2hWnz6p/uJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782667714; c=relaxed/simple;
	bh=N7Iu42Mv4cDpV5Qg1ra9fsO69lsC3/OwlLmlDPJuMOc=;
	h=To:Subject:From:Message-Id:Date; b=Bf5wZArELfxf1QnMuJFrpL/uEqiZ0eYWEmoyEdbOY7nry3aNmwzSewYlRcX3d3wQJdZ/wZllPWR51BmARgupVA13EDHORsNGsAmnnWCuky9oMOLekCXHHueTsVajg2hpH+V0BUoucAX0xgALxosyTOotibJJOtlqrl9lkR5MnpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oOF5mdEX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oOF5mdEX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8D8BC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 17:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782667713;
	bh=N7Iu42Mv4cDpV5Qg1ra9fsO69lsC3/OwlLmlDPJuMOc=;
	h=To:Subject:From:Date:From;
	b=oOF5mdEX+ki2nhr7fiRbQc7TNBNwtagNW82m5sw24k7t65mp/l7jt1G3NKgelW/mR
	 qoh4vPAdNJ5BgGet70SSJqyeeJQ9uHXFeEMrLs85AzJPa7hpSoyD4bWnwgnzE2AYoK
	 uDG3jDaC/4eAPkbJA4cw84WDIsyDgXVAF1ZCM7KofaODFpqblKwfj59nsoQw+LZgc2
	 Kvc+J/i39LziQIB4E4dGuQSmuBAxO7/58t4BlkYgbrKaAiS/JqUiwfav0LwGm+VRRV
	 ud4b/Vo9YZkI02NdGirVhGw0LF23duk6CkjYP/SZ3OR/6Irf1w9uoqelcIVem2ynwz
	 Eco8YrDUNN6AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEEFC43602
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 17:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178266771371.23107.8264725205188891013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c701d67ac529810ac697513eb7d5bf0fb62d3823e4d8317e9517bdc4860be33
Date: Sun, 28 Jun 2026 17:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782667713
