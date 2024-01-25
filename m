Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7076FCA
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706156897; cv=none; b=ey+bvZS5wlgUMge+ZhJp0YzNC//JrKMLCkza8VaudTQMFq7feuW/3AkU/BD7f4nEAS28N6/cX+BNbWapB+zThmrZBoxrCaH4weAt7zhSXtxu2w0CpQVMwIZYntd39qOoKjIdRzpTpqlPLSahn+pLJyaU8xdXwTu/1MegfP4Eyzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706156897; c=relaxed/simple;
	bh=6vo5l73HfthGY6vDbszbQkXCZUEmfbSl/4bvXoir6rM=;
	h=To:Subject:From:Message-Id:Date; b=m3aI5SNSZAxh0ypRvtuCCSuehdUQMAJARGwMcORhpoI7RoYr28AgbdI9Vave5jhPdXakzmEcgPEIqNa2vNKdUdq7IZFp7iBwzFBKZz19HTglOAl1MrjH6++cKTD6853FtZUKXs1VDsEoS4E5sDy5tTiWbpqSwmNYMk6nzVHW/1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h0/Yh4sG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h0/Yh4sG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC74C433F1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706156896;
	bh=6vo5l73HfthGY6vDbszbQkXCZUEmfbSl/4bvXoir6rM=;
	h=To:Subject:From:Date:From;
	b=h0/Yh4sGgytIHTvT7HdgigHNFG/U1yk7FI2SxEtyrjykfruuTOSV37OzRQpSWnFZ4
	 U9NnaEAaHKwInZv0rQ1Ksln1dZ638EDiYhELfZmmzXGyXgIqQcAqMSSICaXcTGwDId
	 y60e/B4/lvaWst1ZmrNOHDlUMXwuAb8g5AkAOA4erHKeo2gVIRCu0NmpxIsYhNNhmb
	 WRgvcmgHClMC+tHPHVnKfW5sNgQTjxlURa9EdJLUmV71kyNjxtq+5aKLDIg6m/i9RC
	 OvyE3yJ4e25149bQ2i4o/ZYPnMdP7jREOIv9mQIJZuT8hiWUGVKb7czenCkE0jdDtV
	 s/yPurcq4LgwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ED5EC47258
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170615689641.12075.10935769432640967665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f45ffa50732b323da4c903c664fafdefecea3a0d7a164d6a4103e4436d9d9e9
Date: Thu, 25 Jan 2024 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706156896
