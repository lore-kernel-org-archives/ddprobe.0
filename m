Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5541A2545
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760119794; cv=none; b=rqqQH8KwlXxB0Zq6qcJqqIzerAkaWCtdIXuTU3Fabv5NUYy6f6pVSS+5/AFq1AWP4wXFvM2AWj7rM8yupjQQSCntcx+jkTs0VEHywTij7BXdoc9wLnCyvlT/k8Xb+OKBqFs/iaAfc/1RyMIXy1Arg+cm/CT0lN+9/GWs2CA5Dlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760119794; c=relaxed/simple;
	bh=pfQvzJH3kdRvxI6bhsQaVOiyobcBPy5T9gjszV+t8FI=;
	h=To:Subject:From:Message-Id:Date; b=Cw0btRxyXrgOMTkYmNzKIf3fumoGdk1Y0HTsH/MYS9ka1zIH2YvoAxewrZO172oOmr3FibiLraCRUQgr1OlXeQO0LWmnjLBv0ndrja8HD4+7TnJcelnKDeDWTpwUqj08M/ZO2srF5/2YoNh61Oh9xxazWXwAj8qgbzs3290mkQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=izbUeFTA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="izbUeFTA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD7A5C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760119793;
	bh=pfQvzJH3kdRvxI6bhsQaVOiyobcBPy5T9gjszV+t8FI=;
	h=To:Subject:From:Date:From;
	b=izbUeFTATCHO3OD3ynyaEP3S2xcbfIsCaaOV3SCRnQpkJBTVRogJn3OMguPf6x4ZR
	 pQvV/WXjG5TZTkb/JAKK4jHvbWR6urp9OJTckbYfr3Zr41uULQr/zkhzJTQBnhhpnR
	 CjySclI7UaRdVsjbpOASOfJgIgVb7vzijqvjlP4frzMNHvrYIhfh6RZLs7G8JDL3ou
	 uxlUsjrDhnKXB9m9ZZiIM5ThEyU51qsHs7fnTFtg4nvqX2PuZbF3a+zuY17LVMvjCI
	 FrJWR3Yefs8yqUKCm1jMlMwrEDrMxOn2lfrMJ0/ejeW7KstcL8XBLrg1iN3kgQMDsj
	 pDuIHS/SVZbHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C6CCCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176011979358.3389.2080109127275846444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e79301b4ef28e7ad2dabdb911a293e58394244ddf2e64942b2951342662a75e6
Date: Fri, 10 Oct 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760119793
