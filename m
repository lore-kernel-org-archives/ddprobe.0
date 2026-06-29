Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4612F3644C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 11:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782732514; cv=none; b=TjcOEON3lAx2jCJri/uelR59avxJHjfhGfnCenKc30+xPF0ZlJmae21DhtBZXbdqtOLmBZ2tubIloNQlUFsZ87UPK1rjjoWpXQvyrZn4mQBMPB8P1e3UWZ7O5sHcrU4XJmqQy3oweVX4d/+ysBsyx3s0LmQFOUi1kebKXu4WLzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782732514; c=relaxed/simple;
	bh=Tgy9xrPb71H5agbF3VnRmKt3F7fLongZhc7mOA/qTEE=;
	h=To:Subject:From:Message-Id:Date; b=E/GQxpmDG7424+gAzYYE2rCk3msqu7xoV/nqbLrmcwotOcoLJE8CJNhgS+YGddZT1tNa6ruxsZ5MftURg5oYXXRgVEwuXMS0zOw4+jyq4DnABuGGxJnD+KmzwudZVT+wDiw4l6uY6eoTY+AH/Tbe0LD6jjSW7aqw6aIyBeYzmU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MHNrYpuo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MHNrYpuo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD1DC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 11:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782732513;
	bh=Tgy9xrPb71H5agbF3VnRmKt3F7fLongZhc7mOA/qTEE=;
	h=To:Subject:From:Date:From;
	b=MHNrYpuoijiGuf58rI+LNTnxYD1qN118+2DGHpc/qszZj9k/yyYWFgqOAPyuLe3o5
	 oSbdF9N5bWhG4QWc+jyGnUb5rPid6vFSFf9hwPjTqQ36MvfP2wiGN8+grmwUz3KNrU
	 KeH+t1OWWEbMv/S7O955P6mkuRLRa5znQbfzUNttKPUpZdXWp5g9IQdUf2YRAszacr
	 FUjV3cyxH5yXv7c3sDXamkT+D1V9mWmc4NiufdNS8sS5AQGuO3dlpzCmp2I7X7KXje
	 dhQgh1k0/sU7ifvxVCxHUipJnO3YXSCdFYIoVY0IxL2FVDBY99D5wKEqH7P/lM5RVg
	 7ZkJOsOxqONQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B77E7C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 11:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178273251371.32307.17102898503314761479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5393444ae51297d9330295e2e567cb5db2c6e478a2d2991afcdde0e8f5ffc976
Date: Mon, 29 Jun 2026 11:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782732513
