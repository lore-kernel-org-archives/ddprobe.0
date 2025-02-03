Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47AF4200BA9
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738580754; cv=none; b=Zve6jwzfbCf9gf+fuVTudKub4xzJLmEq18qVyI1ee9W6jhGZyAlBaV8tKQF1AABo8vj94UMnvs/OnZTn7vyJPl+ZHM16PMAQ5QYMRP3be1UTh3NBNinv/tgBJb0HkyVzZSze1CJnfyEKvWNefyBKXN2e1m1zVfKXe8juY3tmAzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738580754; c=relaxed/simple;
	bh=G1cr+Z7Aln1DQwf27Wx/nh+GaepAayeAvTRzgKpy8io=;
	h=To:Subject:From:Message-Id:Date; b=IIihtnrge42bZRYnzJcDzuryo5wJ56Fnq94aHjAhP3m/2ZqNginH26ykDLtUAwATGfDlthxNuwhOAdfDBiqzFSTtPUoHLIUbLuntmpr7z8uFdxf1p1gOry63178e1AzT3yGUsohXhIVcfJfXgeC1rWQuG+YLZd7jUt265RKqd5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ub9DZc9x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ub9DZc9x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5A6FC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738580753;
	bh=G1cr+Z7Aln1DQwf27Wx/nh+GaepAayeAvTRzgKpy8io=;
	h=To:Subject:From:Date:From;
	b=ub9DZc9xrRH+wOckXo6sLa4VVzAJ82irNnj4C4xyvUo/ndl+mhXrguBVbg8vW/aVp
	 tcRMNcI6Js+ihKBg4iAOhr2AreYKbYaTodLlaUfHhMCFgDGIyITzPy4A1VcPLPWFXZ
	 YrAuWBKvSNdyFDsKJMuAHGaR0gaTLD+46QqYEsVA++yzGHr8Ldj9PKX1WAbhixmIms
	 XxBCJ3xZ36QnU2ki6HFPNtOBBq3eHm9Q1ehAc9fCHWny6S1O217cD5SPZATJUVd1IA
	 0tGAabyKR2OmOvlCHVCqXS+FwN7E48W2cm0aL269ZYViOpLBBo44Fk4f3f29afnqjd
	 /oCwhdMr043mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F106C02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173858075363.32283.14357540954616234395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39532e21abbc11cedeb6b531088dda687f7d1a6c98bc8fb1704c7ee941fddef5
Date: Mon, 03 Feb 2025 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738580753
