Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D938DDA7
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709659097; cv=none; b=NMcK548wvNe3fqe+hkF5J4QLQocGONmV947JHAcMSZHauQMvJmfTNFVfosUzvrHRfL9Ut8nGHoXJcrBlGDfP1zPCbCQrHgTKocs5J6ftjrR2rVLqDdiWtYxT1YTv8CDPIhMVmshQ1jyARSYbLLy4Mp0/R/6OcWedAIi6qwAGpj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709659097; c=relaxed/simple;
	bh=ym7zJVwkZVdToUSyLFqpmNBXq7VIf54ZskCfmgnqBZc=;
	h=To:Subject:From:Message-Id:Date; b=pnFF9xz3slNrJ8aHpZNEwMvGB5QZwXi/Fc0N0BMi2TzYLy55AKYEC4jg+5yI5BUaUiNPVVGynTbJArBESyaIjfLouFz+b2IWyRXQLdvJrFybiFaKzmqncYGfMqMENLMGD3R0D20CNe0MJLnpa942exvxEFwDd4+Uzh7srXXQ7mU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hkQ57X2T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hkQ57X2T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8157EC433C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709659096;
	bh=ym7zJVwkZVdToUSyLFqpmNBXq7VIf54ZskCfmgnqBZc=;
	h=To:Subject:From:Date:From;
	b=hkQ57X2TBxO7ff2PqRqyl77lygXA5srpJzeBmkBMgCzb+Ymzup0Ge/8qa3eDQxIgr
	 0C5az58w2074TCKvsNV7r1T/C4MgcEMsbQUjaQOqo5nZ5ugBKlc4kpjLJ+ioo5+SXZ
	 Zu6qm8w5zxMA1ZxvcEYCnGmGJJUdq5cePn6xt1dr8hIJLezx9zXhQj2Azm73zfGKm7
	 3/r1/pXIm/y10qEomjtRRhcHYG/sq2Tub0zVvVGxaJncXcUyjYPodHvOLaPBG5qGze
	 rtC/+cGNZ1J5PuXUofwqFLee6hlRy63Kwpx+9aOpJ6O4JU12SMI//7UUpS9mbGbudP
	 Es47YYGhZZKrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6510AC54798
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170965909640.11856.14499154630346552609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 398125d0563435e70a6568023d1be3363782890f64523e9fe46dc02e4cbdebf2
Date: Tue, 05 Mar 2024 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709659096
