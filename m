Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDE1920DE8
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710714497; cv=none; b=K7polOV4NqE7ZESQCvBvnDjoKwPg4QJi3rMihEr+zv/Bs7D5FFcC6A0JTwndcSs+tm2x/0xMHsDs6Tppb2L4UkkUQ0GDn1XJDew4ZxxWzbh6S6K3zenZbOdFIs6lmTmOar5O5Y5zQhvRCOtsUWHKkpNX9GsyphTzl8yANQ1zN2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710714497; c=relaxed/simple;
	bh=NEphdDvK+qSJ1QgPrpFSD9V61D7YQZRYIF3vIzneY+4=;
	h=To:Subject:From:Message-Id:Date; b=e6jaKJYlxySF7q3FVxEiGwpFpyshvM2nkm5pzMk5aJQ7jf1Sq2V/299FLWAdNpYi/3TRu1lwUBXOdw0Q/pq+enZjckRp1z7nQqd9qF6v7nt0l/Ji5Jia1ycbH6iZ2FAtbmuXedR/IUShEuPv9qGq+CRVHJQ+FQxtDhuOs1RdeUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9gm9ggQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9gm9ggQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A99FC433F1
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710714496;
	bh=NEphdDvK+qSJ1QgPrpFSD9V61D7YQZRYIF3vIzneY+4=;
	h=To:Subject:From:Date:From;
	b=E9gm9ggQIZ8eNg9EMDqPqLMHeOvGSlLAz0dvrdHzrbRAgiQGtE/H2V+VuaPlgi0jk
	 cZJV10i3RssfRgbYru2gdaVhKQWl75p4PsG+VbC9sKjL2qsrQcAG48Nk24dK3T1bIw
	 WWf0/gXYdZeNTJpSQfv92ZMHCI/W5LST+iZerXMRnvd9qrpj5F1WLP3Eb6yOznOnbL
	 3mNKlzGdAPE1i1FI3SYZerDeY962+tulXnB2oE22mULcuXK+xeZYL33bd0URenkE4h
	 hnf6F/ybffLiFQrYi3SDIeiK98d7jOE1ea+O5uOG30ra+AqQmSp+5wBxvLHTUbpD74
	 hBT+Wst76aAPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60EFBC54E68
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171071449636.32340.14565229804405617091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c8c52e518559b13b27d565e83977ee33334d183dad7eda864a66eaa33b06202
Date: Sun, 17 Mar 2024 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710714496
