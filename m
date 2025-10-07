Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FB2146585
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759843794; cv=none; b=g/+7fcFmkguNAc4Lwhn1LWaV2dMuxXFUW7pQocAzviWieSXWChbCZ8mNWPFYT2AOciK6xcJlqMRrTIgNTw7nP8vs8XDxJSRIVQ+65dDBPODoDu0TXNLDxcn7fNrjetbd7xaicY8T/WPmifvMzC6alDb6plUsXgDQD4c08XIctGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759843794; c=relaxed/simple;
	bh=vNYTwSEGqWjJacaSFl2s5RvPSFx30BfO1hm3Zt76aK4=;
	h=To:Subject:From:Message-Id:Date; b=R7xKrmZT7VETCwzKwfQ5R2NMUelV5hne/G3NDSXefYlU5Kt97zz7wLevoS3MFKV6wKnGXztQnOGkUTdjNYu/any/RKBTWRxkeq6oPd1OeDV898TVitxm9dKFsyO0mJOk50oi19eyKHPyEybDbq3Lz2nXfVIBc+sLISLCbO8bBH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AnNnGPGt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AnNnGPGt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F7BC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759843793;
	bh=vNYTwSEGqWjJacaSFl2s5RvPSFx30BfO1hm3Zt76aK4=;
	h=To:Subject:From:Date:From;
	b=AnNnGPGtfS7Bp8X+jLtLmrPHNO7YP/7Zgs5wpyslbQk4tGXfg0355BxvbkZ/HHhbF
	 FtqbvnZe34jPAqDNF0D3YEhZEz4gluvK5F4sJqnpddynFm1YQK7O9JSKsXYTcn6gXJ
	 gPp9EujBrURXX7ZlSE+9jWYQmINatNuEOSnznioJpSm5OCBBChkHy1ElnUBeA7C4s+
	 EdcFelR3Dt5iKqo+ivR+tls5EBAnAcfMBZPOKgSug7vfr3t58aqDlnK/mqjcrjXco1
	 JL9OUDcMXkmWji7hZMQALQQr/kkKfWrGO1tzo8mRzSvsEEwNptlW7a3Bs48YWL1MXS
	 fJRETcrN6L/8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925F6CCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175984379357.3905.4422223184583798194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13edfd6c2f724eadee72b4618ee783a9d34252b1f28d63a15e5bfe8d69fa84ec
Date: Tue, 07 Oct 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759843793
