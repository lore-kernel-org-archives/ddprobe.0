Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114B01547FD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732080954; cv=none; b=X4DaDTNZClRTHbATXDiO7n4SkFfKzlG3dBKlp/vbQWMNpwlP3akgUnZJaCTRPVAezlDOzPuvNW1s/sJH+3HyVOBrc7LFEwhnoSL9V88wuJjAWNeFN8m8gX+u5GphZImWpBbeVIBrjuVnJzLp/WfNzIXR2P5+NLj03xfpE2uT+VU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732080954; c=relaxed/simple;
	bh=G5994Bn7fe82J+HtKy9VP/DidAqrkeBbH4hEstHErgk=;
	h=To:Subject:From:Message-Id:Date; b=ggx2uLxJQSZJXZJU+BruOhirbPDKPAVCBsZxF2xloEqpwMG3h2lkYDSNYnAu72SNkLbVfQWP3wfhuO9ae6oVmnGjF3Cx2QjN2ypiSg+IGz652AqoEGI+PIghYLpgqkoV9bNYAHFPOsVv3mRpEYw4F4R7UtculUYdOFfdJkfuDVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oU70WIC+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oU70WIC+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53B1C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732080953;
	bh=G5994Bn7fe82J+HtKy9VP/DidAqrkeBbH4hEstHErgk=;
	h=To:Subject:From:Date:From;
	b=oU70WIC+Fox2mJxCJ3sjHDZIiAAfZY1l/0hdVDqg9vQ9Yfb+xnJWolyPqdFrlncaF
	 DSzpZVuwXEKM5/cRM0z/GrT+J/50ZM+6bgnuCeTf8taR3oawrEvoUZOOuCc2Y0r1U2
	 kJISi7GCIuyLclu3F4xX5p5pCRBvd2ngRj7BCFpVaZwauj+vN+CTYa/cfxrXQPHGyO
	 miUm4n0pUZzxu8jAkS49B0sduGh563/LTrRdmBH5tsxUus0HDSwgZRjPUd/yngrdyE
	 eZHLedOhwxyk05c9gEIGhscBbdIBwuic8hYVaMjVg3s6VTgeBf9d1NfoRNIGy3DaMW
	 eohHNEd/uWMvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92275D6E2B7
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173208095358.15918.15266497478274880206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86aa9c29857ed884ea0fe4ddca189593296d91f760c9fe55ddde17cedbb4d126
Date: Wed, 20 Nov 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732080953
