Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6522328CF5F
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 03:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781751994; cv=none; b=LIMYB3WjI0hSVHe+AxeQZhLylWm13BN0B2bQh1Lzoi1pjonel2GCQg52NAiKPETEXC7dyCCJ2C0RW/MsPPhQ45/Vy9P8RK91/G5V/b37NgLoVCoKwxnKTUAAC8TE0Qp8AKgV17tGo/LbVINIr7RGNVlthLrSBKkH/IlzFd6AkvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781751994; c=relaxed/simple;
	bh=uwexy+MDHXpXp3/AcX1urklCKKDwY34B1QJjb1eBL+s=;
	h=To:Subject:From:Message-Id:Date; b=gzyiybFE0K72ZM3gcTMpqjYz26Dy1GhOmYjA6O+cfv2OE6IKDaFl8Fq544Iq2k76gBzLvSxGdBLHIUmg0Y5j+QXQJSHcdv3ReJUgcUOndtaZNo76EwD2IJ/Aqkroz8C3TEzafVxBiURKMq/j+A624MXjbl8q5auy3gQht9BIyNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lySQmaur; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lySQmaur"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 17CBFC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 03:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781751994;
	bh=uwexy+MDHXpXp3/AcX1urklCKKDwY34B1QJjb1eBL+s=;
	h=To:Subject:From:Date:From;
	b=lySQmaurlgxdTdGS1F/xKAoAvZKxFthf5YUyfRJlsX1e2tQ/7zXm2VkcVTjALwcIh
	 gaNTNFbs285MCh414/2cm7mKZPhw0vMjH25qbaU28jDbiNE0kAS+6LTmHiw0T37Ho6
	 A7OXyfWFnJFexhemntCGkQkfuZDrLtwnzGHvf9h6eDtkUlx+JSSJrM0RUqgiBiGWpy
	 33FoMoH8BGNN7/GymEtDOIAlWlf6ZdPFiS+suRAGES3WE9X1jVcOkXIwRFZlfhXAVY
	 QoQNtJLNvt+LepYF9JQpHNR0WiljPEGwYjW6YkMRGhAj4A0jblR1Ncrr6TbdChUtYW
	 M+HFTONd3X7XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D82FFCD98E4
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 03:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178175199378.31466.16590903734073689302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3a04e8c2c98444a6d5fae02ffe517195aee231eaacfa7cf89a7e37ef052b234
Date: Thu, 18 Jun 2026 03:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781751993
