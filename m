Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E32364A0
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727667354; cv=none; b=YZ1tfcyFJHLWrjzpgROJg8tn00prh7t+3Q6cT4/7Vum7hUfryuWOWoLVtSVwGqMguwsbJqN2vwxTvfzbe+3Zdx0d1mXISB+Hk0DA3hcm6c8BGPkKu/hDAhdp5r/sBpMD7yHVucmtgi7dEGmyMQYRIXOplBEi3Px9ofOe/N9fdok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727667354; c=relaxed/simple;
	bh=HL5N47pVNpPdU0QCGoUdZ5uRQbK2knuFfmyKEOSsNeA=;
	h=To:Subject:From:Message-Id:Date; b=TDgSl3ASC8VzTwgUkRgPi2IldtgtI8ar4MJjQPE4eKrdHQU0IQDw7COpPgrOhPPL89IukC8CqK67jYACaRy9D6DkLt9pMVftmT6n9sX/0UqnD7LuwvbXJcj6HCJeWUkWcblPJqwsEPVifghfSAHUtYjXKsOCk1hVm7151i/+fOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E0lQ2K0q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E0lQ2K0q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6E0C4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727667353;
	bh=HL5N47pVNpPdU0QCGoUdZ5uRQbK2knuFfmyKEOSsNeA=;
	h=To:Subject:From:Date:From;
	b=E0lQ2K0qIhmaVsMYZ/1UetELbWJpaPVndzVY19rZt3xAEao55abIW/ctp9rkMHKQ7
	 eVEJn7SRtdaxbIqSPRDqzyp9AUzOXNdRCDE8Pp7o6OiVAllNEgGOQaaUBlqhzuqPKn
	 fo2d0iyyVxatIbXKkbSIiOOvcbhQDDsOLRSFdlrolCvfL5j2vMETe8ZxzD69YNyQO1
	 vWY8IRZbFXJ69dM6Yn1Zz0rtVVHnmqPcOw93gmzcVT5kLN6QOHSOdmfq8e/tznsDbZ
	 CbTnNcA09ZtUXmjMEK7Wt4+zEkbCFSym/zl1J1LQHyeC3G1ZfYurxlKywr3lGscW4J
	 ZUk6lGYJlLmzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC82CF6491
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172766735360.3566.15334664998223251468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cc31c823ccb1a870d88470345dc8ab929e2813452b1558c15232a040ab1b8ea
Date: Mon, 30 Sep 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727667353
