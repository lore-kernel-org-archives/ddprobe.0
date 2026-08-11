Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3845E446C08
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786457434; cv=none; b=kIXoFpmFt8whlg1MUY0rX1iEOBsJzQwj7Q9K2UnbKmYgDw9ceDieqQxmfe94l99WKtA6HaMdJ+WYj4455zYXar6yfDJMULqf0Sevsm6OvWmaIK8KZJPkgUqZu3h8QyOOl7L6nJy4aVj4f1/uGq2vQya1R9MXNu/lpCKeDZEMSFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786457434; c=relaxed/simple;
	bh=vcEctPNDfiKUtt7/SwpCizLG7iWHxP/bY+zbcGhfj88=;
	h=To:Subject:From:Message-Id:Date; b=qcV22Q+WM1nJtowkoA/QiX+5VV9TzgYtd8AII5hkjKjQ1lszllq2J+1ciCjC8zOr5BBj7WTsuLBTSQjdiNEXQneT0e/ISUQjLdNz/fdF29MKq+sH1ujA6iwG4INXKBY0+yBs4IHcqovQUP9FZWrw84P+KnKr3vZ4inoBzRg7X3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xfj4biiE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xfj4biiE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD26AC2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786457433;
	bh=vcEctPNDfiKUtt7/SwpCizLG7iWHxP/bY+zbcGhfj88=;
	h=To:Subject:From:Date:From;
	b=Xfj4biiEwvkUSkQrsPgfO8c82G3pDOM58mK2En59OgVKGqXaNvDXZwvFrsqHY5/Ym
	 p/7CZ0R+mS9ePYZDE+dffaNShl9P6VeIHdKepMXwfiZeLuh0byhylAkZ6VBMr/5AIr
	 GVvyrfqtGb00WMRubuxPDEA3BSoVSzj9HV9ISr/M3t7D6o6cJP0435TUoLV24YT58D
	 K2PnSUmw0Ha8RzVwfwnFe7HbRxVOZ+tYmhgKwhpM/eCkWQxtpuEZ/RUSrur2z+qLBD
	 pjPt2Ld60wAB9CfMicZTwPtUsxuQZEzOOZJoZ5SwQcA4epV2PHwapsWNw1hvh5WwbV
	 q5FIcJsbtF/QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98C4C5B572
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178645743368.9988.2013244727522047713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a8a8c33dc824d7b6d1497515a8c20ac6a9ad6e658ffc35bcb1e28afa14e4bb2
Date: Tue, 11 Aug 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786457433
