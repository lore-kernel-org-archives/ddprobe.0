Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C037262B
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748273394; cv=none; b=F6U680+TniZ5ike6mcpEy5NyVzgF2RJcu+73nXim8jAnaEUCG0Ktk/SI06B9IbKUakaXK++hssssN+Bcq+AurQJTBy4/87X+1IpJY+Su28Fr5GkWUv1lAoLWq9Le65KggDlHNx/XF6U3hRkoyWc0htMsknJNfBHdSrEoEm/8c4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748273394; c=relaxed/simple;
	bh=xU5aZEmOYQ9knw2GrR0RmNhY1Tadd5IOKI7YkOiuK4w=;
	h=To:Subject:From:Message-Id:Date; b=a12dFzcFxH+yj56NZusLdVxgOzvXuwkzfX1m2NrYJlK4KcDG6ByHQe6XYbe47WX91qXo1aMaZsD1RusklILojR9z32ps+qKJcTfJWGsVBUtDTYQDvWtqE3rXLE6C4csqjQeukOHRyYYaVFmRmxeY7IocYsaG1zdcefkWJYqSl3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pg7rdbZh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pg7rdbZh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0349C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748273393;
	bh=xU5aZEmOYQ9knw2GrR0RmNhY1Tadd5IOKI7YkOiuK4w=;
	h=To:Subject:From:Date:From;
	b=Pg7rdbZhW61Q9BvHlVNOZUAM3v6o6ZgH++j8Fm8777Xi6wJxOGshwd/kvf5BMRs22
	 n8PEJY30CDHFheI158RWL9spMtPcGNQmV9qFSR8QZ4e1KDmNBLbtz/XCYj5+Lxs1SI
	 v7lUycA59IxdrHW1BhUMBSvBJBYntrN41fJ6I8q5DeqbFB/fKJ3khIdRt7I62/AlTv
	 CK23ypYQLdpGUaxq8dR8RwhIN4ejNWv6LFSvSd8ZHJmrKJNRkKkx4VVMIt54p884ge
	 jhynD5eLQ7HGcwwWUlXaMfcSMx6tofBvl63lN9vqy75hQmRxaWNrWzz+DIyxHtNuve
	 S5POHZnyZcXMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA3BC5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174827339357.22228.542719570582207274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b83522807b3a0290b044a1bd3121104873eb255a8bf99f9fd82552947d92464
Date: Mon, 26 May 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748273393
