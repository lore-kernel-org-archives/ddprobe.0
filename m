Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E7BA4A2A5F
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 14:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791210636; cv=none; b=A24SEWQYyXaMWlsYMLjEjmqkvZrwyWKsASuYkHSBl2QV/HayDtyOt5YD+5Jn5+4I07mGv0F08j9rrkj6roLQIug6RNd949zbd8BwFU0mDxPRQhfoKPk3ru9KIPHOgRx3fCfgJa2dnTGUSYyqY6wS0b0mpRQW3EzqiOLx10ddJpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791210636; c=relaxed/simple;
	bh=Ff8Df7ftGbEXevgM5TWe+QPFKFI8hJ/BfT/BkCRfKMY=;
	h=To:Subject:From:Message-Id:Date; b=eOKdYlTrAq/kwKCCQKVXSwjCKEP0x0j1a/cOKQ2M+CIQ660sdufY3WOhA1Eq6t26Alr8epPoxp69RLl0GiZnTpMBC1noRLzxqWIKu3Kgy6Rmb5/rVR+ur6e196sCTHsQJwhb6XQQ+WG6LKIGovjA9e8zasEWcvDXhSiwYd/KQ3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ih7LKjt2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ih7LKjt2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEC9C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791210633;
	bh=Ff8Df7ftGbEXevgM5TWe+QPFKFI8hJ/BfT/BkCRfKMY=;
	h=To:Subject:From:Date:From;
	b=ih7LKjt2i36CII6ooHLIafdGlSZO6mLsHf9QuEZhjydK1VIIgk2BcQEbWJd/UA+EK
	 REexSs3ahra72HcLKhgoR53kgwHH1lyjFXuk76PYQk7BsdVRbaDrzLETw4TR5B+rsr
	 kUIDMWGvJEuYOQlUxOCWBxno/YMsrfFRwPAlFLV3Mr8cIEqUGh38e0r9WzeGj4buNL
	 olwgCNru2MM5dnMZn+Fird12PhSQRuleSp0G9NLiS+peMrfg5CpIjm4AT60N3p31qz
	 cwYOVGC3qi9aNYRd7pAZFulDAr4FSj+rMdxVySQpNDvo4F5sQqMeifSGagsj1dDi0d
	 7Rb+JF7zdB9hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA4FCA5FFC
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179121063368.22712.11351568463974610917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f72a0000d421ff7fc47e299a24a1ec0001f8b13325af6fa0530264358d40e44
Date: Mon, 05 Oct 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791210633
