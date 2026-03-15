Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E0D884039
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773551094; cv=none; b=T0Wfz2pG48/7idkaoEcyax6DKBq3BNzrelMEyr66joxitL8niV89+5zRI4PbrX30FV+pZUuTvgknlok9WK4uNpsqEeMyYCvVHxVxgfobJzFSse5e8cb4YRgAOnsuEdeSTjMP9OvruxC/aFB48teQuYJtv4y0Hdn3XCUJfwNMdew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773551094; c=relaxed/simple;
	bh=aKKElCWDSRDo5eiAv/KKrokrOFeFuy5P1V73k+DLT9c=;
	h=To:Subject:From:Message-Id:Date; b=SE/hBF3oEbxpskiX5wwtlxynty2xvXyhmPRrH/hMTPQOF+GSlXuEJUqHf6qjOfphbakaxedn79CLiAXLKLl+TeoSbXSipUcEISabIIf/YDfsQ0xY5vaMfJS8ySeR9b0V64lTULa6xOudkPLOWPuV0/IU8EtN+Wvn62MmTtYK4/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n1HqWheF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n1HqWheF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6183C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773551093;
	bh=aKKElCWDSRDo5eiAv/KKrokrOFeFuy5P1V73k+DLT9c=;
	h=To:Subject:From:Date:From;
	b=n1HqWheF+3uFT28GgqPdeBp4q5V+Z14uJLn5vgE6G1fauF8kMaF6E9/Few+lKOphn
	 smwaEW62QM6c6nSp8fXLc4xMB2N+McnWbkVBxOlxjrUJJs6pT4z7J/yZuv+oD9bXL9
	 epznPxYupVy68uceBch1Z3hwsoSSfcIXMFO1oCFWZb7tpBPzh9hQYviWTnArjSevpR
	 VXu3mjNS8fOE81gj4q6k2hIMkTCXFBhnc+HsCUQIHaj+HoyMf/wRrdpwCo49GNnQDH
	 Jy2K2nveT1c1selKY6h8FIp4plBl3V1MJ4gmYtvhvOV8quTKBV24MlDnlifp+gMOG6
	 gRn8wXAuFBvTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93881D58B0E
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177355109359.16162.18182315338473002726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9af568e3e5538a85271e9dbad912348144385cc55091c1c1f2612011f673453
Date: Sun, 15 Mar 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773551093
