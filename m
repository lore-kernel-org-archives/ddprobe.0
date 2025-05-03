Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465FCCA52
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746251394; cv=none; b=ADfSJD3zoZ/T555mPTIj55ci73Rr6hmGmm8/mdaywe3Q8eOUjNUIWEKzuxeSyoijs2c1vW2txu8bUAywhQ3tK6spx5DOcD35hvilsMYD1meedGaHW1YAsC/04EGa2hGcWdDXLC4GTUOkU7WNQmhV2wKU5VTBNSFb/FHt8X1hsic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746251394; c=relaxed/simple;
	bh=LRT4HQVfaWvuX2bP38auoUW5+pOrRGJP2Uzh+e8NJ2Y=;
	h=To:Subject:From:Message-Id:Date; b=KHlaPW+K5BRzAA2bCf7xhP+OYD7b14vdkRCe3Jt3Ze+233CRfwNessPZI+oIYuePP2VsaxWP5HvA3ypeReNr+sDxYTmjVZzG4XlwlxURLxbUJy+PuGxRLKLpk/HfOYoTrbjwm/c2xEioqHCkTEbVoODkaXGqNs+iPjxhLpCFUFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S9tE5Pc8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S9tE5Pc8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B57C4CEE9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746251393;
	bh=LRT4HQVfaWvuX2bP38auoUW5+pOrRGJP2Uzh+e8NJ2Y=;
	h=To:Subject:From:Date:From;
	b=S9tE5Pc8/Psk9FyWVNv5zzO6K/0B1FN4LpF8B8j+tcRmjAe6Jg3j+dpdFzVlcoAbV
	 XifBbTDGjm4lu9+2hflitrv96sXqaF2nKMtvL8yvcOwAD63SvtFz3Y5b3RUrX23Ih6
	 E3KRbW0mMMd5Lw2gcpwXyKx/4ZXSqpxO1l5YD6qVvQZCb6IZc2EAg7qhtlcSDw732X
	 1RcXQ7NlQjbGVE6LaoCRRTQHX2ucDVmNFD2KYQQ9WHVl0tAWGZyusrM+iyuuarNAAQ
	 M+1vG4+Q4ZivZ7CePXu8p14lWMQDazCwv/ors0fdX6pgl4vK66Y59vHC89PcjWwrCe
	 uXYi1mxH8w3Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94017C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174625139357.12758.11912901899963557702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 500468269031d32361fbf295f831d35d011ce917c3981d4f13ee9ef5cd5afe31
Date: Sat, 03 May 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746251393
