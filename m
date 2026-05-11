Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A69B1624D5
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 00:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778460634; cv=none; b=Qw5m5HSrsvvrlcItEfvAs0Fa6XUZEAuf9bWLCMSnooH7B5w0TwjG6F5nWgCg3Oxcow6vn3SaSVBqjTJvsxW+/gB5ERHHaNhk9X/zPiNsZIHb7Vmt6Fhz8dDKm/YvrygELVj6sTjSG60M+3K2ImnK5nCwmWnNpOIZxaQRZ7oLp90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778460634; c=relaxed/simple;
	bh=OkCf52MiZbdNQHrRQ5pA5LramI/v6Mxsu80VcIiRLjI=;
	h=To:Subject:From:Message-Id:Date; b=k8E0kXsKZwQORXGvIIaxQKkxv8cF+LQINePEjJQjR/Q1PjOUQv3XptqQCvm5HjaI9aQ+FaOOKoWesY6/U6f3MgnWu3sRVT8o0nE3+WTCq4kTdyrLo7pl/F+ZfbiZbXHAqaECavEaHRWMa6VWj2Hx9EOoVJ9fH4LEQIW+0mN0Dmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sJnQ5c3r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sJnQ5c3r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C85BBC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778460633;
	bh=OkCf52MiZbdNQHrRQ5pA5LramI/v6Mxsu80VcIiRLjI=;
	h=To:Subject:From:Date:From;
	b=sJnQ5c3rDE2DD18ZoLYGWEUIDWIeViToa6rIxSV3K2sYW4e+vUeiFr2EoMmrsnLSl
	 SgHBhcc3BSJ3BLN0zzy5hGAyVUvUGAvqBk31i54/H0aszLi1kyhqWx8mJmcOxnpqt4
	 6XAotWBcs/guIQQyNq6L8xAy4r2kfS1kyJanFQ9leB+dGNvjC9Iw/dhWWBPrnrsWgM
	 T6mCPqiYhlIELDx/EN9NQxx0kDYaV2aNCXO4BrLwT7o+awnoKcsoKrSoDfLygvGoIh
	 pMIKhULa2OroMjOTXcuRop3/Umea1z32VgiGRiXQ+Os5lX08ds2Ze1NjWU4l6t1MmR
	 nmSCxO1yxOjKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B28D5CD3427
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177846063370.27145.10830457392528167632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86d85225a42cc994cd61bff264a81bc3db0ad44bf14a7e264d21fc32401780f7
Date: Mon, 11 May 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778460633
