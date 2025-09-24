Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC091EE019
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758694794; cv=none; b=oUXCSy4kQhjJ8MaE5F3uZNCwmzmH7cEeIInva/saWioVO/CkU5gu7yyVgnQLghh0qq/Py+VdgLjvTzevWxLp3b70Belefwnxgqw6G0JafMNfQrEIJ78aOxUxaeecwNk4OJGOESbydd71+v4h0E7C9nWXph7/ITHGVkyBPy8JfEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758694794; c=relaxed/simple;
	bh=5q+sFODZTrWn/StX6JjR6droQk1oR+5CduMHlZovJIk=;
	h=To:Subject:From:Message-Id:Date; b=Lhk+pct+Fupa9V9VX7e9PDBqcodP0khMmsJ3+FC+ry92KexRMpvTWw0YeUHoXD37vqLgicC8OEQzUIaoi1mA+6QBGNPfKup4Dd6996ION1AphlLfIjZnvgENXzO7bWip3m9BHdmzugphLoXpAzCaZn+wgmzxezKitM6zN0tLBoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VJDUgD9G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VJDUgD9G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A169FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758694793;
	bh=5q+sFODZTrWn/StX6JjR6droQk1oR+5CduMHlZovJIk=;
	h=To:Subject:From:Date:From;
	b=VJDUgD9GWVCXIPBDlG/F8nvh3TROqIGORK+OrTAk/6jjuRmhdJZmqJlxwHXkjjl4X
	 ZP/TxarQ4VL1maN0wPffGIqKWVsX2whpWHBrYYPgi1lYUL5BHLziOgieyWmP/e4yqr
	 2DcwMyCWzcLhfFVZZHiWTxiflAUF4LMsCKweYrKLP/ojEe4apRL7WoAP4/WhIVc/ae
	 /bVNCfmTW746kAeqU/LZY6GIzOdYBRqAr+EnPms0D3l+fVt/xf6yE0En6JiiMfzfTO
	 ddsmGBKYX7NCWrT7gOoLArnE7/MNB3JX+lU5t1B+uMBXmjn6AnF0ll+Mi3tfcwt9+v
	 fiTmateHk28og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F663CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175869479358.29117.9420187981408982316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1838dffd89ccfd7896b75f34524df4392031e2f4a0a1f0465b5dc28cf30d7e50
Date: Wed, 24 Sep 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758694793
