Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AFC81ADFFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758720595; cv=none; b=n/NEiig8jjZqGcszGyZv0Y6GAQn+YLXmHlrmmqWdIJVPycoTfaMhURoAyTrsTg7vsvB3jp4CGIYt6Y3x4II0L4vG1x9A8/FWz92iC0WWK9JC31vhDHuVfz44zxFmWQgpZ2sgwEulQNt+D3MEd0Hg9ef6ilVmWSjaikWutWz8Vbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758720595; c=relaxed/simple;
	bh=R9hk9lSCGSFdYxvasAdM3eWBcnRrbX7D4nMZccOvkKw=;
	h=To:Subject:From:Message-Id:Date; b=tO8V2L5+MZ9vpSIp4pChVTZkcBkJYggkUEexWRZ5/x0RuF04ZHlTq6Jp+3F4oC+hEZG4eq/pVgGdUxJixGnVcdyQwPY1A1s0DEaTVYjEMgnyKr4WiyezfKU1yWtPQxAtxu332z0xrjSik+SLMyfvnJjVF8jKxVS0Z0e46ExRPn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UjpICthO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UjpICthO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AE2C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758720593;
	bh=R9hk9lSCGSFdYxvasAdM3eWBcnRrbX7D4nMZccOvkKw=;
	h=To:Subject:From:Date:From;
	b=UjpICthOk1AWwZ6Sx1i/we7S8yhZpd2GWbt0N/u4bWNJJzR09OBr+Ue+CnsDJHx8J
	 31lqi0L6ktv0WUIGDAgTnNvJLnrpE6zcBqXoWI3GG/vpcMgH6DLblJ1B7cvPtt6wkU
	 Mn70nEuGQ/NEaGehLJxXOaEvPPhRmqYS/AcQ7EVOuyHHxdmib43vmdnm/1Kpnc6Xq2
	 vjdWRP4hds/kzgKOLMkvYK1qDNl3wc0eCR/wgXdFNhDpuCJDrPA6ixuQ0e33otmtsq
	 2gL8loyj5t9K4gzzstQ+W9lDRZPNo3AcwWeNW51mvU8ZfvBgT+gDRnrKpDBxC+N3ZT
	 8oCbWE2pcaDOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952B8CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175872059360.15213.11648567414128627152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd611da485625b22e9e3dedf06520096122c0b3a5e53acc18684545509f5185f
Date: Wed, 24 Sep 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758720593
