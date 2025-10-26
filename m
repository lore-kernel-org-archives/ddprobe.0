Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279E34CB5B
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761511794; cv=none; b=cAqTnxYfczq/aiatXXbpdshDCCbABySqrwuqMPuhheKPllN3hIG9wep0cjzOwOebyOHG6N4U+Fr4yW6aXwiZciJYDrM7lDvXGVvh4KLnRn4TcKhVQOk4jDOeHz/nE9kJ/HafFIFQE/DNoOrdfhdbx9Oy4K2vd4h9s01TI3vIrbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761511794; c=relaxed/simple;
	bh=jpuQDL1Rc9+LtbDp3da52a8xrKD0RtBzVnU4J3mLQf0=;
	h=To:Subject:From:Message-Id:Date; b=p9I4l8GWlA2bVhUAPawBsB5s7W6f5QRzHL2QUcHsMKojEcPChmUe6bvoJNuF+3IJ9xheDTK4IrftYq4ypMgd0JsDZZlnzt+HTYuTmll133ZTY0yo66MSCQHZhrQFHW/7MtVIwm7m9Kafc85JVGP36ZWiBpdd6iK6kQeSRyfwCNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ttm23Fzd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttm23Fzd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC95C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761511793;
	bh=jpuQDL1Rc9+LtbDp3da52a8xrKD0RtBzVnU4J3mLQf0=;
	h=To:Subject:From:Date:From;
	b=ttm23FzdZcnOk7qlAxn1I8RT+qkdEbf26yfPuv5s+Kki6oFX2lre2ZW1wJ+Hzda2r
	 SwnbZMZB2DK56D2hRUGqViAHNWbEo9uBjk5hCtBpbmlTGt08BAynP0qagY7u3LD9G2
	 LgEKAyitovXvLwE9aE2HWxgghjIRNti1ePCy0CuNWvwZLfHMODoEX04oEQB87ry7hA
	 c8F5q/YNY6OR1mqv4e54imtax0eqb6dfslDvmkJmUD3yBafF/qSFv0CEsCz3Qis9Rj
	 01pQUpNn3hQTHcLQ7I0EG5ZULCUd4slHrA1/U0C3izqeD6eq/xt76QS40UN863C7t2
	 Ec8sW6TwD8wKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F9FCCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176151179359.26538.13579312418254935660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fd1fb3ac5ff86e4b4ef203fe2ab7492fa2f0d6e6c5a70c8e969ff9ad47f6f21
Date: Sun, 26 Oct 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761511793
