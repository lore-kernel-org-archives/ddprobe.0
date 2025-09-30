Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568F41A2C0B
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 23:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759274394; cv=none; b=G0n1PUiVi/18YxsNrqvCZW5yxbtrGCKu/rvPTrhPj4JpwvhTZnfzx3aysecehMYchh/qin2A0ltZ0DW2tVX7QrsVBiNe2lepOk2FJ9qRdtQG+rouWNlBIh8MTwZ5Kmtk0igPlPGJ5IKmpfEkCaSvuyvEV1IRzJ2LJZQhZ3IogOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759274394; c=relaxed/simple;
	bh=0jdDr0g0zz1RlQRQOezW41ILAHCD+mmzFAMnSLXB4Uw=;
	h=To:Subject:From:Message-Id:Date; b=QAPOR2HBYJpDBHp/AhMNb1DrDo+DhEz6IDeNtaeCGyGEMPZ7at0lobWWZU2GCX5jv/m6dxZMdbNXSxgfl1rNsBIeebci37XSuCZxSdsmZptN4hQJfv3XzWxYImhqy+w1tu2q1YnuSFvW3KkHNuBvbf/E2Bs4mepxHQ/dNcK/tD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rlb3uwbc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rlb3uwbc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E885BC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759274393;
	bh=0jdDr0g0zz1RlQRQOezW41ILAHCD+mmzFAMnSLXB4Uw=;
	h=To:Subject:From:Date:From;
	b=rlb3uwbcmbuBs+hVuPpYYsEM3BdThDCDt4ngCd3M5C9lJSozg5WAngcWyfFQpneWx
	 ph30XJcJAGZK4TF6cJGJM1vEAzJ+jMWFzIpzQGr2U2H4Shz2R6e/KvVn54+jxqvger
	 fewfsG3w9L5+Z8fTgaNZ4AHXsv0sXDtOkTc2OOOunmiGIlpP5ZMBu4EdtA3L6trfoX
	 C7D05TwD5Cbi7G7xliHhezLp001LB3+Ifwng3jgysiE85sVW1lIMB9maG8XpYJbFS/
	 +f1NN8vlU9FX7re0I9QVONzFHpjByTe2R94HD4pDWSOabEu086NwPwXGDfeUapI0j9
	 lSezFHDnzEQSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA58CCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175927439366.7540.1418301461306938505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ba2b0c2dc3d438f56fe71f1b21ce77d89298de5c9366362f16bfe587dc79883
Date: Tue, 30 Sep 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759274393
