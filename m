Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2878A253F3C
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 11:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748344195; cv=none; b=fiDo9NUXPoH4q6hrCvjkXPDellA6s9b0mg0mDoj/9Q2+QtMPaZOZsycXKvAwC+t9sPUhrXBKDLO6lIOkSJyUX5D+ZF0CdU0LjVJKnvnrXFS/olzV9r6VkACTOZANfs7ZC06x6TnUGMdBQxdmY9AF2eY+Yd6iLHZKAlVRbCesHqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748344195; c=relaxed/simple;
	bh=iaDjIxJYKW9kez1fdx7epwSFJpwyDPJWxRLY4pwkrRE=;
	h=To:Subject:From:Message-Id:Date; b=a3hEP4e+9ScdiXOjWNQdL7PS3iFFfIjR/gtX4aqGdXgxU0td2+x/cLhmsMRnn97pw0UWCHmXaIdDw0rYJUic4IIGKaGywhso7aDT9LikOYH/xHN+UgRguhyE/r3egZw2fGAR5v7kO2tmbPvCwN75EFXanKJwvHEnoXyqf8nlN8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EOcpNpeA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EOcpNpeA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B92C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748344194;
	bh=iaDjIxJYKW9kez1fdx7epwSFJpwyDPJWxRLY4pwkrRE=;
	h=To:Subject:From:Date:From;
	b=EOcpNpeAZpsUhBHMgppLS4cmn+0su7WH3lnLaKP8YnCLtSnxM5i9fwxJw7uVQiEN6
	 UC5LQqq9jpEljs0pEYG5bYzlS0CWVX1OCAZUeabSZBMjRHBNUNqh5zun1yaa8xmsat
	 ItnoWW8hJDzXBqT1HS3q2xbGzBbPidQ0kmcb0w+hyJMGs5F/ibDHm2aH4R3RNkYSnQ
	 cp1dAcRXfrQiOaFo5i8nIqrORLvnEJBMPXgIU6BzpNPiIgR6djVeoo7UgB8oWhM9F0
	 kQsitJNzeJNRL2dqxWnhuFDWwEpzRNRS6RQ9xftO6DOJ9QLcMHEhB6MF4VbyyFpRqb
	 MYnKOMsN82d7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4A8C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174834419357.15166.4760323814039787028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77549735bf20c4851611b97edcde5cdb0611b42c92dd53cd18d9b1ecabb2da64
Date: Tue, 27 May 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748344193
