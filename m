Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 510406FB0
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 02:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719196943; cv=none; b=kNix5kIxWji/ZbD99bbcnkgHnsDTV9g6TK0vdSA+Zo7QzdvfVRq2Oidf68wiS8pMP8GKjXTMLs8sf1t+VhO1MzXa0xyCz3erDxFph8pssUH7i+dr9nQiEmyOBhVRoR/mFnl/VE+TcBMfY3NF5vt2Ru3OIqDgltBR1hiPgw1FZYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719196943; c=relaxed/simple;
	bh=KFePOTnCzdXU/wvyICs/0vhtPbAtIK6ucwCIDlkMP60=;
	h=To:Subject:From:Message-Id:Date; b=uUJ1RddP1e7Ja8SN/eHZdV6moqbn2NapjVpVgYK5+TIO/z9iGpM+2mjXnD9ms5uK748GbeDr2GhGfMuvHPRdhv641m7WK6Y0z27UqyZERHKGoMHTN05bw7btad2BKXoiQMjwILCIut5srFzd0UIiw/8U0OoYmY2mzJlQbSK4amc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jbfw8AA7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jbfw8AA7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDD93C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 02:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719196942;
	bh=KFePOTnCzdXU/wvyICs/0vhtPbAtIK6ucwCIDlkMP60=;
	h=To:Subject:From:Date:From;
	b=jbfw8AA7bjv1HQ9Rze2MWXRRiGggI4keLCXUA4IdVhyvoJd7s/nM12Hhu4i8bBkW/
	 SvYj6WQMHOoIl9x3v2HgO4YAblVbTyTcX+NFLa78tUgE4qUE9mKU/3gDhlmyD46/mp
	 yBnQ2u2rBlcgfdYNXMPKm5oBRTW2jaRdWOWOgEBCo8brA/p3aIG/9JkVBZm8V904bs
	 1whNT3ef5xiQGH9+t8ffYWRS+HGvR6xaOZxsKfmWGEZfsFVpC2WvkNSTsoJbmAo1j6
	 36KHuvdFxWhRsnHSE16F5MFCiWqdL6C4/7qHhSz3xGW75fx/q+0gfICucHa91mUCmP
	 dUbM9mA8+2g7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8DA5C27C4F
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 02:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171919694280.5193.4922453503443879235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98344242c49450ad36782d3ba794a7c395c8ea6225fc7641b18f8d938e152b48
Date: Mon, 24 Jun 2024 02:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719196942
