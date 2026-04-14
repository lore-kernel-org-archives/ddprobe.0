Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E86E190473
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 15:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776181054; cv=none; b=ReENNYkoK46NzgfAGI3ehF8Jr89MpfIocjQ4yJfrc+0EsTd/6JvHBFjPNHPDTDOZsMtkUaVQuqi/TBhYmbO7T6xzYiGAOlITyA1P/9HP0XKhWCc/E+pKLRvBdGaehNrwIIn/4CIDz9xlnBdXBs/iWfUOMFbd7IG21ljJmJ9yd0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776181054; c=relaxed/simple;
	bh=1HpUK8teJwYOudCRyg3A1EbrEldlfGgyFXxI1twKK1w=;
	h=To:Subject:From:Message-Id:Date; b=DoxWksH7oNDxueEIQGHJF518PNQTbmaE1yZ8b+avcAjrWaxPuRSfEr5ki4rpFAV3h/JIuXGweUfpteszVlnHuTK1wQald9lWlJ7929y7R4rm+8cfjmAB41x4M5xv8kCoHfTzhlPPgLR2pzrdmfoXqO5HjtQP4AlrzQQAvr7X9hY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HHQVHJT3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HHQVHJT3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B74B0C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 15:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776181053;
	bh=1HpUK8teJwYOudCRyg3A1EbrEldlfGgyFXxI1twKK1w=;
	h=To:Subject:From:Date:From;
	b=HHQVHJT3Y+D0Bxt3PHtkfeJr4DowkWFKRpwKbID/zhQy9NpxU/wkc7ZLDjdb3bfoz
	 HPT8EoUatmqDSGkMZJg/50hVYUceqjf4BqrshvW30Az0Va4U0TcZqPkLq/jLw1IvQL
	 a9FSBAZrfQrh/5R31Y3IF5Ya6xsPuZ6pdLr3QCYePEk0WUFAzWCSuvMsC1uqZ7iq0k
	 bChN3XfMKoxUsPTEeqYiVQj3k7wMU3vWh3v6oUW63XwxAUxTuKzv7l2Z35riRMhaFJ
	 kixXla+rZZ+0gY25hFK5s8u1f71NKqkuidQ151w8qQ84woqmDRHn7i0pyMx8K5h8am
	 dOvK+PFewkC0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97F7F9D0D3
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 15:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177618105368.26854.5589190163974283811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b34146928c8c1cc8310118c4d9b9c62dd7e2f601ab44fba9da60e079cfa7018f
Date: Tue, 14 Apr 2026 15:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776181053
