Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5145884FD2
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 23:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715643143; cv=none; b=cj+6LOwmSNHv0bNJkP9S2OjPTDkRWBoW+UwDJ/W62nZHXMqPCq00qGyx7kZBkT28VYYuRbDtv9yFFleRCkdjZrtxVBvdsw12LtyYbxF5Ac7pZovdM5TSCmstM1vxBcwlLphIoydJBt5FY5WOpmN+irIQAx0qMrIsW1iQHPwDkKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715643143; c=relaxed/simple;
	bh=ASiqBDRuq6dFSgZu1+2VbEFlnF1sJL9NpXvgvU2ZrvU=;
	h=To:Subject:From:Message-Id:Date; b=PhUAPLX4oE1DK+lejuPby+ni+iettCJRu/qE44q7e7cbnjRLYLmn/VlwEAjk0JLFIggLUlDJRda7GZNfcqt1AH6lsJmtKhdkpweoAmcBTKXRFE66boKNt4uhSlF8wz6ext6wYmzlXQXME32gHn21tG0a/WwNcU1BA5uR86dI4Tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dx/A90HV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dx/A90HV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE21EC113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 23:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715643142;
	bh=ASiqBDRuq6dFSgZu1+2VbEFlnF1sJL9NpXvgvU2ZrvU=;
	h=To:Subject:From:Date:From;
	b=dx/A90HVDSx2/pYo9d0dCpI7vyGTrvkz9Hnji040+gu4SWCzIzeF4ebAx827K9V8G
	 9Fk5gt5aWOU8MdDi2hu0OzCPKgCmqX9x43ixc9IKzfpI4qD0LnKhbG2c5kT305cADd
	 pJxjmwg/pUK0lD1or6rfj2l2WnPt/sVi0RdfydgvLCorWvLA7CTbmB3fAAPOvtfizz
	 VyPvKSOPFv6vDwu3Hn9AcGCH1aaj4/dqY/qaKrc1+xz2wrUL7qltfQ+1oHfVT3i2a4
	 ff4oR2S2EF4XMcqdilSzhTdOq3OyCjIXYDQ7Qq2/4gL6EYviBEdboJPeWSoXAulqEI
	 tgvzpU6ufiY2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD8BDC25B78
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 23:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171564314276.32052.16965621206319492341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e439322187d3b2ea5fa1db5d486dd1f3162b8d982b91ef22e0f5da428b7106a3
Date: Mon, 13 May 2024 23:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715643142
