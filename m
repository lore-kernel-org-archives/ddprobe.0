Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FF51A01B9
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749780594; cv=none; b=KKKpilvgr1zuzJVx3rmsz4Tm+Y/Vn51BF3umTwAXVx6otN1iGuTqZ4hObm7dxn85aXerAvY8UlwvFR6zWBOOPHdY8ROLjDbQePl+01wUWD2B9hDt57N1/CNq+vYOaetQPp5KdIX9GlbLgEmwg7soVmpj9i0V5zrQXo8Hi0Cye5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749780594; c=relaxed/simple;
	bh=hHE98hJAL1N4YjCtWs8a4gtXHfcygmvX4/LJDGnQ1zM=;
	h=To:Subject:From:Message-Id:Date; b=NpSr+eJaMVpzcgnuVPDckNthXhN5wQ1kwEAPu0MhdEUzWSB+o5AQUle3w/cBiShW3dTzbirkNZBNWRxMC9vt1fbs0uOhhBAQhvk3jeRTS3IwMv9DAwR8Z+TaN/ZoLXOQfOK6ChjHoaRJ9xsKTUISLwMeViv8UhKhZFxwG43Q7C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E8/5Tdy7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E8/5Tdy7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A64C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749780593;
	bh=hHE98hJAL1N4YjCtWs8a4gtXHfcygmvX4/LJDGnQ1zM=;
	h=To:Subject:From:Date:From;
	b=E8/5Tdy7LOGlIb2PauHEGZcLU1QXtlALTd4JnikG38oCeD1j9Hx/mE/laYtK7CAVh
	 m/vfjceuYzMe8TIBYhVQAjtvWdzl+WAHHSF7+jE4t6EqxYv1ZG5Nb7qw3n2s9W9M5o
	 8qniT75OEM0hn560edvZieiXcKjxN1dKs9hlNKOvFuZa5Rn1o6HcR+vcZ82rjVQURW
	 uHMbA34hnaJvnMFzF4QH3w40vm1TdCzC/Udmlm8tLQKeJA4Nm0S5fxEgFAY6+OqFsv
	 xXZscqTDo0N4fiTAEizOiMiaVKamumbK7KN1ZRT+nLBN3ntbnzWE/DduF2x/dNL5tB
	 EddD9bwC48ROA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91720C61CE8
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174978059358.12058.17359915811649130567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29280165b9c7bd8990d541b149280ffc88e5f4f628db93f6451edfcaace14f8d
Date: Fri, 13 Jun 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749780593
