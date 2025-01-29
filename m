Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EEA417C68
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738115154; cv=none; b=kowdIIMPQ/27H7jK4cpfGm6mkmNLUcNkw93kaZUDrDdnnYRfhLGFVKKnmHSbYKXRc2yyyp/7JNGot1QVaGCdlj73kv6ZA/nkJdBT/+eDAqSZs5GfBWZOPvCOWDjJvdh3aKG/dVzN9F/bsMb2JoecS4v7B1DHOd6Sih3dst1Fzx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738115154; c=relaxed/simple;
	bh=+8fTd54PvaxjJskIzNgAkcWWUBVSiS62KFZe0K04TcY=;
	h=To:Subject:From:Message-Id:Date; b=N0oFTOBKE1ZC4mBoWq7O1yOp5piPhj6xzTPbNBZXgdfcCy72esAErylzorjwzqCWq0LWzsjYHIHVLfOk6lc3dQRx6TNUTfUvRgpf02+28SmXGEZFzfq8uufrhe6U1cLEjTyQ65o3TmejiZPo1XsCsRgpapv4FfPnjXLSxz7mYxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RdTbvdAS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RdTbvdAS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA80C4CED3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738115153;
	bh=+8fTd54PvaxjJskIzNgAkcWWUBVSiS62KFZe0K04TcY=;
	h=To:Subject:From:Date:From;
	b=RdTbvdASJE/dx29Hy0gToib92kNkawmMoUbqGA8jsmF0fJepPE8zTPCOwDqAeitXC
	 Yf6XaK6Ah1KIxKgQErWL7qj2Nv2u9fuRUWFU1aHftXlCerslUQTYtqwI5XfTCz81zu
	 ZQWeBqqqhN5y8ok+tdLoIqStLCvsfjtG/aaWMRCftlBQmTeQ8z85bBAiyuiLKHTywu
	 xALrd8TJvoV5OMIq5WfdcMJRIivfh4Hd2z+vJn5bUi/RKJfmmusbl1gzFcyxigN0l8
	 c0w0pDYHtIHoo1NnfB6ETUN8P+tmQLNiCyTji0FVlKtklmpc5DR9afJ5V3ndOROvsP
	 r+RvMS+5iGGKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B800C0218A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173811515362.25468.16510724353109726017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cbe0880b6a21cef642a09e6da76e7748d4f4df270b9d2faa66df9456c906348
Date: Wed, 29 Jan 2025 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738115153
