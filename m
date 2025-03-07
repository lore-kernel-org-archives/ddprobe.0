Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D024217718
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 16:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741366734; cv=none; b=uwRUM1QsCEJfiSfWopERy8vmc292XyrzFbZUrPC/1FOYO51ZK4WKfcvC46JrjfDNVp0HosLTFHM4b6bX0X1Kh0dMeai7NDNoeTVDgBiAeZcNvKHepYhcIMc4zZ0zEWB14J5//jLmMzfWDeqZjSvxchzHT2AOb0kqc1vV7hs6lIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741366734; c=relaxed/simple;
	bh=ybUVadSRsbeZ8BYhGa7tyXNNPHzsq+UTV8AIMFTGRpw=;
	h=To:Subject:From:Message-Id:Date; b=mqquMskXXHo8xXfodA6N6xyqMVbOqrOHWcTezWG6WMoc687O+2RMBbAMIx6KdYR1eZFa9j630PfVehwi6mrKsRh99vB7vRBz+P84HyVP7yMV00ESqntYPK9HT0qTzd8K0mgbTA+B0S8uIx6LImXp0k8ttz4t1GHq5HX4QidifH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NMRzSAL6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NMRzSAL6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8970C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 16:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741366733;
	bh=ybUVadSRsbeZ8BYhGa7tyXNNPHzsq+UTV8AIMFTGRpw=;
	h=To:Subject:From:Date:From;
	b=NMRzSAL6NK4DEQmqr4DrtVMTshYAbs66WHainAo3ueXgb7r0W0UzlMW9Ox6ChbuIW
	 flTpERG8iqFC6nYV52GeIPXp1rtqLmz1CDy8av51x0W6eC5omVVBtWH+AgSscAnyao
	 au2u30cUpQu+feP3OwqQaOz5oVulXnY52QjkV06yJS8aVrfVGVs2d6Jo9HopH88Zkt
	 ReKurcr3+bWEY2Pl4eoaCgck68wQfdAKxAs7L/nJrI+LygWIHvxi34pGKPvoJ9M80l
	 QoO1UYjdRicHDe9jtWMNYgz7QUwhY/YKyTmdokA5+5TPH55BFxWL3C2h9SpnPf8N6H
	 WX60S+hK57hoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D1BC19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 16:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174136673361.29257.13351131374498288518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e75de0a6ab9b35bfb1c0c71ba47a95d4083207585817f2660d095b308d96b33c
Date: Fri, 07 Mar 2025 16:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741366733
