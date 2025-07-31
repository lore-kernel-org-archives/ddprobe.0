Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC4C239E88
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753944595; cv=none; b=OphDr4WknDw147TV22ej8MGWbfQMWR//FpxJqxZPZrpRU5ttqtTDYDZWwDW6HQxF5sz583lQ1p49duSkVbeLq6riQWCN544+vYSZ4LNlcEWXpP/Es3AguSBstvah0RBlvj/b5bLEmjamKFxKPcYSsRRKwsq2xfSvnmY9c0wmSf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753944595; c=relaxed/simple;
	bh=YkXOag7DuDFDpZOrO7xQs911+k5rSGvbhoypMhHas7A=;
	h=To:Subject:From:Message-Id:Date; b=peOeYwntu66tB4NRA/7R+ycKmhq531blRtzklTfHi64dwy2pKHExO15UJYin2W2eG+xDXZyxWr+wcCE5h0wr3tP/icTH2+kx4z8XMU3W02/ix0c1c7gwTLCWReT4yQgmEWTs7vqHb/3diqmg7HwnS3uOCJnEZXGoISSeca/R2Y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqeddiny; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gqeddiny"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1176C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753944593;
	bh=YkXOag7DuDFDpZOrO7xQs911+k5rSGvbhoypMhHas7A=;
	h=To:Subject:From:Date:From;
	b=gqeddinyZ2X46vnbJViLHdNgBicQGx/LyUMK5V/KXfppRzljs1b8Up0Ebtq5TGtus
	 Z6iEJXmS6oI0HSYjXx0dwIRb1Zww104E8zPzr8QR1wPCbHJcQoADNtmMfxWEdgypf1
	 hLm/iufY/XQ+K7uBT38qXc7b66+kSZTirCGbETL0LnWR4n2xjj6w9cLcLuCdc9b04l
	 c2aBJ2HauMW4bn5GSKXmgsVJeTwi4oBlAFh8A4T6+skYknr13sQUs9ATr3ZcmuE5QE
	 PMQPOkFe3XMB+6zMggZZ7Vs9ZU+D4OCGGYTRAp7hBOd0pOwboDDsLb+KXTIDT83U2R
	 fdsfAJsvpwcNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D7CC87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175394459357.24895.2765615697305257585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaa4528c519b2fa36c85e85a23168ff9a7008f3f195cc3d08519d2c48029a8b7
Date: Thu, 31 Jul 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753944593
