Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1E8194C96
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732701954; cv=none; b=KV+motCC6VeghFJHj6AeMXoVuf88da0oNDkgXDyu+0k5gl/wTgHYwvd8JdkSGzy10Q/CbDosuGFijCvTPF9VAjF7CueIyx3HgLWyDziOz+74bcTKn0rROQFVbxnxiKqwMklz0ckbNSfOm+E7n7At0U3D18urmXNeIGGgE2By4dM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732701954; c=relaxed/simple;
	bh=stgrOcJnGaHFclyhzUs39UV2iG4rpudlBv/Zj9A5sK4=;
	h=To:Subject:From:Message-Id:Date; b=nmXNLj0JePwAWv8l1NBDsxTvP/OogWzG8Bde+luuwwICI/Pzt/ytku7fMt5j7dvG85abX74qku5c9mkc30d2oEsGxRePPdNHbazV7WusNAdWDk1COgsvNj8Dh0qvAEIb8loZmiFTIU85ndkJflSxzRGGvx5fPGGeVFJlibh7g5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/KtPVbg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/KtPVbg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B456FC4CED2
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732701953;
	bh=stgrOcJnGaHFclyhzUs39UV2iG4rpudlBv/Zj9A5sK4=;
	h=To:Subject:From:Date:From;
	b=i/KtPVbgfZ45tZ3rjb3vSO/O+kKl2Htyo6FnMmDDuAqc+6u+ZnVqhjL0glauT6XP3
	 qNvAXv97vXwAsdOCdj1j8gv3ZSVaTaOulcnAWjZ5OBsMNnfMYbghbLw7BUghAQepuY
	 sdZbCe3TQNtGlG5NyoSWoADeeFLXh8IC8jZNiazdnfjYqzUdl0IPz9Eg3LGI6seGzl
	 Qax8pA1dgP6xsPa3M8ntd1AG4coMN3jmGbStQmkgDh/HBkWs4MT639dojUn3Fy69M5
	 6ldNelaV8qYfz+b4n2uS8sYhwSnCCT7Jx6L6krHad9xryXStwjFFs28rMvUmEhjn2F
	 ckR8nd9bmwuTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3F56D609CC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173270195365.8391.1705389922578854155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7b2201ea14d13ee78fa09e90bd8bed91b086900c394b51e189641adb6aa5fd7
Date: Wed, 27 Nov 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732701953
