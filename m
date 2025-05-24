Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D471A3029
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748111994; cv=none; b=o1aWfxkU3DZYFQbgxa2ksEOpPzPdLH+DC3l34m+2JrjZy4Aa22DeNxjMMuCIKu5VNO6bJv0WmaA8PC7Jn5rxZ8yX11uw/ub4odNXOAbKwcwFz6ulyIU6EK7HC0qyU3/d248lc+ngVOefAtmaOpA1qiupZixqCS5thBBsHUpMYOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748111994; c=relaxed/simple;
	bh=BxW+hLOwdbLRmsO1biRmM/SOL5F7IajfiWUCtyBX87c=;
	h=To:Subject:From:Message-Id:Date; b=fDwNFMIMMmhQe45d1o4AG7Rz+r+w3tKQcD/i+AyqCUOdJOpzzsCNP2niEdhutF3QvnvPVYjxDvGrDbJYXTnnBSWGN1HyN+VKuJ/bYgBNfvh8AigeUrNwHnXPt/B/h5R9lyCv8D0dhozhymvZ4HHFtk4wapuNf9wZl3CnClw9Fb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H7IIBSMi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H7IIBSMi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B12C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748111993;
	bh=BxW+hLOwdbLRmsO1biRmM/SOL5F7IajfiWUCtyBX87c=;
	h=To:Subject:From:Date:From;
	b=H7IIBSMip7HlEISP/cPasBkjbEFZYf4SCp2SIwFNoi+loalG+JK82vvpbwP6E9dV1
	 4/ixhGFpbse7+VXNEMlvH3Zd3ZItQBHW3+DM5TAcEZDE+uvjSOJMgG/NBB8QXtmqT4
	 cYddVhKsCy66147C/MKM8S1AFsXrOOmphFSV13fI7daDuiEtjRaccQ2xjUF73mGUq/
	 jePIhGIGS42HlJ0OUqimwwr0LuNZ54UiTu9TN2sFtrfKFyJJJf35YtNBXpOrOGkzZ2
	 kHrJ9o13mO966nXm+NpCwVB9ONjFP/PqIW31HSqzLcMkDlGkddoMw9A+LQc0SewLUd
	 5r3getdir7b2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950DBC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174811199357.7773.13408092129734514338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b39e4d8493f7a08923c87b550f42727cc201fdc57fe2ca529f83d2db41af76a
Date: Sat, 24 May 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748111993
