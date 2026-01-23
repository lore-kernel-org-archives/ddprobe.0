Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB911B808
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769169834; cv=none; b=Ire36eCqPWvZqXUO3KfPKUXAp+5x/7wluSVKvxg6auXU0P/1M5sPV2cGPlVKXYRkYQBWYXlc+pa8+dxlbDZ43PQOOJZbXWW3ztvxX48O/J+46RUmwp3QqOlWFEpouOj+2EIwPzNeL/dILVT3+Li198qGsmDWJRlyGXddYjR6fgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769169834; c=relaxed/simple;
	bh=DWj7oA/dzxR5m5TWPU6Ikr5vezAqryd90B3266pEwKQ=;
	h=To:Subject:From:Message-Id:Date; b=cEtr4HZiElZGttJrA1gFyNKREvtjRcN3GsGRMeEG5ljJwDeRSwk6goK8N5s3SZgGhdJa8+JL/FzZWKV5m7p/HS7gGVGMPl+rXkyGvyr6n6vuhJXYkfecyAncDvjENmylalS3OflyGFk4bj1eIBJNvxQJNzTwk6g6hRDlHigHduY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FVzx/cr4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FVzx/cr4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7475C19421
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769169833;
	bh=DWj7oA/dzxR5m5TWPU6Ikr5vezAqryd90B3266pEwKQ=;
	h=To:Subject:From:Date:From;
	b=FVzx/cr4147oFNbDbkrJvzKmS24n4XaBhgvgY/dtL0CBBb8faWGe/+J6t1m8X5ryB
	 5skC2LF54XYb+H3hkv9vErKm46O+uOtJHIvudCUM0rojgNEif/YR034oYkC70iO449
	 JhZOvn9b0rIxCHCkBY506HlZRNRBwrh7bltym+1BbAO4r7KeMu5bxKKnQVx820ct5a
	 qmI9NjK55YPXNiARGnC5ZkbnzxUtNGYJXpoyx09Vaa4+PxqsKcEKe4UuO9EyRGRg71
	 WrgZjWFvxp2Ua+1dt8s1uLZXfcldo2kuSUPxRHspnWYinClJ1tgImoRLgxVJkaAGOa
	 FeUdPNIF97+sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F56D72379
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176916983359.23006.10816950395507328301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 150a167bb7ce20058705285850ca73f1aefc0d4c874f20373bb38d7e5212cd3f
Date: Fri, 23 Jan 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769169833
