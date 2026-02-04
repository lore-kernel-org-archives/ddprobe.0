Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52BFC33B6CC
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 20:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770237234; cv=none; b=Vf5c4/S8pU/lQcPM1DDI1veAys3M/Fc+LpdoH8hETCPJOhpg3DETPSvgiOI2J+54GurW2Xd29ttvFEzM20TR+6tbYvO/2rHslIDd+aOhJj8yDF/IRjaVNtubVbViQ1uvZLSO830B8EtwyvMQJUvRpDs+NBKxQc8bFXnRaw42BOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770237234; c=relaxed/simple;
	bh=TD6G5F2WjO6EgW08lp0LkgCx2deE6H2jGTw6zNMZnMI=;
	h=To:Subject:From:Message-Id:Date; b=RLkoCSUCMj9cJoKWcyRwkOZhjWVF18fSFDPgf+Hn72TNTV3Z4LAXHaP9voNUhElHKKYiGpnD2eK0z4jDiHuGseYfXNraXWJjCkCaTFKUE8JnQyLymGnycasPSsx89pdUpp5fFvArFuKFBqVspCUO28pT9hV+2lLC1RVOTfitdyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ih5hZKP7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ih5hZKP7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDC58C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770237233;
	bh=TD6G5F2WjO6EgW08lp0LkgCx2deE6H2jGTw6zNMZnMI=;
	h=To:Subject:From:Date:From;
	b=Ih5hZKP71HcPP6LKpxCR+WXZMt+SRxVj3/plag0SVKJifeBOc0tHrkl9tPdAHDoY6
	 8l569A0Lp5QhlHOsI5hfuGTkto5T0GN41nQxVlLMvtVNGmw0tRlhNF1BgOpE9akdwW
	 NcpAV8Iu7RdaP2c5pYC4W4NlVsCUcqEoNsTuf21eCLofiNbuszwCv1ZOUP+SLLIrmh
	 JXhffUSSNR3Eokz0ZTHEqUKLuzVSPNkDNNDwTyDPt/XeHqfn0PBIDarwloxUG+dRbt
	 vtlCsHh/tiXvJvi6EccCT6NomUvOvNATsFLUnTdYKajOam4pHfx2D7hGi+SAbFolzE
	 SJj+emerchfrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3626EA7944
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177023723370.32392.1290848086300028930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76b5da7c4ca27f4776f035206576dda781dbdb06683c5a811515b6ab3ffa1a4f
Date: Wed, 04 Feb 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770237233
