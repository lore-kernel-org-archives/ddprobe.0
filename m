Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE102E370C
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753539594; cv=none; b=MQXxBA0pk5HxgAl5Sm/JeMPZ12GvcgCcrlkWzEmhZ4CcAABrQXDsOaosDdHs8M6v595OFsWY+oojUCM2ExbK122kzXteNs0S/iPlX54F6m9+P52o9YoH26CmtiY5VVhP/MfQlpbLbjoAliSq8D9QRuKbllQjOYJxEse1GY1wmRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753539594; c=relaxed/simple;
	bh=YwCRpaqX5e88UBHNZGSDZTxOhszXQGrG2+D6gXB8ccc=;
	h=To:Subject:From:Message-Id:Date; b=eFSxOFXPVlBUxwcwftsxJ8Wvg6U1cHJwt1mRVCQ9Ctyfoe2Le/H2NIdPpeQG8VdzzpoITz97g2Ox8V0zgVu8rX9+SO7mNGbjbazMja8PSeSxPPPOsdgGYDjq9RXFK7WduJ6yNaobw2Mti9Jtf94+8yfiZopTegB6IhnkosbNxDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jYibBDel; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jYibBDel"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43EBC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753539593;
	bh=YwCRpaqX5e88UBHNZGSDZTxOhszXQGrG2+D6gXB8ccc=;
	h=To:Subject:From:Date:From;
	b=jYibBDelxIkVVc014rUpH5XoUwEPTBAY4bJyMmeOe802b42u+KRpBea78qMfds2/K
	 YWI2rj8sJTDNnZRAeT+SKtnXjo8/R1eYElE7hcTxQyMmyxXkhDrMGt7UxVpGn9VeK3
	 mHU8uHNvlvHrqxpkQzWtDK+foRWnF8zw+Bvz9TwrK++CzcG5/TSYfPpJp/6nfD9Y+I
	 DUiTTFLSxokVi33Q6gLAmxhz83QOZkE1qiC5LWiN12b//jIDBbx3FHrO0e9L4T6ISh
	 g75sARbSrqRdcntxT6PVbGerFCweHCFwRn0g9LxHWTSGI9j0PS+Vr+cDIcW+IUMbN2
	 PoOu2QjrUXEOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953FCC87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175353959358.20206.17338170162041328540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab507d2fd515c1375ccfc510db74bac86b380816fd06c21f7aa3632f12544f6e
Date: Sat, 26 Jul 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753539593
