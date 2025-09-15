Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B73A343D70
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757947794; cv=none; b=PBLaPCE8od/kSI2zT9byCxxj6NdPoBSxh9PvnixnMy1B28seeGHoRATqUXuXXziltBL7cYbtloHVsUp5S16kMK1kUPeUyaOMskZXL77sv7NiPWw4LGlOswyvdb9KAQ6PT6KKGFDNkgePx7/OKri515abIik5sPurVMQDPQQfV08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757947794; c=relaxed/simple;
	bh=anvbE7ydPMAEvfna0+HW//qGmQJDCkx41q1vyCRkIPU=;
	h=To:Subject:From:Message-Id:Date; b=Ry+n9ciaztuozGgLM9CZLyQyINWT8b65fP9OdOb2bzqQ3Xfko4fya35+H7HUNhYo40s51sud5l9av39KVxHMwNpkJlfowKh4FCu7FkcCfuMwgPVAV4CZjc3M7G9JzPk7h3I15gVof+lVIWtFSmNsRy2ljFLmapOP+oV+VYAKN7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uW4x02Hy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uW4x02Hy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02BFC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757947793;
	bh=anvbE7ydPMAEvfna0+HW//qGmQJDCkx41q1vyCRkIPU=;
	h=To:Subject:From:Date:From;
	b=uW4x02HymcqG1WOpyS/KfhauzLcMwvYYvQLIddAmgDe8seFZkd1EMyTMIjJe3LIzt
	 MX3KCPfoS3/uPujgtZUV+hv84BjEx87Eh8NBsAF3A5blezD350SEVPg2XunUF1wiT9
	 uf8eL16HmrBjGN57KO0YxafBwWgtVUzD/GrRVvwjacztX+9p4XRTDUYBZkSyhvVK15
	 ikpIPtDXcsoIVWUZhEzjn0et5ExMgbq2yWkJaaAC+bRaphvC3jjq+CJ8f3GsxMTH+4
	 8xhei6nZvBTr85cUvcX/TdvI5o8k+zOTnyEZ+phrYhwx4Pq9tRtLbelKw2LXADRtd7
	 MP9EXoOy9tkdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90746CAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175794779358.1867.6840599321976668106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a4778a160c33722e5d0d4844020f82bce917d587f731c8ff45bb8b94a7e1a0e
Date: Mon, 15 Sep 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757947793
