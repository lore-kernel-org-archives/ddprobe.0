Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68AD6156661
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786273234; cv=none; b=mMjDATSO+pxV7o6n57sC5fpJ3OIEhWpJuni1v/J2hnYx7TrqALQzS+DCRtq0yrvCNE9DAzed2kYnplxQZVi5yMbDMkS3NCpQWj9Xm5gryrw1Ix7AHPL0XEYnOOzxL0tcD638C2Xd3Grnbex2dUbpP9NaqVILhLzCNLIs4wKzSHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786273234; c=relaxed/simple;
	bh=xtDyB268xifrFZDIL4VGeMHFeG0cSt3HYF7aUFDua90=;
	h=To:Subject:From:Message-Id:Date; b=PcPoumrUQCZiKW1IlgQZruGiPebZkgFX2vsE9wgTg7RxuTomgSSMALc2RQ6vIr68YHTu5xIVg0IezMSV2fg1m5pTuIDAMI8NKbPB0fL4ozFTYTJS1SOSjX00QYy+OIXMS3p7F4RbugTv0S85ARktWpF3iLRhMYvaoe2lmveLwcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sWiha+Xy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sWiha+Xy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3591C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786273233;
	bh=xtDyB268xifrFZDIL4VGeMHFeG0cSt3HYF7aUFDua90=;
	h=To:Subject:From:Date:From;
	b=sWiha+XyYy8Gi70SI65AJsiAe+wbD9u2yvLR2ECRt9CtJJ3Yt+MLTkOeMdL6as1/8
	 Rns1c3xf+NWcJ7RDdaSBcubzsonrNPeDZhyv6BmDojx+0LDyy3C8sIfWLXSVGkYBzv
	 uHG5730FaX5Hmkkj5Yvz1dCQaaL4ysYPDkp9MHkFhy2ZXrTT2O/UfqjaztxmykfwXT
	 3AqPOZdonKbEDn5bpxYe6RlAlDZaDiK26m6jc1RTknBgFkvgWEHfVqzUYV0GSyIZC/
	 9QmjixRLzOR3gN3pUZEcKardI0wuO9nD2q38BNX4sozWZ0K8n0V9wZCD+8/0XvaqxT
	 GtJIq3eA026GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC07C5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178627323368.29704.5583709373680180451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41d3849ab969f2a79f85f01fea3164bcd01bfae6150c9d99ba5b12388e5ef0d8
Date: Sun, 09 Aug 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786273233
