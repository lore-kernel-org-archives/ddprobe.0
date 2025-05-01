Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F5A126C05
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746092994; cv=none; b=Rvry0e13s6/oOSe5cmIiwkG1Oe903euz4Rpgsr8dEBh/Ji5Mg2gxbbtQHP3ijy6c1q1u0m4M5ehqNL+ugw3Bk9utfljlNYIcGdjnV/d1FACIwQ5mpmyhTldZ1VaLtoe0QZcVgtgoiKHul1opbsI2nlQeIZ+DGLmOCPclYmjzUmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746092994; c=relaxed/simple;
	bh=HxcpVlC31v42+CjzZLmiTIkBcUpNOTk1vgmvvuNOKjM=;
	h=To:Subject:From:Message-Id:Date; b=JG1ymvGRI5TFW0OivePP0uQzET4l3WufjLIH9SATYEfTzPBgUpDD3G2uxVFwAYAXD3AZ7fK6pRhXumBM8PkddYeWjzuy6wRnATrRDQRJyOJiIm6uDrLKdMbhZbBUutvabSSNg3kCDR7kEp4Pq51DimeS3Ph0e5nmonxaMWmRa+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXL3Q3Mc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXL3Q3Mc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E587C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746092993;
	bh=HxcpVlC31v42+CjzZLmiTIkBcUpNOTk1vgmvvuNOKjM=;
	h=To:Subject:From:Date:From;
	b=EXL3Q3Mc7dOPdwR4fKy85Y1iFt7749SrKRgepk45fxIJIQIuqVeXW6UigU/3DPo7W
	 9/oxWlUObTSkZddBEqeKu00Mby5UTqUcpLUSeYuB7j9fX33Q8kMf1nGp42GISo8kF1
	 hT+ZlaAoeYmKcyDeexLeoZ7bCwdUaRFdeD0/JhU2pJb2cuwYcS0vJyPb9PJCDEqb9C
	 RE3p4QGptcO61hmklfTYz9Xs2S9+W+4RJ1wrfoz3AsLkor80peqeAlonhrsVVY2OUK
	 IUZfbSIGc3CYLJiGZ+EOEFH6pPEiTjByWKz/JwZ5dcazgylhBGumzNYY1ekH0RlUvX
	 vWSTmyorwXdjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F57C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174609299357.18753.16312716540889100304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2e1512fa62daec963f0136ae8e3eb7ff347fb88d45e613344a4d15e2cf0b5f7
Date: Thu, 01 May 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746092993
