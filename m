Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 527581CFBC
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736568354; cv=none; b=DOA79v/Ch2cbWp39ngzM8p0zGXtf1yUW8Fu9yDjViK4gO8RZTiOfTd1QOThrnnuN/35aVosCa8FFjfDmuXIw3hCAKo5sKSMgMxT+rS2H2jlmNIK1aXVeYKyKnRM1WDu9v3AuiCWUN8A+sI3pS3eoFOtbbxMVdipyrFybcBasfiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736568354; c=relaxed/simple;
	bh=55pjyM8tAB8CZ+dD/7hN/5Ev+G7HO1Z7qK88RQgsv0g=;
	h=To:Subject:From:Message-Id:Date; b=gL6xb6mJrYXEr4mmdODjQn6ECDlkl6D9XyttC7dh1j0/kKQyUfCya2lU1QwbR2CTXiEPETvt9IiyfHQVCzMJ6trljtGO4HYfMgCT0GTF74aFb+hAZRCQDhFk/OjeyxIsc95uoJbBxJkcYjy5AVzFcA4Z9eVf2Nhyu91Bs+D2ys0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sN1QJnAT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sN1QJnAT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA36BC4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736568353;
	bh=55pjyM8tAB8CZ+dD/7hN/5Ev+G7HO1Z7qK88RQgsv0g=;
	h=To:Subject:From:Date:From;
	b=sN1QJnAT5q1YPIFDq005My16hxDwY3rxSZVSdhRGBhJCFSOoW3f0/g2vORawzf8m5
	 /wtfw487+Y6vD//xFg99XXEPktbeBnnBDxA37p3WEKZLSgcIvPfs7e54PFrQhq1+UH
	 aqoiSEtwbNRQRREFKqAuoafkc5VdkNaSV2kuoOocLedNZyzjCWz0G41T8t2ASUFy2W
	 PXbLKOT6XNu6vPTiy9cIDb2w5ffVHlOFGf4hwXmlOEBLIvetSAP37IryWeKnSzc28U
	 KQq8rhi1eSqksg9xTZaefR5cEwOzdFRBc9JcYlkMhYkIpm/P8BUShnUMklD3kY1Dnz
	 pCj1VEY0aoXwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B245E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173656835358.23519.15645034406075801917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5923e91f950799b699f7f590b0a2d0a517fc04f3df9d81648954b3216baa5906
Date: Sat, 11 Jan 2025 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736568353
