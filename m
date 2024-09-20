Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC9754907
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726815954; cv=none; b=t9/SiL4/pZq0cobSEk79eqdQCYafhPEYRbF4tLXJ2rX8mfuYi7vueGqUclYJ0q6mrONkq3Ci09eulyh8MUHMCPkZ63gRhseXDsHyPGeExbUvYPMnOLtWb+8HRRsV4iK02QLzPHN0k6L9FTKcOgl2MHvtVUPAWOxO+VBR1g5/AV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726815954; c=relaxed/simple;
	bh=HogRAUPFOOl0OKa068rqvJJz9dFOEguSvEcme8KCcHI=;
	h=To:Subject:From:Message-Id:Date; b=WyGg7nr+T6fXq8+A/fOnItWQO3baDBUwkzKpEFGI1/yzCj1baqZNCNqcVnVjwAglk7rRkkRZUguP+ewdgiNmMT+CaVfToh3sn5X/2r7rCEWf7aBac63talk/5adbM+L+HCevIcs6pXFNIr2FbN3O/TI2rsDo+aHHheja4YFUZgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pwd2zP3L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pwd2zP3L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3610C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726815953;
	bh=HogRAUPFOOl0OKa068rqvJJz9dFOEguSvEcme8KCcHI=;
	h=To:Subject:From:Date:From;
	b=Pwd2zP3LPHDUQMEBhEvdcQEkJnJC3fVpHMug/nQncM/Q4ecJAis66t9B86tDg7/6a
	 jWyLKNPjkULopOvZyaJXuqAT9/8FsJTpDijc2LliS1kmd0dEFgTedGvZRqxu3PykZQ
	 BdZJji5HsWsqa8Wzn2TMXuOmjye5J8KrAG2/l59BqtJtHfOLdWEo1E8FwC3hJVzzVw
	 o/JFSTsugrYGt9xpuJr7SZN/7saiYE80cgL5OwIEqVrYOLCJdjR730/FsvIZoboSq1
	 MwOENoB0nQbjcQSxbhJsmI/C7hxmyKV53btljNDrvEQw+Zeq4vYqDy95aQuNgO6mjH
	 kPvdNg+7TU54Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929A2CF58DF
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172681595359.11302.17518129315274645002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d3e9e605a0b5120c92ce99dea6abd6daa08001c4a6dd1f400ad709e7ac9774b
Date: Fri, 20 Sep 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726815953
