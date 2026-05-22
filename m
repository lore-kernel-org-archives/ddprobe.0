Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A29E3438AB
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 22:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779488554; cv=none; b=EYxYj+HgqaED9ASPj03p0rTyxA36iPzhRSQ6AOxgatq6zuRODXDUtpQCkLevFtki77yeQ9hnj7orPAxRGxhfjaWIel+xEa6AhtN6yVU1v9dr/7Tc/syXJ8a3X3p270YjN60OrWz8BrSj7+u3pP/x7B6Cs8ZhCnjc1ksEj3r9joI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779488554; c=relaxed/simple;
	bh=+y7hVtpdDrDN4rX7w9MwysGZa+6DVoM65cXJW1cx7e8=;
	h=To:Subject:From:Message-Id:Date; b=ikK1iLlquOg7ZPe71q24CnZnA8tR8Wfz5yLFYP171kpuHr0KOCYbyso6VRTx0YzXflnhrY7Q/StNMUvgcTchB+skl/Kr98uydVBTzVhuEmJdTP5TV74a4S3znZP2DgqmRD7nQQOPGbmFqEXd86Ipkjjr8QK2NUymvXLXOv8D5a0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nge6+WJU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nge6+WJU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5BD6C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 22:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779488553;
	bh=+y7hVtpdDrDN4rX7w9MwysGZa+6DVoM65cXJW1cx7e8=;
	h=To:Subject:From:Date:From;
	b=nge6+WJUWaMMQ3slOoq78oAQdaIUXNv78KQJ7jUONP8UpHIOMSjQ1VcgDf095MTMV
	 TFEPwPuNaXq6gYsw9m6yvSuZzF2pDInSL2VkG7bkgUeT1h88vuGpHMAXQxS7P3QTN6
	 w02Om9Tm67u5c45Gmbh0BJGo3w3LvQwc5m/JSpyDYAM6ZEpIaYS6dIFi+oV6mSVQz9
	 OHhiZ7R3NhhAFPQaApfTgEt8C3l+x7OEDju03PfZcUzlQNGYJm9ZUsVpB+f4fxY8gv
	 MQRgTnvlmhs1+Ttl82osCxPngnmc8z7W4kNZ9liXTvxuPoYlTLC3dMpxUNnwmjkOtF
	 LvR36Fcri4P6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB279CD4F3D
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 22:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177948855368.19931.2281854464575506892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2d52f49290d9f71593d0e2943ff99409bfd0de154eeea1cc48f7cc89f65a220
Date: Fri, 22 May 2026 22:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779488553
