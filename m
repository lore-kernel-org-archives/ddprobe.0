Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2287E283FC3
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761754195; cv=none; b=hLKwpiA+jVB3XrwkdtnQ7rQHQuidcidRdXO3Jfcefx/yUPiIUHuYY1AFoA1xDocas6l7v9Pf/Xo9PJVaEXckGhLSLSwtd/HRrqruMO2PM1HIDQCs3lwkuUiYP8HBzcMT4VTigKxl0XVveBpI1sjg7dxh5dcZ42O11Tnh40rwdro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761754195; c=relaxed/simple;
	bh=Llk+/fQHZ+zGP77/EdiGNdnWbqHn621Gv7YIHj2P3kw=;
	h=To:Subject:From:Message-Id:Date; b=TX05lQBq8FhpzF2nuIQaHrc2w8SwKYQTTP8tsdTEhT22vqE0Pg31opWtnmCd/Mbu1DG3cDE2CBadJxZE5kPW7aHSWLbBoQrjQU+76ru6H0fQz0k+hFzlNAvg0L23mfwNV6zmjuc/JC+SmIQ35c0+nMwPL/xmdFOYPKSlj9VR5lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AM6TcA4O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AM6TcA4O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFC4C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761754193;
	bh=Llk+/fQHZ+zGP77/EdiGNdnWbqHn621Gv7YIHj2P3kw=;
	h=To:Subject:From:Date:From;
	b=AM6TcA4OSE6dbhYGmqf4vgEe/gnUgIrRNPCaqY23S/bv1enJhNijWNxTe1b8lAreU
	 iRnmqyftnozo4cPNzQX5nJtq8vzR2DXj7z4qRmzgQx5vLOS0H8M3wDfH2W+1nJHV5y
	 y3CRmlnsxcDh4hmuGJndZ4Isty/CGcbOK4mny32Qyn4cg2PdzPMkVU/Ba2+XCxlKty
	 PCynRUE2i0Bq+V0s1y1k/ofiMHW7tTFcnHr/hU907osakYVReBXwvIVw7QZQ1QUbrd
	 fVgE0fQxgCfVNlq8U72AoXjSLc+PxYUtJLoL4OzEhrJ5hg7Mf2ha9JPTdwWlA2G3zp
	 IRHVLAuepMhmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90899CCF9F0
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176175419358.28947.439987720774451329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80cdde889ac620f132bf362bb975a64a014ce04804ff1b71852130e1a37eb716
Date: Wed, 29 Oct 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761754193
