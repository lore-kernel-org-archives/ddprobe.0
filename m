Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E453164D8
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 10:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765795374; cv=none; b=WZ+aolSRG6tzlFOA+OQzRf9x0EECyIVS1Fj+IW4Ci8j8sNf6v5iewoBaD9hUJYzckf/TD0nQyrMoZC0jboXPbGEu1sYxIylR3Twm1IiGk1ZRL+6JaClAZooGoBAJ8GV6rXURRYY2pUFR0hnuivTxhbhexRn0CGALZ9Zjc7rmHEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765795374; c=relaxed/simple;
	bh=bShq9g+h7FgqamZnulmseXjECvVamBgs223H6Sjo9dc=;
	h=To:Subject:From:Message-Id:Date; b=jVVfXsbsfrmgpQx+e8GtzZ7GqlIGUeXCB2nG2fFNoNxZB4LF3xFG5tVJQ/eddSwvxFOFPXghEEHaRR3fgFSQ6/ColCPaNYiXLxpZE2nf2VzquvAvQEILpGU7qK10KGf3zs5tGmsGnDA/C/FqCQZsw5M4gQ7Lxex0nRkaRfYpRMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZbipWkm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZbipWkm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E751C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 10:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765795373;
	bh=bShq9g+h7FgqamZnulmseXjECvVamBgs223H6Sjo9dc=;
	h=To:Subject:From:Date:From;
	b=cZbipWkmI9xnEwho+C2EL1Dv8nSrwa0WtXqM/foZVMaLip8W8fpKlnW8ge6mJqWcc
	 RPfEJiBts97rMEAwKV/h0hXHr08vVqdT9/41OrmZRqePzQYcF80G3wTbxq6QCpN5D/
	 567bZ72e5UaoH7lbGi9Shv3j2NDxC0VPVrCQGlWz+jJspz10uvykvwKJEl3UmK548k
	 sSHPnKLHSEfjURHfnrDdPMxJrT6PBsPHP/h6/oFGbBmCckMhlrO4d4wdS9C0nx6zZQ
	 UD3sZ/lKGc6poj4yXk0tIpI6RhDzIX267jLm5vSfKLdymEtLlEQOirOrVPoafwFUCc
	 1Jahio+2t6vuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9025AD41D74
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 10:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176579537358.20008.6459021702354508192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9050dca6ef067aa5903f08d8aba836390d5041549584e40716993587e375c4cb
Date: Mon, 15 Dec 2025 10:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765795373
