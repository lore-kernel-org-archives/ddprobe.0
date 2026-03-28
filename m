Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D84F9D9
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774739694; cv=none; b=irdyfqQgbnE+dbd9G8FBTrs+P5abH9/ylpEsovtYKczGMAwwmuoDHIozoy+CigBGW9w0chnd81DSXc4+RpMCav/LtT2DWRu4Kc61WXdkIruBdd/Dw++qcYW6sEBecppQZj42qX3CNoGW7hV62+GG1m5aj+BEs83m/BOCGLXYSYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774739694; c=relaxed/simple;
	bh=jA+PzlS4QECTBi5ZPqfySHP4LJp+quthua6NwSWBIeE=;
	h=To:Subject:From:Message-Id:Date; b=B/oR9pJQDWjr/t8Hrbz11rEATISiTF4WQ1HPgTRoK71LVuEFswvY/3dicrDgsjNeaKU797KedVIsCCoyut2pTz7quvxPw0skxsFRy19DfuS3+Xp9W7sF9QMhEdw7XuuCMxZryzrX4fuLqEG5UQ7/gmBkIIbGwLlOSDObYOIo6hM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jveGK+Z8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jveGK+Z8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A911BC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774739693;
	bh=jA+PzlS4QECTBi5ZPqfySHP4LJp+quthua6NwSWBIeE=;
	h=To:Subject:From:Date:From;
	b=jveGK+Z8xr1NLEnIblZ+50P9mZ+k/TGIjD3lGa8Ntfcy2UTXowqqtOlEaoNbXLNKi
	 eu1e1eYOGsPHFEaONm9j1xlaTpMvfe9Rgb6Wwi0kWc3W4viuMjuP9NhCql9aOdNQYK
	 uRq8KxzAkWOHp7VisYy2/WGfB/sr7KNYX6960aIYl/btEzgHhxt2e7WN5DtWc8co+l
	 yhLblWr6kc3AZrNwi4XfHb2cwP2yQxJ0zzJ6BQ8Noydf2wXoVxNjs8ekEhjOuIaOfS
	 PoXbbCXsHkai6QfDj5zHPGRyfR1Oe2O/j+zfqo97hcB7z3FxblpeAUf3mhFc4MV0lY
	 x2dB3+BW2dc7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9360610D1487
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177473969358.9460.12002181739532332297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27d7a9a3b3cf81129249ae002d74db5eec5d45705d0d4a0e12a9d69563cef5f4
Date: Sat, 28 Mar 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774739693
