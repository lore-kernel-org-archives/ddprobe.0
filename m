Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 885F03D6D
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 21:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716757463; cv=none; b=iM22oQmXLgUAvU4EaivCUdH25b2aWOMdzHyScde/gA/N3Iw5dshjQwfyIkISV4Ps5qz5uqpIk6yzN/SlV9++Ot11qIidclO0TFGbp/Ip9+eD1YBHlZ9PbzIpJPEKlD8z/0USREStsjm3LSPikve1sY9u4uPHXWQzdVgwhvn7hcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716757463; c=relaxed/simple;
	bh=S4WTuCyX1YAxe1VA3nlASPZ4xfcOddJOG+Mw9RGF1qs=;
	h=To:Subject:From:Message-Id:Date; b=ah2iYa8uz1ad8J714qp94A8X9IpX3LQti96/f8MC1roZk6SkUD7Ywop969Cyy3W4EJ0nL2Tn79Lr8Pe7kQVKCx9IHp3tk/PZTL6tvyO1XU64S/uIEYK7OGsxIBM9iqffrSFn97//apmy55Gf9IcmhxUUmLZIapXsIVgXyDn5u3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lq6fOzaU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lq6fOzaU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0F2D1C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 21:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716757463;
	bh=S4WTuCyX1YAxe1VA3nlASPZ4xfcOddJOG+Mw9RGF1qs=;
	h=To:Subject:From:Date:From;
	b=lq6fOzaUSYCmtBJbbzXdN7AKwnC14JNkANlly0CVoyneotwtEpecGvDu5l0sWdN2r
	 AUCaNuJKwqaqgwBvZBdxlVuQVEGcNjrxly+bcMpu2y1AfZKQsYicyQKcwDOOSGuBjA
	 d6UjCvliO4b0bi4RzhEvpUYirjwFio4ghQcxfXyyLQ5h0s9CHO5A3qGfsnCkmKzhJm
	 L3dEJ3uA0F2RDACwcx7J9VOhxubxn7IcnDTtceobK0aZpDuau1HPyNGQZf2Gq/m/y+
	 3D3cwjBb+6VUPmpPF7jy+YTxJtlPULEjHCCjbLL6oKDzg+HZ6CFepfDhKUw7OeD4Us
	 lFjyhCAcu1akA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB448C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 21:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171675746286.14987.17832493005103871880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc5e9f13bc004e2573e17e15ecb5ec08bd4eb134888b0090a5480e75d18b6ea4
Date: Sun, 26 May 2024 21:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716757462
