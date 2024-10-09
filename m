Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222AA28EF
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728467154; cv=none; b=ejvp7d2xNLGBiFWl4mP1FkLq1n+9zUhDSkVmHsf83UIddNaTCW1vqIRniRf8brekjM4UHi2r4q3Y744h3RFdtBBTdkAWlTXc5QdU/gSgLbPLzjmX8XF/Zd1kYWJADEr2EN4uvfxJG/GY/3mnFwhXmAjHpAE4bYPiiTHPjSMYPSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728467154; c=relaxed/simple;
	bh=cMceZZLaVDJWMtnyQluYBAAEvhVKM6ZdaoeGx2N/5+k=;
	h=To:Subject:From:Message-Id:Date; b=SfK56wLG50FeMHAsclFOHy55izkhz2yeCRUBJoe5KTieZKvq75fIMgEOxsVrIvfF3NL4d5XMh4J/bny6tzksIZZ7Avs88CznFQEPUE60EIPK2hRC76kml/F3a67F0YSTjm7AKO3XVvCI1MrDOzEZ8LI+yNKtT/oxB5gY3PZqHOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/7hHPvf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/7hHPvf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DFCC4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728467153;
	bh=cMceZZLaVDJWMtnyQluYBAAEvhVKM6ZdaoeGx2N/5+k=;
	h=To:Subject:From:Date:From;
	b=u/7hHPvfK4E10pdjK/iisuGQJ6R9nP4D66y7qRsF7Mx0t7fNUS/BzirS9KjN2ufDP
	 HRMBU29luaMegBDXo0uhsqIBq4IMK7TEI0K6rVjcNK9mZ1qvsFJcb48nefAfOg+HIV
	 IunYC399I290SqcQGHF6bR34wtvUa+RacmAaueRuvjvlAK/anO6xuHUJ/6nV7jy+VH
	 PrjsxsAFdnb4q0NybrRC1u7k4uugH9L/0W3ZaszYLe4+c4xKzKvZv5LTH7Uxy0LY0b
	 Il4mLBOrxT1tdF6V8k1l4PEvPqMV+6lFnLZQO827n2bifzlFrKl04NQD2D/hzfVOT+
	 uvK6a4Rj4DM2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C32CED63E
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172846715358.12160.6239750229994476540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7b7b88354bb895023dcc5498d6226f610e42a772465663225de5ae30b7538eb
Date: Wed, 09 Oct 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728467153
