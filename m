Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2407E1
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730937954; cv=none; b=Y9JjtjnBkd0l4PHgHU6a+QnR2U/ive401t1ET0NzSaE2/kHebxu0TPkt0VPW/7CJYP4qe2XiCQPzz0q+vjknTMChjkXCcVbBGk0tR5sTme4ee+vaA1aMdL2sdGTwzc/sEzSM6ahH2EcbMJHUidgEHZeODYBaZN/9d+ZrXstC7rY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730937954; c=relaxed/simple;
	bh=3h1JO74FBJ81CzldOMrJFPhz6Q2HC5IFDdamBZOoRCI=;
	h=To:Subject:From:Message-Id:Date; b=XfxZVi3B4ocwueq8wVDaRXnl6F2BcJRaMi4FTs+pY0d+kxyguoP9fu5qOoBNxKc/xwtZV/tXq6QNhOuG7S7uklmIQ62vmV+oMWg1mxHidYwPjxI6mvOvhw8JaB0mA3vwVSW8qzFTqh+/Y6UvcM+7rt0eeUktpROT7Xda5qpqO+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBYjFycR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iBYjFycR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B068EC4CEC6
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730937953;
	bh=3h1JO74FBJ81CzldOMrJFPhz6Q2HC5IFDdamBZOoRCI=;
	h=To:Subject:From:Date:From;
	b=iBYjFycRyXWPTsKglYK1Iet3LiZFrRv/9+mzkN+/slfvLmETVTcbi1kz24qyc+nNz
	 V16s9OXHypcZ0o77yxqDHdAHUuTT/bUbZptgTKJ6sgFEfJe9mNPOm553JYx3CDm8M8
	 AaHVEBdgz7Kl95wb12n1mA3J0Hjdc0RgsS01osxIY4earTZWVTFbglGIvZhBwAjaVs
	 rLzIuu94dp216SYNEI+mlitF50GNgz2qQzhcnv2bhQFQPh61DHeKZKsPvdrIKDtuVY
	 BWp4DYVUUigIXyPitON+0WbUnrgQcMBhSIYFo2uvt0Ch+tWxgMZz/reN+TMTUgLfRP
	 XM+optOn/3joA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964C5D59F7F
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173093795359.11718.1018104794914317356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ad009983efdbcd8fc8e405d1581c1d5123af9c8bedd292dc93f569307412b8d
Date: Thu, 07 Nov 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730937953
