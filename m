Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5B4155757
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 13:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780752874; cv=none; b=LY1hjDBTO/dxLvuvtG0522tRJ/+XtBF36jHLyu1Uc3XrRW5vjONT5Q6aykcWYwdBEwQLfJyBph9QlgviwD5aUn6h2qB0WKbzBUW4Z6FtFDfyD7j4hqPfpgml1v6IFYcnGSq5GySRsvJn53UB2TuKZVLsZ6ok29HIHNSIiBZ+zM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780752874; c=relaxed/simple;
	bh=IY1EH+LGgwNIzVF7A+dU9IPINwOqeb9V3xi1k4ptgds=;
	h=To:Subject:From:Message-Id:Date; b=DwbvCsTo0T25/C+I0slGfhZSnDU2LGGfQpT/LidPjFzdvBaYUzq3jTAMUZzkjLOqACjHnOkOiCoOW5FIyNIUnSmzsT9/Wb3+hg8qnAXdxlmXSftFunC8/rmqoWpbK2D/+Q6KVC3HK1hgeR/9Vh3WoKxD8Y2K8H8kGXyPbfotpU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSm6U8hA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSm6U8hA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C08DEC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 13:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780752873;
	bh=IY1EH+LGgwNIzVF7A+dU9IPINwOqeb9V3xi1k4ptgds=;
	h=To:Subject:From:Date:From;
	b=bSm6U8hAwENNYtPrG32sHs/gGW1ETtZcY3V40GWvFszV4NNiAfzvYsLjGTnVE+LAG
	 /jj1gwjFAsxFrELgF+SO/GNNJSaA3F5sBGZB0DpQymEjXZflzXWUvBUloAYzqfFg8o
	 O7e08wk9/C9On79ulAJc+PkoNUB9+qCri6m1gWhnDsIZVscbNEH+q/wLn5ULtshlPN
	 WydLdUObivylmvuNgWZwhvmBZBUUm3ijdEnarRzhznuAEiwKIEFuRLYBJhImplhzji
	 Sp5swn+CxknxE2ayvI0B61k+kW9b4nrjMkVBSdTuIq92FbG7RqTLEyW6Av08RcftNq
	 ZH98cyqd0WJdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F7FCD8C8E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 13:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178075287368.13002.15334851751907330616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fabbbc0210680497b1fd81f5d298dc8aa6c76d667c46f5da1cfd340718748251
Date: Sat, 06 Jun 2026 13:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780752873
