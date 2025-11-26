Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12BE233F36E
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 16:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764174174; cv=none; b=Qo9GoedpOj91zgTZiQhR1GUyIA05hrbG1qzyTTCpsrc2Vcj7yKfbcUHB9eK8z5MOxKu6O9kkaoFhVvMBE2VX0OiEZOwavJ8UW+Wo9Errlk99drptj74K4kWnHBKOsaPrRT89rs4f4ZnI/c2BJsDDzLyIIhmDI49P30VW44+IAZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764174174; c=relaxed/simple;
	bh=nz86JHDChH7iC74sfkYbWGL3LHXUQKgZoB54kcmJ+SY=;
	h=To:Subject:From:Message-Id:Date; b=A+LQKwlmRVXIlbil3l16Rrw5pU3fMB+jXalH8NlCiqxiItiyyuxvBoC+qbkLbTAY9tijvizEDO9p2AXSz+OStLIxyKskYSF8qepCACn1jPnjij2F82HE0YtYyIEDOa3jZxMWhsF/0nC8ycQVsNDtMZH0d/2QwQBEKXkoRbh694U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tqEj+E2v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tqEj+E2v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE58EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 16:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764174173;
	bh=nz86JHDChH7iC74sfkYbWGL3LHXUQKgZoB54kcmJ+SY=;
	h=To:Subject:From:Date:From;
	b=tqEj+E2vZrj3P6shAt6za2FyYUp1r71c0dillfWB5E2JEsrnzu20FYj/TtKYXw8Jz
	 Sd8iZvj4DsPdnAHWtIETA1LNAb6z8yvtB7wyaRXPXd9E/NiJYjWvwwzFJijcwN1Dmn
	 8ZbGMCc6Mw+nbJW5ACi9I5vu8hYRQyrfoVzeuW9tcmCeH4cC8PAd9lipvd2t3FIif8
	 KplOeJTLwObJAbuaiVL8niQDUKtNVW/+IXg6LBbY6XvHfKBgDTJXnQpSonIy6knbku
	 QLPFo08ZZlorNsecMgPMpNBILITqseqStiLDrI5d4ZpK4SxvaUoWVn5ZIXy2YzTcXM
	 NZ9UtvyAxvUgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0F8D10F58
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 16:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176417417361.7472.13471711881567411418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bffccccc197f7c7f18a23e4f8dfd9054f24149e5654bcc76457b08257dced361
Date: Wed, 26 Nov 2025 16:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764174173
