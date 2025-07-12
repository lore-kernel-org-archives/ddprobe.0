Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D523C3C
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752352194; cv=none; b=qClicbYrEPYz3dFLMYYbcWiLpJSOopL+OgxDZLWhJubcPxWH59Xmk7Lt183l0ukw3iWVfkNinYGAtUi9xs1tA15ZW5+J0Ko7CiwdOiuoB1DIheo0LFqVV9QxhwKHPfyr5YLaZ0J/gyycaxx7YHOwsj/MBWby4e1MB4O/Ae+MQMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752352194; c=relaxed/simple;
	bh=w/94mv4O8oRzc12X6GbdGtUIEr1cJI05Ka7j0YbdcPg=;
	h=To:Subject:From:Message-Id:Date; b=Ke3BF7bnBikRAefDcsFTrUnNF3g+4y+m+PjaOZstgjrmT8YwxiPPdlwAb6kwD2vzV6IZeSr2//5vh8Hx3SCjuivwuX2gSZIc6+v+hNeFmgCMrk1Cgjy31uBM5tjSAdiXpEZ1ofcNMR0/s/scYDJRO6ZrJVwspo60ovkZ86KAnn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h83ACpDT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h83ACpDT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A253FC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752352193;
	bh=w/94mv4O8oRzc12X6GbdGtUIEr1cJI05Ka7j0YbdcPg=;
	h=To:Subject:From:Date:From;
	b=h83ACpDTReeb6G7TQ8RhNpp+dDewiTwQVCi7AbuRlHzYWYsjldrDdArJ21TtD+4Kd
	 rwJzfcB+EBzX+49VUDuiBCfdFFZzc3johVQnP5vELYSQXQ2LphP8t26bG3ATjeqb1t
	 rHrDf2DDLE66Wcxk4S/j4kBb4FAOwPHI58lD4QWOnnXPR+/C6I5ICcWfKb9Y2u/pTu
	 nQ1Q9pSqhxxXdUGKG42IVtX7b0sZxAKQ9+fFLWuCF/EZUFq0GulsXhPaLp/nA4YQZ5
	 kJzogOTTpIcjAsKy7y/mqw7u+E3jHw1fnkfgk2IAINrLLimLBKSfzF+fExSP6aPh6x
	 kpXE/SEpDgu2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F32DC83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175235219357.32355.18352957641423409144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c510d580fd62c4b2d50d393a671cef98e7646fcedccf398d1e758b9991a1b0b
Date: Sat, 12 Jul 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752352193
