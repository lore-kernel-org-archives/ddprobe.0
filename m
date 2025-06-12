Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2280F212FB7
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749713994; cv=none; b=nhr+MBL6y23dzQm6clFUmALvLKf0ypx1+aVvR/j/aks7B7u4mvlqrGIwBuR1KVT/0x1tM7igKLz8zqEzVaT6g5sMS9x0hxryPXgy3S1X1lLZWLK4koHODSc16oh5V26Xk4g8OBVuMvTQJgnx62YKk35bazWOVWq1YlaB7nuYJTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749713994; c=relaxed/simple;
	bh=+BD+gFLa2DQZMHv6D8m2pl9bdR74bbUoi5T0R5MJqNA=;
	h=To:Subject:From:Message-Id:Date; b=qOLSwMqkP45fKYPXAGYrvl2qcgKl3Oqc313GrQzN6aBPFMo8KXMHX7hJM594WZZhJPw4Ice0bDKjL0+aXwOmMG8w/wbvK6TAn/zxfqX/f4/lmQaYaFuahE3lygvJ9eZfjPj7rdW8fbCw5bBwoP5GMx2nGrS537RP9sqC0CXiJ+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R8vzdXfZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R8vzdXfZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A199FC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749713993;
	bh=+BD+gFLa2DQZMHv6D8m2pl9bdR74bbUoi5T0R5MJqNA=;
	h=To:Subject:From:Date:From;
	b=R8vzdXfZbTcLaEjCUag4C7dG3Ct/IIRIgf/Md0/JWexQcFMZxP89FWMw2BsIP4DGG
	 KvXh8Su5xDs0C6+W9QezjHqsxVzYNrgV7ZcePZfn1QcAoYzYmFSUWnHWIJOiGmKIL6
	 i4b9Q/ZPld/Ul6sFwRVNzmZJOQN3cCRd4GvmviKo3XaopGNOnxJl2+ROU9oCX5oDrr
	 rjdNbsQ+2+7NN1724QBI763RYyqODxiHvLUgVjlrihfUwPLkTCz1FitJth4SDlXzEP
	 qixE3pMUHANtihQoQmJZhLr8CvwD+JFaic8ZZuOsa1UzB+oseNTkLIkxorH80SiCds
	 dijLOqcJmxsbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B51C71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174971399358.4851.9383429993985649109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b254e774f63be13e3cbd67d8ed0d8ae37dd4552fa32b0e36c150dea15c335e8
Date: Thu, 12 Jun 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749713993
