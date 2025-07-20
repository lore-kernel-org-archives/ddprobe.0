Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320DF14883F
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753016994; cv=none; b=RQZJZh7Qgmn1l4V6HVwpp58RFiESZ59kFnb3JVg5OZBbfVGOiEss/hOeZfJuPBwSx3wdFA8WrM04YO9Y0Sjqgh+S9cL3JglE7uFC6T0Krnzs1M3yWVXGmnuv0lNem/TlANVPt4+qh6N5l4FatYC1mD8ud8fJB5FsoHZK2qxAi6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753016994; c=relaxed/simple;
	bh=m1SDGrPf15nihJO5Uu3dCp/gOCYLVQF6OC2YvCSCM9k=;
	h=To:Subject:From:Message-Id:Date; b=MpBhZ+P8fiD7eTQNte3I4ahGlTxN6nGfAf4hE9KEc97T+RoeS1AKbygD3tzWwAS0U5twFMj10TXsuEMdx5zu+I5rftbVsn/UjjELjMWpdgvVnnnlPgCZBXAjolzOetf/3rHgtzQIJQ1RTAkCZGYF9Qokb/WJRUvqPKmeot/npA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mcGCPA74; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mcGCPA74"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A106BC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753016993;
	bh=m1SDGrPf15nihJO5Uu3dCp/gOCYLVQF6OC2YvCSCM9k=;
	h=To:Subject:From:Date:From;
	b=mcGCPA74JdQVQIPXHgWXGCK8D/ghmCKFLL+yj5l4prGqVb6/ge7zBr6fOw4ket026
	 VengHBoMbtQpM0h8erYsPFSHohbRYt8hjzNct9LIsw3sJL9NDO3YgFWvDuyw7FRxrD
	 qMgsNQ0JbME1KllQz97chca1fqxrD2Hdgyz17gV739dSN0w7HUafXZ7we3jymHlrh9
	 KNTzJKiRsFW7OUhTH7IHCV/eVgbP7v6f0w+WjEc97XnALJaaELUTFC3PhJzTZGCcoO
	 VMznqQ/SGr2rMlBSh6jua6VxafzLVdjbjWVm/vUNQuScsqy7RFYysvSJ9XnF2TDsKL
	 9R3LsLh/yR9eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC3EC83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175301699357.16031.12900770805057551495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8ab2072147e84af9ef8db497af69ef0b83d4081255ae39623e4a83bc7495c27
Date: Sun, 20 Jul 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753016993
