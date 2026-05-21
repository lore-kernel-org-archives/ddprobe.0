Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498AE25B082
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779323434; cv=none; b=PMRgwUAiknlXXYEjPkStI5NlviXHS9j2vA3UMliS6mJVBFHzG4w0YtIhaTn52XsusJlm+9g8JAEIBq4hXewr6FLpYziKkaiMihKKuLAoWIAATxCxuuoRg2GgVFwQ4cJRBl0whSUTA6LCTuHjtQ+cvdw5oaGoo/DBc8A1bcG5C4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779323434; c=relaxed/simple;
	bh=+X6OcScnASkjeXfCC/yKD/ecRDHPz1IFpVsMkuioirk=;
	h=To:Subject:From:Message-Id:Date; b=NQrDhca00R29Y0lU0yKrn3QrNO/cHIwAzhhosfEsPtSNqgDsDNU3MXJkRXlU9L2ZAuDTdrmKsYILtDQYNkq264ufoWZ2nu/RikawDMaHfRwhpLKP5Hr4sJq48ZsPE9GJHppc9T8fp36pDX1LUzGdI+yVWpX9UQpZOYH/Nf5Co0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XHkpmtXP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XHkpmtXP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C4DC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779323433;
	bh=+X6OcScnASkjeXfCC/yKD/ecRDHPz1IFpVsMkuioirk=;
	h=To:Subject:From:Date:From;
	b=XHkpmtXPmWupbJ8LPo5arpVCbSkzvV68KzOeDJZKniVYYNDxm7pTgh6kSbaLLfRE0
	 /C1DjjVgKGFIxUkW7TtlUDS+rKRlo+Lu5LjqoHxTuIjvKktVVQkeDZqzt3sipWbw1+
	 lmNxZOg9GQ9KZuiGbYQJ41tAIJczG7CRNGrNBKHb6yu2f2cL6nr3GLSMAzd/FusfhD
	 dooyYXTsc1ACUu87YpBNdkpFn2yteTa5pVI0kWk4DC/Ydng15U7TACnojNwNKuz1Yv
	 +n/k0JCi2B1oF0V/ASbxjZSjXf/Rz9dubWLMSIiSSW6tgOINzM3hNcpFracDi6E5L9
	 NuwPzL0aVn3Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD31CD4F3D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177932343369.2572.6810808850712181073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d04e9e473b8b30e81a9e14394ba245e15302fec7f4ac3b9f0fe1899193d1c43
Date: Thu, 21 May 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779323433
