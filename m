Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458A1221265
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757042994; cv=none; b=lCJBHAJdo5pIddOytRvryMVANAoX9p9CVVMcPViIG0h+NK5J5IpP4TPoTAqpc77cOVEf2tmgi7D23ijxdNi4Ci0DY1bdkLYWlsRnTMZ6j5eh0lCNInxB9h7gv7SsiX0nURSZYInW6pSyimO82DMhQO8FRYAbr8hvBWT776Gvf4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757042994; c=relaxed/simple;
	bh=hclp2xXrRDtbZx54Ek25PiHC7Jzs9bnvvZuhJ6/HgZE=;
	h=To:Subject:From:Message-Id:Date; b=e2h4lGz+moEh6BjCatRAsNmbPI47+k2bX8MtD5msaAhAzCC5IKOudneH1Mh5PT94W0t3JXwUp5QfqZ0uNP2HJeNVNK/tCXU/Xdv88FLEV4G1XLBA/CLV1ePNjSXtatC2DDNrl1kt8SKXnC17nOfdg71a0CMn2DCKPyu6YCVlStA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2GqHpLa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2GqHpLa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B77C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757042993;
	bh=hclp2xXrRDtbZx54Ek25PiHC7Jzs9bnvvZuhJ6/HgZE=;
	h=To:Subject:From:Date:From;
	b=k2GqHpLaOzRENCz3OMRDWbe+oOK8hpDU7r3RG3mV3Y/imq3WHCRo/eu37W+TSv9gp
	 zHWyfuWSkMO0C5i/DkL19n+hlQVxWY0aoR65J7Zd57lomYRy3rv7tTSO1IqEal1hLt
	 wKebAbZneAMhMDFyDG1pW7BdkJFeKapLc3jTTZNuDT0J6Nu/BCns7HHyrhInpey41f
	 aA6Q5ETbFQKbtZA/hjx14yQuohb+wUNnU3LWePjBuIueZsATqZfysYkHcJsYPYDft3
	 6UeUAriFiJJ+JaP6ODItHhljPy+INWqlQ21T8Pf0MK7Kemo3CKkzbiY8R6BAIUu/pc
	 w9uCexYk6qECw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F763CA1002
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175704299357.15719.5557694130448812686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f9e4677f3f2a844855a690efa4456fbb1c343141a9cc0c3488bd1088ba36a52
Date: Fri, 05 Sep 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757042993
