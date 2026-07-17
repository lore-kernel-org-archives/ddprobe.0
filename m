Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ABC4317161
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 05:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784266714; cv=none; b=od0KvyWQgP0B5RHCVIfIcTY2oDjDNXf7kZRL0DPOPwN8bkxoPy78c1k5RanjZbCi1NaTGDMpYNBT6r3IuyGBIAMga0+slnTPDMzh0uwlPzw0CZWJj3e20nPDpxJKmlyl2y7JGdd0DcpY7//ygQIkppfeCR+9bvDjeqDu4TlLNFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784266714; c=relaxed/simple;
	bh=Y165iOXRA088K2D1vbEQwxjV1uzgMZ9WBOjDAce1U1g=;
	h=To:Subject:From:Message-Id:Date; b=mv4OCUnnf28YZfPfAMBoV89FQWGoD6HEwVh5+niXdSsFWdNgAtvRtYw9P+9aZNmIJ7fQAx+0YdrrMBbVEEVECtNh91ZSJk2WcoRsEwka470F5aNx96lpTOX6dhxT3wklJDsP+ejAHybzancWrIeJh3pLUbkHYP3DNrQRBVNeuuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hCFLYJoA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hCFLYJoA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D465BC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 05:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784266713;
	bh=Y165iOXRA088K2D1vbEQwxjV1uzgMZ9WBOjDAce1U1g=;
	h=To:Subject:From:Date:From;
	b=hCFLYJoAUaE8pLDXKyGAuCxuaqOfRkRIkFqHamRpQoQbsWnyf+rl4SqtBL2bpb4uL
	 twaK2OLDGTymmBBm5rim3Utjnzj57iMu16V96RhohJso4ru/9U0SIV2+ZG8rl4Pf/+
	 p1KDKBCREaNzc4n1T+RX6CplPv9e5pGyFHKHbS0LFuX4It4KYnKo870PDG8LvWAUoh
	 QzmVhq9lrciHdqt4Zg5F/Y/xpFVA41QPDv62maxlkbwXrxLZmawWeCzBziaBGiouE8
	 TASUmnGynp1hv68BIYkZWaa153NPtACnbWu4HOxe1diWHlKi0TJDU+GxH0InYzYXun
	 npFodUsjgRzMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA64C4450F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 05:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178426671369.849.4750460046543196293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7485caa07cb53fb7f5b6986a1d72de99fee937af7f455b7a8985db8ea9f8ccc
Date: Fri, 17 Jul 2026 05:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784266713
