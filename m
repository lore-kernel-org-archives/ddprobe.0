Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F0F1E376C
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762308594; cv=none; b=NHKBGZWpesBrzTbwNVnli2oMir7+9W1xpb7Kd4bjucCUMdH2M/tYnt+0IUG5rbvfGms3NLCMkYXe3Wb2g+3mGn5n/FfLnkf0K4GS4//tyb4+ekD6AM37rRgFLY0MV8hx8nOmkIlGTclOnK3qcmzBDeLvHlJn5ijBZpUG0GxMhDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762308594; c=relaxed/simple;
	bh=dCncNBngFZ7B/tiCa3p3Mdhr4iJBg8zFg7D9B7ENHxM=;
	h=To:Subject:From:Message-Id:Date; b=Niv/s7ZGGlGS5/Pj99WemhbFbO13wLhOc2ewox5pluh6LrblRgJhdaYVsO2rhWheifk4s70idyQJAjPEDmoSfwMiA89RFNm01cD4AZpDUg/mcHn6XnpAO+rDWJFSBjjR2nsBI0zgdcXucaUwMiPUQsHQw/DFi0zGpT81f+SmcTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F5Aq6PsF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F5Aq6PsF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65B2C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762308593;
	bh=dCncNBngFZ7B/tiCa3p3Mdhr4iJBg8zFg7D9B7ENHxM=;
	h=To:Subject:From:Date:From;
	b=F5Aq6PsF34aWLpwAfYYahaTiRGbnSJhzvmli06MLtmCroG+pjxTrwZsMzg4UVJ8D5
	 x96CMVo+n0ymJED8E/CkRPAbvRd5s+3m6zt13px/WGyUDOlqDYHMIrAkbhK9ccF49L
	 mJP0NeQBPTjJEKYxDVo04l891JiHYPlVPj6C5g2j2QSYXtEzdOvc8+s77/UnpXSmwK
	 XMKhh6podGrW5dAQDt6Y93RLKpaDg1yIbj6c8zJVYDiBsM8saC0R32/2cPNu6wKvcA
	 I9TTitFcY7TRJA4h83nadWgGmcWRwpZ8RmqHHSzU7iMzUeSYuSMHnZdVHVUdS5+goF
	 IcSl4kvcyG3nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966A3CCFA04
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176230859358.3121.5603027818274996394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a97a0039d27b551c1a220eaa0ea1f941ee9e375d95fb58c7a244fcfdf1c303e0
Date: Wed, 05 Nov 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762308593
