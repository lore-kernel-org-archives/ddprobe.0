Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE953B9D83
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790698834; cv=none; b=l2hFXPuTQmjMNI6MheVMy4Nzh0XCpKAIGQI2EjeItrpyITxqhjD/uYN/+667UdTqxnPSDhIx3fTmdkILJk+MPZOF+0LDFSE+WLhvwCND++5l+GMXaudrtI0Rvb5dBejeq5gA/sSuj/j2fczLHu1ZlQzuvJjrHH8See5DKxop3oA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790698834; c=relaxed/simple;
	bh=yMqCnsc1xu7g1TnT7K99OoN81NaMTTZfNVILR9MVzHo=;
	h=To:Subject:From:Message-Id:Date; b=QnoBLAehI7cjxjcrYtLaveIAWJN1FmZObh1uV/Vi9lBwTnsuI5efct/K4W8IOj3+uP4dukYL7pQSDiwGHc5YoTmQyyZWPAj1y1SB4zdp1LwWhYkAKu/sHWE51JsP7oCP/W8dy/CXYSbuDfgl8nHL0yLUO29gnIDCNel4m8WpZpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kU3WmvE7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kU3WmvE7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBBB4C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790698833;
	bh=yMqCnsc1xu7g1TnT7K99OoN81NaMTTZfNVILR9MVzHo=;
	h=To:Subject:From:Date:From;
	b=kU3WmvE7NbVbEr9xRoAIHJIyVvbu50gvTb+mJBtCyQjMaCJAMpJpTkRJ+lAtXoy71
	 K5mFeGfIBLRKcHBgVfHTNFw3hEkkE8tcsDDEcvRUtxRbUzw62GMPrsvanPfgiH980V
	 6SA70VsYu+LMcISRaItI3IzqUktXhpd9wO7D8huPi/QlEAGiBP4Yu2PyB5/73yEebj
	 NBpzrvIZv7I0kMNivISljjQyr6TiUoLYUC/MkuwXzsmNlO1MKe9FEeNulSRD24LdSD
	 Yn+cpMZO8vD15zu+dDYL7ejQzR9eyGU70OB45BEJu+KLDT7oU8vnjv1SqBa2YhurBe
	 2wMPBNJ2LfmLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BCACA5FA7
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179069883368.23730.10774934691775951329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db77200dc2c4f846097dc9ced9215d79bf52e75aa5cbd32578296751c94dadf4
Date: Tue, 29 Sep 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790698833
