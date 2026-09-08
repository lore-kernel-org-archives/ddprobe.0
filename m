Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58DB4514776
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788860434; cv=none; b=CvUdPEz65dtejOF8BlhAzb6I19Lr2pWs/78bAen4GqXKl/3oPeKDKikbq3pz7jp7cNccLPNoyqjK88VXUqgE16YUlVTe87bTv/97f0OGvN5AZSuZwZXnmNDvGKSNDbsKJH0zZv9IZLbpeGdmp9TY1VMi3ctMIBFUkkGOhM0QB90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788860434; c=relaxed/simple;
	bh=fIOecq/P6eGTAPeoH+HoCruU0+A+DJ21fM1+b1kHHMY=;
	h=To:Subject:From:Message-Id:Date; b=A5XTI/2ZbSq7JNr3X1z0AazDAlc2eitas30Mjc0ICpanFjBbdqRdiLrYG1Nh7wr3KTs84E8wifiSs6m8026KUl1nCDKDX8T+qaflRdNo5zT4ax2FG0y/xA11hvoF8KqUUUMUuYSFSMRqDrUnCd2bTDvBJB9Q78Rhmh43NbQM7Zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BayQUpQl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BayQUpQl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E2AC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788860433;
	bh=fIOecq/P6eGTAPeoH+HoCruU0+A+DJ21fM1+b1kHHMY=;
	h=To:Subject:From:Date:From;
	b=BayQUpQlJ6xTKwaJFXV68jrlkycFKz1abyfsCsWsG0wvR79iywmJTAUyPqyJxef1x
	 xc4piHNozwq46P4mVR3dCG9w57okz/x5nY5C7XH7D1c3CK4bDN6pLAd0VoK6tyCrNb
	 3TC3B//k0Iv1jTwD9RjyfhDClyQbQyuUyMYpm6cb4FGKIJXeC8WrJtT/9e0NCqUeTr
	 F7zwJxqkSTsGuj9m+Ok36NFFH4Q+XZmmpLzCjG0kOdlZuTGoCEdbihrlpWGKaOnKyj
	 ZiaulDwqXaSK514vm3gezrbSNslG/s6EJK7/KR6R+SVKq5EZIrX0oHdJt1y0YnHoft
	 xf18gj5LqwCXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21CEC79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178886043371.19176.17794346048546583096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31470856f5c44d9bcc89cc77ea5916325f1d82f72e515cd33530b39cef255659
Date: Tue, 08 Sep 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788860433
