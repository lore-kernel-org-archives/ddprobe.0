Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD5C4C6D
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743176394; cv=none; b=YCclRwmc9dcag+7Ekn59OnkryFSYpiAg+zKKuEpNqgs1QelVpznmVYnKWb2ahYlnbtYUax5RvB0lzXLDmrWNafqoj1YFO5kG5LtmKojT7ZNHODz8GfniX50b1yAs/CNI9HDkktvMbM2mer0jV4Dn+5WuHIYVrMVbvqVCrGNulCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743176394; c=relaxed/simple;
	bh=568XQYzLt2LGMQsfG/EwkRsbeo93s+EKqqUUZaEqPbs=;
	h=To:Subject:From:Message-Id:Date; b=jitON3qsNxHCXp/65rJhp/x7cVAWy/w8bqUszMQr6OhcHqZyMPSK8pTr8vTTNS3Ok7iocqiynhNKIR1YbNb1lDMX103RA3UzWcZ3zBuXrNPIJuGyf9UBXQZo7q9vV3o+dox2/JfX6s9z+jT0NJ85fIq/QRWzOfLWYFK4RS3NdXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wu80A2WS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wu80A2WS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6FFCC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743176393;
	bh=568XQYzLt2LGMQsfG/EwkRsbeo93s+EKqqUUZaEqPbs=;
	h=To:Subject:From:Date:From;
	b=Wu80A2WSQrE1HLl7VFr4kF2GaHr4qwj1pdzPlskkSaz+Df7bkDQVnZiPWRIb0MOKp
	 Jwnm7y2YcGiJu2rUnCS/CxkQMBwVWHzPhmOS7GdXlPfrPzqaoTcr2Npg2v1y40dwNR
	 fz7q5zWXTPJtAvgRUXmsOxOdant4u4291rgBf9hDsAU3e7UyAgEOZEu20m3y47nA81
	 Y58hDvFT0J5Ko0+sox3FW104P7nTkDdCOGchgmXZESwScBDgHmuDxuQkzSRtC5jfJA
	 MlP+ppCTZzJipj5FtoR+LPuzIoaV2UvMznWQnYw47GZDu0Su2kVOdSwDmJe5I8r5h7
	 K01W2QBdh0yKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C5C2C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174317639362.4449.1009443864691711854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b601c368067ccbd412c9ad3196a1e020d3147bf37e095e8e68cde7446537b44
Date: Fri, 28 Mar 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743176393
