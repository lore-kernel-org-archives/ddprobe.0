Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217B41F4C8E
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751607595; cv=none; b=YDKgd+8kChFfYgoNJ5gZ3iZ7B189wt1n2MZ6y08AicmTKAGSpJAcqXc4+d8xHv886agJUgcUrYbykvEEMe3fGKgAQtgGv+AjjVGi695yzkdpgoL6YfplTPQNEEVy8raBWnwMrJeuCriiz4w1NvcwyP9JMjv4201YbANq4hhlT+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751607595; c=relaxed/simple;
	bh=j2j9rN//F6Nmu7IqLdWRtLulmvzWecoWNDyyQw7Yk0k=;
	h=To:Subject:From:Message-Id:Date; b=su7BlOwJYPUU4wbIVqY/5gZCZRXtkbZ4/o0Y7xq2vPhBOA1pBn7fX+KW4de19vg3s5HHKLgNUwQf7VShDSQpi9alRr5WRyb5IdgP8SKDLPdRDYzEd+RhWEq62O/Njzb75jORH6aJ57YoXFiuLu3+Fs4aQQwV1u405f7JEyelCP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPEcyLAr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPEcyLAr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41D9C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751607593;
	bh=j2j9rN//F6Nmu7IqLdWRtLulmvzWecoWNDyyQw7Yk0k=;
	h=To:Subject:From:Date:From;
	b=XPEcyLArg+n2j6HovEpElXoc31vtoQBbroT5udfoXHO0dFJlxDTUm+tbpfomAYnBL
	 8dMXZNDG5gSED6cwPTiwKbFOZW8QYDyWX8+wzc5W5a274Lhe1KhK9XkUy42X8BHI37
	 tFt2gDBKhDvR10L0rmL8rLCcwPEJRJRcoFS33lDQYXQqiznB8KgJDRpfIxUL7ruGvv
	 H+PyP2QV5bunChM/fqmyCWN123929jj3JG4PlSjbTscOeh1YvqY2QFSX6Z4pFPC9qO
	 5+oBXGveSgOuFvafklIwca46+wdeRBSpbsP5VwttKc3pV2Cyk+YLoxhf4NsB8ZNUOi
	 P6kYTwQgCi7dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920D8C83F09
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175160759358.24242.418027490373272460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3bb5f598ec4d84e0174ecf0d0739fc9817b2472a826e0b766c1f08a2dd9a1ed
Date: Fri, 04 Jul 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751607593
