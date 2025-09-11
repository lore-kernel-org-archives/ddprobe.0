Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132952580EC
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757572194; cv=none; b=PeiNvW36L8Njf8f9Hm5DOC9PPXfAABV1+CNcekrYODuJgdj+1y8rivFvdG+vHzUCDhYiAda4f1xt2Y/q3UoEagBFODyU1a2fmCktb4R96dTCJ3E3O1xXEM+CXiS2iEL50QnrZ/oWo7w5sv1ZG68lq+3hj12VONKl11psApUnf2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757572194; c=relaxed/simple;
	bh=H6zUHJoPBFkeZosP1ONyNDU/IuHXz+ROadDPT5ITXkc=;
	h=To:Subject:From:Message-Id:Date; b=L5TYXGEQ+rTdBtkFtQopm7TVWyGA/dUCJFbRkxopdH+aogvG/2GY1fgulH78PiCxNRybsFoAYZq2xdCjZIACLhmxxB6t6101eqCNJGP6/VHogg4cScVPl13XQLgieZaKGAvZ+qDWQ6wOduqcPTcA1Lit1d7o4qSUWcE9HToiKCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y9KrgYnH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y9KrgYnH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2ADCC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757572193;
	bh=H6zUHJoPBFkeZosP1ONyNDU/IuHXz+ROadDPT5ITXkc=;
	h=To:Subject:From:Date:From;
	b=Y9KrgYnHdimHgMI7jRI+gwRjY5Jtsoiu7JfbG3erW0GYP/F7nAN+l1va66zTEvZqJ
	 iSvv+wcxU03kVpMynUvvw2ypPUtbr9V++dQhsn1W2quPUEwlW/jw1uUqRrM5JSFcCU
	 ultjWODqOtikNolwNRk3IixUG6Dyrz2RIQBkxDMvB3KpILc+zJaocbJnzD41A9HcBs
	 D6S+R0Gk6iSeEEeRt9ms/3eeoHZu0TRe4L/vh/FW0lAOlIsCpN7JErAr8g93NNSOeN
	 Fqfeli8pU9eh63wNAG7H6mEntJsBc3u6l6x7pvh4WrWIoIpHeIIYlXO0s+aseDyJT6
	 rVrckUHceuGAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9549ECAC583
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175757219360.15767.8180432850508596880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26ba83a70cc03f67ebb63c28c2f42d5cac4fe66a6069a5d86a7f483a185b627c
Date: Thu, 11 Sep 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757572193
