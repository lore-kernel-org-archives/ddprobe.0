Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D1C3A1E77
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767572634; cv=none; b=P19PYRtoEulobqATV9AgIJ8ydWYv7J+VO+cj8rYgp+hd3mLMArDyTxL1nK0dTZPNr+ubDuydust5kOYRd6YC0FiOPiSR22yRASOe0rgw0Fc4RxMq7/FvDHtZajfxWWPK9mqxo2wVEiUPlCMiLBS2fKudHMxAAjvz2RYhXvqm448=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767572634; c=relaxed/simple;
	bh=nF/Svx/WGmM9LnV3UdhUT9ZoiS1tiRkuwpxhZA7MaxY=;
	h=To:Subject:From:Message-Id:Date; b=Dg4Iy4wxq1J276omZvTto8MHjvUQNnE+7LY6laY6I2fZFhoNBlP/7qPiVEoncKM2Io0PMpPKPoYKrAkNSUPypLssJYL58xD3FnIrgpdiLBiN9w51zandnZEN7N30gaIZarlTncjkLANotm7MVmKxKEGmmri56Z29bv6ZDSXxmdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XINiyDBU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XINiyDBU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FD0C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767572633;
	bh=nF/Svx/WGmM9LnV3UdhUT9ZoiS1tiRkuwpxhZA7MaxY=;
	h=To:Subject:From:Date:From;
	b=XINiyDBUJU/n/xjfS4UTuhJpad0g1Bmye79FYDf51OtKq2rp+HMLx/PBD4y430igG
	 srAyA0hN5qTEOtgTSxdHN6CS4j1RE3/ZWT4ZVeo23cnD/zeXSBrWF99WY2xYCMfTkZ
	 +aDHOo+YgKHFLjtmZRvtVkrgAiuxSZs215LjwPYix+v63uPehK4v9DZi8oCB6dkMuU
	 GZdRozPu0R3Tnt2JrPS6V6bPcOIJeT2RnxIwhspUf8ye/2c8xRlKwGbZ6RZvR16coa
	 lGySzv1G5kSsxhmtMPOsljWv4nkjhpLr0InwfL+ijzHuFvXInrPV+jwFlt+XlEzA4i
	 pBhyQ1diRnaBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923F8C2A062
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176757263357.2982.373218606236910740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf6fb3b8ef7d9e4df639592fd92f436673c6020ba9ebfcdae38075fc4b518d3b
Date: Mon, 05 Jan 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767572633
