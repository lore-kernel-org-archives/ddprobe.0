Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9A12D6E6B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771197894; cv=none; b=Lq5vd+WyeFgb8vbPK5I/dRrw0CNnjtxjmMR1hoN8FzXkpt3c8999yWcVR1M8EuKD1OHDMMNAyFLRIIlEmXUKD4QDkrb2uuoTz6F8Y0ppU0XjLiRfZDdmPp3WHgLUJ80JbJRnc9C8UqYOyXESnbJ/ZqGemswuMOGWkVBV4y4DCOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771197894; c=relaxed/simple;
	bh=MFV4621n4aZUcWBcQNTZ67ggO1iEGDZzgoSE9/quxrE=;
	h=To:Subject:From:Message-Id:Date; b=c5GcMXvSt7WanI5bB0cDgqstQzS+H76aoY+kQjYzLfS4FVgeQ+6U+dNM9+2u9TGrPzj13eUN/LXoeezZExQ3f80yeinA0+klgYGpTacWMJ72l7CiSBRr2u1A8rs1H+8f80aas7a9WKl19iZ9ADKT4jFduhAShbt3wMFbzZTB+6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SI7oHxB+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SI7oHxB+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0FAAC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771197893;
	bh=MFV4621n4aZUcWBcQNTZ67ggO1iEGDZzgoSE9/quxrE=;
	h=To:Subject:From:Date:From;
	b=SI7oHxB+4BdFIcpUYKfwiS0Rgc7d5YD7l/1qfVJ1qsIlPUrk9sS6Ax02j7dxlbEW4
	 W9NWGTRd+7FR7ZQMWV4Vvp9khflP5s6n0Ucq7qxIa+1VxwJ2XqF6/EZ1AQ8kAgvOmb
	 58btkI7xmZUcZriK8pZi2W9ru24GgINNR8R0QZLiFdGVbGkOCMwnby0KuwRBvbhw1i
	 fDNqFCYyaaOU92JxZaU+aFZ+jFh7qJKScvusDzRurUKN4JnXlad7qTAzxx9rJ72b56
	 3iBXB1Ghyy+lGaVBRCslkXnT8RZFieUhyb/kE3cmDfbvI98cuXeyJRvVZ3X4ZkTmVE
	 VECS4jibO4Nqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D35BE63F1C
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177119789360.13147.6856356702269273126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db5a0e25e4217defa14df2743767dc5d39ca14fcb60f49f399353eb0f9acb609
Date: Sun, 15 Feb 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771197893
