Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 657FFCA62
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 09:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718012243; cv=none; b=rSpvn7z5XLDNtNOmmQIn/AIJEI/DwIDxYfS8Oa+jyyc52kd2gtMAoMWyWaGozl/UbmGqWqdx1wj4esJZxzSdv7QQvpd4J92eXPI0/bH1fO0pov1YBAKRMmDRfb2v4sUum/jbSl1XiyprtylGZfDeFxKnN1P+Q7fo1F7Gttth/BU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718012243; c=relaxed/simple;
	bh=wEmDFapiVlltkAIbLbWcGNgATMedLmjdekYIK09vAhg=;
	h=To:Subject:From:Message-Id:Date; b=uZZ5+gVBHC/rezqAb86h9WKFcGuYko94CE/Qwf3p9Oj+KXp5hVQTU9b0F0NPeelHMGLsMc0qiar92ZzgHc6b3wE/OMoPbyjAlreyTlafFxkYENOB10o+hHjC0MufOBkw4236eGloRUtQIR2aFDEFAdzf00S5GRF8rQua66W6LXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n5aJiMMK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n5aJiMMK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA61DC4AF1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 09:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718012242;
	bh=wEmDFapiVlltkAIbLbWcGNgATMedLmjdekYIK09vAhg=;
	h=To:Subject:From:Date:From;
	b=n5aJiMMK0WNMVByedfpWWLwlKRRp+RwGAoAJUK/xN+7IaLP1WAJpJ0/YMKXl0J3Dk
	 nmcy9DLCNx2rSrQ8yHsrvHUBvtl6ArKJeB8EmYYVqO1EWkwHqM4V45MkHptcVQfceU
	 fTG1FlfVEtlrEI7sN+1mkT+m9IbqTrpw08gduxe9Noaepurh3ok/oMfNHfVavkfkqw
	 ceNMC4Deqi+vNVJ+GBAk9Ihlm1rPgco31DBBHYwbhpwg2Kp4LwtteQCl41uBwClzWT
	 G+kufSl9cJO6ik1ig99HZnZ/lwpCHWyrEFn93U31dZjHD4eK+cC3O3nbFqgiReTosA
	 XOnec7xaeeE1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9843C27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 09:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171801224281.4918.4410566800694595912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6a33cd101368d72ec3ef5977efa08c24d270e26d414cf776267bf50618c8139
Date: Mon, 10 Jun 2024 09:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718012242
