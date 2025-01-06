Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3041C1C69D
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736175954; cv=none; b=GI+85zJbvWd3oB1fZugO0SSiwP1dvhM5xzgEilefiZBXxsphanYdq64mtVZm9O60exX0quO+T3IWFsrLn26C0DVcCQzcuvf+NHIWPsSEzPchBDoRuxMfJfh6rP7N+KTfin1nbQCSsd4Qt4hZ5eYYRja+RLwSvPQ7zm3E3Y7wvCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736175954; c=relaxed/simple;
	bh=iehy6tsOQWuVMm/qI1qfH2D67ViC/Cxq0mUp3aXP8rE=;
	h=To:Subject:From:Message-Id:Date; b=nGAAgOIIraPmh7CFyhlbvVhJo5kv/CF/h11xNOAvPtCMfObLn09PtQ+s6b3SV90XH+L4PIiGaP1+p3f3YXFqoT7Yk6LteOwL7BbxvecKT0dtlKwD7e8TckLTdsR5GaSJGWzDlm7oa37lkjQuwJMkw7/ESqDonzVuqwYWhAHn8H8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E3BhTdwV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E3BhTdwV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0288C4CED6
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736175953;
	bh=iehy6tsOQWuVMm/qI1qfH2D67ViC/Cxq0mUp3aXP8rE=;
	h=To:Subject:From:Date:From;
	b=E3BhTdwV/r1rdn0BbQk9ly894QfK32Xhx4RcZ7+jhbcI5+oHyW00uxSmTjRkIGXbF
	 U0Q8xPkDGgkZIGWlF8OvADSCftd5vkmYL0YRouV++kc2TuiYiGEph7DKZb5DF9edQ5
	 GcAEMOl0Qs3ONjq5Vq3AvwwYA5XWCRu6OCchSMCNROJa44s9u7Fsxrh+4NtbhwHh7z
	 OJQs69AT8tsOYMlSAaXt5zwDiObENbcibqcxONmkRVbPoxS7QQGzXpenu9Bud9BD0b
	 ApqZfUDRb3OYLspgNbBcOsCw8cvfHWuSLPJsAh0BIZNR6oNNY9cPc6skp4Y90QfZO4
	 E+YnrCcScwzxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962B5E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173617595360.12413.7811648634609164275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd1c33f3654b6ce9760d659add575aaf244315071a1c4d1085ecd91cbcb970e6
Date: Mon, 06 Jan 2025 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736175953
