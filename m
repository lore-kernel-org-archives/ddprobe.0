Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD681A0714
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748773194; cv=none; b=Bf4QLjioXqvYdRsdAqtfjMXYegdf6f/3PYl81nRqO2eYNgL1BRhpglmZ8olVKKLqHYBa+yijSDBTxdynUsZi+B6XKiGUzYU0Cxl+8nkrfZKI+gOmEUTmuhZYPBwsy2glqB8r5Vo9dZgvOIqGTnyyw6/vNrCPx1MIh+uFT+hOY1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748773194; c=relaxed/simple;
	bh=VRLj90npNuVwDWI14IOYKAk3/1etY7+9pUlS3O8s+n4=;
	h=To:Subject:From:Message-Id:Date; b=PFv7ysDhml2sCCilEAWwevjFeiNNsPYoGVpthSFoNxI2FWz2NuAz+JZWVi7TcE7K6znBLp2rfVNPrfn+Toz2YZvUPx2H7jDbmhDc88T62pGtNRAX1ypDObfpYeS2I6IK9hI6w32ns5VZs0m1SCYTjipr5wOKaNV9yB+VOYFzaZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+KrxkqR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+KrxkqR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39A3C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748773193;
	bh=VRLj90npNuVwDWI14IOYKAk3/1etY7+9pUlS3O8s+n4=;
	h=To:Subject:From:Date:From;
	b=Y+KrxkqRekrPPX/GnSIoF0ANFOMGFpLOLDJreqZvYh0oqONUvu7i3WA/vmviBOlup
	 k4oBI0Q8Jw7ft7+Shf+LDobmX5O9w950+JA6fQuN6pZoJcsEH55PNJ5BC9GtYq/MwE
	 +V69sz2zr0YM9c7Yzthqllhck3iSiXh1Lf0bcQ2S6TLzLrQPgpySuvX3MIxcHbp6+Z
	 a5azikTBGSsKv000DeSeb/IrxcwYW59m+EGb2Pz1/XXPxxdQZQctHOYUHy3tawmcDr
	 1yN7PjrpoOILxBfNapAiw9YQMjV45X0AuJCbBsSxxXhTR7PFtSx1yo0bNSDm4sfgT+
	 eF9FB79A0O07w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EFEC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174877319358.2706.3868325559555747970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cec93c4a39f9ff3c0ec21ae723b8387049c9f72924f0044036488c6ed8533e6a
Date: Sun, 01 Jun 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748773193
