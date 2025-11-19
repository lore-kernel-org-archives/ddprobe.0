Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610791DDA18
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 04:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763525514; cv=none; b=FCq1uZ9Ti30MRFIDgWEiRK2XP7jJrDcGOjRtLm0+GMxYOXb45Be2ZcqEv5M0N+47JwX/6WcNYlH2XMJ9eACkboHM/AOXOk0Hm+VfMnWEIsNdnI9BGwLaPy+ltaQ8TDKGWAlbSpOyqOScxuvMCF4jaVlZvQarDiHpuFav1I1ImSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763525514; c=relaxed/simple;
	bh=kYA3j6zofXxbwcFbH7WlaUxnddV/c16BNRROH8NYbvk=;
	h=To:Subject:From:Message-Id:Date; b=YEK0u4bJWH1dClJCQyjwUqVeBfQ4N2oMETEBfK/TYGC3ISoNIRR4b7jRVE8SpfGjdH1hwbO4mSnZW1jFKGOgasBN9rXF61xD7He48sU0msH0THFvcocWPf/gXSPccB0CGm9v6Ej7G/EbMvi6dVavGBuCnw1d/fX8Mj9DhvS0/Yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hzfPok/B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hzfPok/B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBB4CC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 04:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763525513;
	bh=kYA3j6zofXxbwcFbH7WlaUxnddV/c16BNRROH8NYbvk=;
	h=To:Subject:From:Date:From;
	b=hzfPok/BxMVKT2cBv02iKu6Cd1zZXGv3Q9gnukgUZ78E8+GkjayCcFNxGy3K8IvU0
	 4vbIcoJ7SKL7HJ9WEzI8JRvfjVu48NEPUk2Aol8WMKwjnMo5VCN6MP5YfZLW59KK8C
	 EOuoUNfgFeKIcIoQu4JvzXxlriwcJ0UnEIU/16Gf6pih6DtDm9Bq9e5ts6QhPgeFIg
	 hDma8sB4qoHZWO1HjNhVmvkiCuB600fit/Ky9vhRCHpTfQT6RiY/62kwpklNWLNETU
	 6dtjGeX73tIfPI5Q6me3llSB1w+flRTdiprAVVT++VtFZuCp5V1jgjJ9hyz/kqBSBu
	 wpaanbyRn4jhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A2DCF2573
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 04:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176352551358.26712.433626788117540811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b2597552fbb05fec790257fcf6f6a38d96af120f1fa40dc5e08163c7608e131
Date: Wed, 19 Nov 2025 04:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763525513
