Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D091F75A6
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766197434; cv=none; b=e88P0YcUS77XWgfL6E2nJSV48oQqK6urMu6nagiLtt+tFQ78ZOH25YUmz3DUgd4CgjCHuVBTTklpzxVLWpIkCvaiZj3vr6HXyvCBC34XoDQBK4NTx0/dEMQKGqCSTdMAbPcCi5x7+cve77yplWS1msjm06QNRbd9C+aDqPmVueI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766197434; c=relaxed/simple;
	bh=Ys7fl2rRVHg3nl6qoufQX9zoTnB3mQsgW2JmCDR7mFw=;
	h=To:Subject:From:Message-Id:Date; b=Rm9cg9wZRnMMXr2T0Oq+4krh7bIjuCQDNyx2JEEITzA6nN/0q0gN+xGI7FLwgD8m15trfxQf1rsz/959FaI8lrh6R/YZqDZ0QYeYlyaQ8xOFetsMK3CZWeln6Yb2z/38u2gp79I2vPJr34s/2J6WuP5banKPKWgvpbmUBluDyDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ohloKSJV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ohloKSJV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F075C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766197433;
	bh=Ys7fl2rRVHg3nl6qoufQX9zoTnB3mQsgW2JmCDR7mFw=;
	h=To:Subject:From:Date:From;
	b=ohloKSJVz+pZBMY7PmqHOrMxqQt+9DXVM013TUeJ/lE5A7qi3hDlTyYM0SF5vfXKw
	 lv0vNSI1eZOSnOq1EPGBxB9GBI5/rGxkRuWurCpWEv4NERjEK6TV1aFb6bkAvw4s8+
	 e0GOPVTjOVmLJ2vdPCF9ORYLoFrcDqWSwQs31zSeOZwSHOdXNZVGNh5zBqDB3E3Fjf
	 behTiLNcut7cIS86RngAasWPU94sTTMySmVzT2RuUVDhNQYK1NhREkjgp1dFh7LjMr
	 MoCmctisoGZf03/kzGIH2BtAQHRUR7CBK+yALMaylVgeqbD8vULjeJn+j3WcNOY8oc
	 QWMRYQmbjCDyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB14E668A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176619743358.25939.10635940476250573865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a6584e626923b93fac806598d31f7e041363a20aac31bdc0ba267093a4b2995
Date: Sat, 20 Dec 2025 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766197433
