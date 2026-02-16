Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384A342A9D
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771215294; cv=none; b=KdXyfXxnQHfNHXclNKh6oPvwaR/zGfTpj57zR4dISa9VmSCjdoD+1ghbYkwgIeEicaYT0StdIJn0ZQZ2ITqW9Dk3lFq4piDZSvbcjMsgL+dgsUJVSIbbABHY5HGEjBSu0nkGDXBGAUFHKOfT9G5VeEDoiDgbibRuvHkuYBYvh7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771215294; c=relaxed/simple;
	bh=uytjvmAofEMOgtf9KHQzLekUQuhINNjRXAGdEy4n+4I=;
	h=To:Subject:From:Message-Id:Date; b=TSsyZJBE/fE6C8JqymLFWgCtXjmkZ/KxCA5Y8/cHvjpKhifjmfFG3RyK78MSDIoOtj2jLesIha2jwHqHUI3vQFbcpjq4hWNTcX3f3BFMYgim73hCMPrIjK/Evv3w0jAHmDd/aDQb3CZUg+bhJ8z+9s0HHG5UiN26O4KbWwBr/EY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EC1wg1q5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EC1wg1q5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B729DC116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771215293;
	bh=uytjvmAofEMOgtf9KHQzLekUQuhINNjRXAGdEy4n+4I=;
	h=To:Subject:From:Date:From;
	b=EC1wg1q5g5ox6nuPJZlHM1EZ/nNRxp8WGiFETk8hfhSQpquGqjnwLRlmR1PagqykL
	 U+IoKCMNNl84ZNttaZM4mIxaUoDsTpvODMuKpCKFyU/uaIUMKUp/80EMJMaEvxH7fe
	 VoyZCI0iOeKKILW91xbCia/UnfPfKjBp83byxjw1fnPuMWgUshkMNxoeleImJF7t8e
	 aXzuizuXRU4lfO8/0daAPq86OtyQApaixz38QFo3Rksc7c2q7LvhwAn1pmJHnqw2yo
	 b86PeIowbXVdkVL5xoYvIRDeWUTsdATgPYYNzDpad3fRaJ/dO0AxOrH8nimTe0ZB2j
	 2GQ+2R9+m8CTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A06C6E63F2D
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177121529364.21375.9939796141639716610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16af16cdb14ab6d5e03b923936cd6c41788c2d775140f88afcfa294395d584ff
Date: Mon, 16 Feb 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771215293
