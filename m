Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C102209B
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729439754; cv=none; b=MSf4EwxLkXgHsurYx50eV8aPb2maUbW6XXVY/PHZ56kiJ0TfKeEVHtjlQraoCvaGpiWsKg0FthcjJp8WntVn2MjtIZ4dg7kIigLIrPu8FSf2tg8ON6MIKXbDFesU25qSLU9EF1R5t78R+THfbAY9b0YcPO9/fjg228d6CZ2q+gA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729439754; c=relaxed/simple;
	bh=asz0zCHNSUkk41mw1xqNu/25GDzo+cMOhUTLgy8MtXw=;
	h=To:Subject:From:Message-Id:Date; b=fAH+knu+7Wnx6JDK6pyPOnPhXF+7dKEmqthj2nq7UOwLMZbX6LTBBBEU5voynQnv/tIsLB7P4PTISJN1SD5wxurkgXgLBNrcoiIJY4StqqSqozU9V3ODEqvYzdtpVUGCdnZG4K1kCBIf4dRdnv1Dv3nyJ0n2hSp4O6Co5v2zqTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lYrOARQz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lYrOARQz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9400C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729439753;
	bh=asz0zCHNSUkk41mw1xqNu/25GDzo+cMOhUTLgy8MtXw=;
	h=To:Subject:From:Date:From;
	b=lYrOARQzGkYr5SzuwrtsvuiCyFoDEBGIf1YDWSviWE8s9SsH4y7WSSqWWoc/9j+f+
	 XPZVbOzOPxa3vUxKdFWmH8XpKqVrQwNyf9L/bV+gFHoaTAm3d3vxrzKkRntdRpnw3O
	 ZhediLFV06Ek4bjLefZeooR36ny744VSgLw2XRptYW5lBOXPhRXEobYzF8MNXk5UQd
	 oAejXD4rnQMoojTv9SIMT4oLyXTjFF/brrfDvESWn5TeVWNFhIPv/JYTVj7uVj9ajT
	 DJDeptsRSl6MLLvU96xFKSwWJSC7y3L3x2MoTWu+8TKF728gl/TdI6UsZ2prbzlPaT
	 nWMaZm1jBWgiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918BCD3C92A
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172943975358.22266.14550737131465194730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 968d9616235131e95f6092ffd67430dcb6295e72195ba3bea1547ffdd12eedd1
Date: Sun, 20 Oct 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729439753
