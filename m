Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A3B1D555
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750292994; cv=none; b=fQ23qgP+fDzjNTC76O8G9uBoC6HzxUg7MtfTpCM/qbt11Tc1PAHNbkJVvokZPTkW7ZzSE5SipmuCsWWAAUjnkHbeIXCQqc7gl5h+ia/Armc+vAPUDBAGIO7P0DsgEsbJa42hG7ytELuMuXx5kxXkEK5EpFwLaKcbuw3L/QgmE0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750292994; c=relaxed/simple;
	bh=wNpd4BYhyz174T8gAyCHIjXuqichsKf5/v9j2O7MmeY=;
	h=To:Subject:From:Message-Id:Date; b=rauV96WCe3q1OXKwQilf0BsQ1Tusv4AN6Yvs/fdulyoVokP9MzaQ4gdRdN1LHWMPzLy63YiadSmLmdCjCOM+nFYP9ZNNb5WLtgTFLF6hgc3YohFyXmvE0HmmrtuPkZT9sdC6FzAttXItVniKBMPcw10A+e9zAbLJF7bqCEO2Q9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NXroKCDt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NXroKCDt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF721C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750292993;
	bh=wNpd4BYhyz174T8gAyCHIjXuqichsKf5/v9j2O7MmeY=;
	h=To:Subject:From:Date:From;
	b=NXroKCDtxZV2J4+bXCEKkQaSTmiGBfko8Df+tHDkZk7FJ7YBwTkTliRyhbUzgx+Bo
	 9o+oHvzd2dmHcE+USHZxmCd/YSTdRapFPZCH52kovGrl4CZcKvIdUX7Pg6SuISROqq
	 Fa03bsZ/BfoD0Idai/bsC8Dyif8jE5j5VeWnEQ8A3iE4rWVhusnZk0T0kU5ZJlZDUW
	 iYLQv3ASRu1c+SCdK/0DJrhysxXB0kd5SXF+fOyIGF4/mf8VqXrcZqq0j87uLWuvim
	 /QlI4+aZ+wXVRRHRhN2KWdJPT8bmzd5iHbONNBr+gc3qOERE4psem91071IjXLHQN6
	 /goMHhmQmi6ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F73C71157
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175029299359.25064.15045713639041269587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfee1ff2cd01756d8397302fc4cde4c0d313b24d3c6ba3055de1e8616a99d8db
Date: Thu, 19 Jun 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750292993
