Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B359101FF
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748038794; cv=none; b=hgkrhKok1RPrMeXjTjof+yJVmajRJV9NeT7wfZCCVFIbvFAAiQFSj91eZFbeIwKncGEilun0fyl06go0p63PodJNPLl8zqL8JxIwS+JQXzzdQgD5UZiqukQGwPx9acu5KH22HAuywBLAs7KKgHeokqMAyN4HtgwHdQnRnMEt1+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748038794; c=relaxed/simple;
	bh=6jY0Y4yNIrcQm+gGkAZ0l+Cb04LAlV0lOG3/XF+JerY=;
	h=To:Subject:From:Message-Id:Date; b=EWHrG6is+2/x8DbTOHZcnqyjXQ4qworoWjh5cpx4x5J11/JMH5JkQlPMLfnJBIcaCxVAXcGS5LVDj3QK8qJ+vjiIrQzP8CXJhtVgPYt4Q1FguZsZC56JvENyec4S07bKl8psGGp4qxDgCgaMqulA8WCWG8t5JTev+i1jiCxeqWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KlVKxd34; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KlVKxd34"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A052FC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748038793;
	bh=6jY0Y4yNIrcQm+gGkAZ0l+Cb04LAlV0lOG3/XF+JerY=;
	h=To:Subject:From:Date:From;
	b=KlVKxd34tKGNsFh4uis1S4jL18y3xL403KAseWC4dpcMZ8j4BPAgXxCCa0awodWNS
	 Vcz4RNwpN0aarMLaDNJ1ks7o8ZVxtvhuo9Fb+k+nvAWtEH4EBkQdsbt6olpzIBhGNr
	 ZnM+1Ie2Ikx1UcZzuu47vFOUTCSbMMcgfW/z8DDqQWmU55Srl2FIQwVqBym8wPwuns
	 vG+AyRMcLRZVEJ8aXUVpZ0FNQgUAvpfmIMKTQgFmnF2X1moEJpuT9yMMNQjvtQrRzX
	 CrYbx5YqctQB7zrCxbigwwa97Uk8wDK7RU3JRtAkvNGdLqbIJADsP4vAusKShU5GPH
	 eL1UvQYDn398w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F78EC54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174803879357.6603.8028337487693073248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 296552888e409b08ea699da8a1c4647a717f1e622bf7bf45f80cb29febe1b2ae
Date: Fri, 23 May 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748038793
