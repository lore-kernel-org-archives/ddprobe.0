Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361DB86324
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742885394; cv=none; b=OqKJRCQhlS6f+UFGcYwGGvc7Hmh9fAyuNjY0BCAKWqKHzEnPdNdb1P89HYuEwd7FP0pQVLr4yt5detoS4VArOeQ9xqdcoBzGuHkuhmG1HKCy5KfjzvtnZno/f9sa2rkUJ4CWGScv0XTZvAveArWX172C3fEKbnPQuu+5dljzxmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742885394; c=relaxed/simple;
	bh=j7pb3FN1NAv3wvKMDAtDoeX72CPYz4H4XD9I6/aeHto=;
	h=To:Subject:From:Message-Id:Date; b=nrIEja4f7csnIb+JU+rDmLgQkUM2zxByGjMzens4C94oJjpAKtQlHKTPQRAumpDt6JCQdq9b4PBl7rAWPDKrSVO7w+2bkiAmqkU3zDrQ24FHtfBkM/g9H7lRZhLhMdE6tSuUBeOUu+b02Ng68y7h0RdZsWo0mypN2KbYzQqfUp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=usWL/QKu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="usWL/QKu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56FBC4CEE8
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742885393;
	bh=j7pb3FN1NAv3wvKMDAtDoeX72CPYz4H4XD9I6/aeHto=;
	h=To:Subject:From:Date:From;
	b=usWL/QKuYVZY/WeaCmd8nQ5nprzcJIpNcRgM0TB9hxkJGbzpA5PimI+JeBhxYTcvs
	 dgWIDlgXb1UfSVwrrjlHgo/VvIsQC0Kif2fNpKC3LaX6B8D9cAr9Vql/0dymg1My6T
	 nRN8nyhEeAOqsjoMJ6SYxq3pOp7l05nJGnbjcpusKTM3dtfxd9RC0wUmVCGpxvfc7G
	 t0CbNYA8Iq3/6OmJhkSD1BSP9BB4zzeUA6PLiM7VK3MUnlHb4mLrrN8DWUYN9mR8BX
	 UfITNTw9dym4mR9ZCxLpjnk4Q33N40GspcjvtZw/6lS02YM48LjgvRP/8eMI8mHv1Z
	 4bfZRssvUTY4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950A5C35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174288539359.25707.8044290837852992581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39d72b226aa8bc4c683762b6eb4f76acafe6732c8af69de4458eecee9ef00784
Date: Tue, 25 Mar 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742885393
