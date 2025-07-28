Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158B0263892
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753710594; cv=none; b=U9Bl7opnniz0PaL7oJVGtbf8vF66LNrAZprDOTcK6XmFVmyMlAJDWXjQ12zhMiMxX5bM3kjLLGH71AFzwlPUXiR6ZodHBnpp4zw52vQ2bkYVBnHSwNSCirg/2RbGEKCkpxmRx8WOvNIMmlcfXpk/aL7iCz4Ou9p20/pDeI9blWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753710594; c=relaxed/simple;
	bh=zomefvTBUrp2dWR+vC3NMlsKyulqGNNijzLWq80Fa2g=;
	h=To:Subject:From:Message-Id:Date; b=ggkZpNZ/qPXJdhLbBhxh86khTPUTiLduYnGdphfVpYk+r1pIRieYmv1uzarjcVhfWF+U2/qkxNgT5i1HGAbctEBwWYABhL/0LtNKzmKTy4yeRNMsIEY86QB5qVON4IVmWIvUIVs0k1j7QQSPTO/bLXs0nI7klFYau1WKBaCPFdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fubm/xU8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fubm/xU8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07AEC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753710593;
	bh=zomefvTBUrp2dWR+vC3NMlsKyulqGNNijzLWq80Fa2g=;
	h=To:Subject:From:Date:From;
	b=fubm/xU8hpOb0RIdQH4sH5HhX631Of7VtPAQwLuDRmd/ZW8NSxs0enTTaBqxDIt1f
	 oBP3b3p+Lb031vjcQCEvf8cew0OoYd4EIf9l6fYwP/uW1HNw1izhquwYn+t/VZLXCS
	 nidK8ZArMKz0w4uclYslVNt/ZbO9ox6gNgeu0XH3exDDT2YR78v7Pvwkg4OEE+wUwl
	 Hsp8L6laEsicR4s7LlyrWziVufOOceiJdRYAkfHBfz3CxMOhukUnhJ7wv/lIJwx6wC
	 0b4FcGOHdALKP1NXtotItiXsXFBJZKHeQN2qrIab7hpZEBIw0FsEfg+FgtyL2Xr5b+
	 fVA7AtSmETBLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC8CC83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175371059357.11406.14035875786867010982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e306eb3d2cb0f5e3559c31ff75d3222aa8a747984c76244b9e012eff01d1bdfd
Date: Mon, 28 Jul 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753710593
