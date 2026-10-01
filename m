Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6CE3B3891
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790833834; cv=none; b=LmCrlVaa339Gbman/gndF3qdQf7S1YkRBOwewbqlUhR7HW8vzOh66x41DxxcS0qxK4WuDuQZx7nh6yfwrMqFeZOFGAcZFevRHL1t4UM+X3Y8A1kMnijDV0iJ2ZnLv2PzWLSheZC9D9BvpQLg024jB5BgjN1vAaoa4H+JniclQHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790833834; c=relaxed/simple;
	bh=4e0D1SlTjgPdC+7UrwfDsrD/Szki70AeVL9A22P2cKo=;
	h=To:Subject:From:Message-Id:Date; b=snwHHqZVmf+uqOOuaQD2QAO50vuFVKDsPald1VgPYZC4C8m1R2wP62qSSSvHxaZChhzvGLe7E2SUt6qJepW1oJCPMat4NPFLr9hDj7JdNUFfuzOQ5Nu4NWQHKNxFQQFbuF12VZ+rQbRuWjtNdW31c76KXcWSjznLgY9Zp5PjEAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MYzQXGT/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MYzQXGT/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D92F2C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790833833;
	bh=4e0D1SlTjgPdC+7UrwfDsrD/Szki70AeVL9A22P2cKo=;
	h=To:Subject:From:Date:From;
	b=MYzQXGT/OfajHTZ23QSdwi2xPfqrlTpoMkbPCbGPeyzD6xj8thX+MXXE4NrOiwrTp
	 mEaPJ2s0oxv3Q4Qx+hWWFYsPwSrBsHxUu3wCcbLCi6VcjAdQUPduSBNAVwIz/z1tSI
	 +d51p5kjlRNvPWH4xdT2pCRQwc9KhqZ7BhR5m6YU/son7PA9Nba0TNl5G8bTnvccPc
	 YYithbCq/8SEP96kOCwNdiSLr2Zmx1ZQIGTCh7x4jwxHdSKR14OemVM6EEkqUoNIcW
	 xR7C2byMRrI/TueGwjv1ZWVJ1FHBffhIBSJJYRYf1ipHW0i4qqmmOWxKOfRMC5/hB+
	 b7zeoyfcHOduA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B463ACA5FB3
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179083383370.10231.12699316647841545193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70a5a0b5d60dd78d371048f21e9f411a12ccabe079d471fd4aeb23e75772e439
Date: Thu, 01 Oct 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790833833
