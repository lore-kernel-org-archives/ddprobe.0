Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C4E8F6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 00:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739753934; cv=none; b=OB+6tQWomQEIggcjcqZc8IphaK7e265JRk7T+cM9tfT3w9wN4GN2nLCqoqVC7rfET2RPULhonibCpMtWRhPTBCTek6r/LEHzdrTlw5vugeYaywY32Ie+CGNqDcKttUtrHytq1p9fGM9RvayJqAl2z2O5c8VmRNGXr+JAYw/4r0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739753934; c=relaxed/simple;
	bh=d647gS7P6SAIncuWp+XHMAKwsqWkFMqp5Csu7fFzZQc=;
	h=To:Subject:From:Message-Id:Date; b=oYAqVz/DR4ldSHLuu8az2b5W0cu6jaqNeIiZfMo/xPSepvN0YvyAiccLE/unOQzRkXXxwrhfFgnuoBWzHkbpOiR/bAcE6cjuWk7megrnN9vgRZGUTHZ6/EzBdhtP2UZXzVQY7q+Ci8nGlip32xm+MNKsQf/ZngRy9A2ESZZVUiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sw+HT5qc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sw+HT5qc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5485C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 00:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739753933;
	bh=d647gS7P6SAIncuWp+XHMAKwsqWkFMqp5Csu7fFzZQc=;
	h=To:Subject:From:Date:From;
	b=Sw+HT5qcYg48yuxDqGrjz+myn6pUAt+j7vcCyn3RrDqoBSVaD4A2hLSMCTTubhB4e
	 xrksXl80kmNAYoMJUAkbboDvdsJRTwBi9nTNnIWv3ayzTbBInvk52waGr8nf/anoIR
	 dCrTsRoQfliQqvK3AU8xxNg4cs14fB5anU5RFd4TnkzCpbzjMVd79tx52a9yg710bp
	 v4z2dN1RAHqVFFrOVrf2OmYvVwwyO79JoxWo9opnH1cOiSNKdI6+a4en48DlzeZDnZ
	 R95bn1CFNqtks4G9M/j8HBLQKTuF2QkaeqM0O2IKixGU1Ft0piyPuav8vXP4+Pdkmi
	 rohXlfNlwLCIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90885C02198
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 00:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173975393358.26525.11983214366698060393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdce6dc2104998949ee52eb957dc48b783348630ceb65fb41e92066f418bcb67
Date: Mon, 17 Feb 2025 00:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739753933
