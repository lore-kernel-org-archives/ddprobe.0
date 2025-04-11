Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E65F1DE2DB
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744389594; cv=none; b=V+eAxO45H5OTsLW7oz2sLhpnhk7EeAOlgaBE2TDI1fp717QgW2vE4+frdPsjKguewoI8QZEHbop75Kv8qlo+ugt9m/yPLKBYLWI9ghSGLLAqQI8T+zh+D09IK/O7Pqv6nYicCVypMesI7uQWrk6qxCvmzJsKswrCDJromgKghrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744389594; c=relaxed/simple;
	bh=izBqAweqe6bMJ0cwyNX8DvHRiNxbxFK/dMkX8ne77EY=;
	h=To:Subject:From:Message-Id:Date; b=oxvQ2yfUqVM5+S8Haa3DWqApqNZMqDD189wcPWaPPjnZb0X0nsSEqqV6MA1OBRxo36MvwgaVmDEbwAHnw0mOIWVuCNeyEYJ8DlgLzTBD9YXHSmhNG5FgR5Y9cpUffxEIXCl83vnjjppgLY0z9RSfWJBu+uqkmI972RVAkY/66Pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4o4X8uL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4o4X8uL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE60AC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744389593;
	bh=izBqAweqe6bMJ0cwyNX8DvHRiNxbxFK/dMkX8ne77EY=;
	h=To:Subject:From:Date:From;
	b=d4o4X8uLKKqYNrAItUj3tiaSadyEK7o3byFWkgnTEm8XqjYGN3MXVhlwqcx+CyKsZ
	 Q4DHg4J5xfANO5PB+nI4sEhCs8x2DqJ6dsZdfeWGZv4hkElqJB55P6wc7F6kdapGeC
	 halOk3YczqGt3ZYcDXlBZUd+u+DiWMmnsYm36/CmZ8TtHrSUx90SuU51w+2rdl6SAX
	 iaN8F8s7y0Hb00KiroNGJjp599Y4lMO8HxY/hNzdUVqB5P51hN9NvSVeelD8BHLJtm
	 QogORiKhw5p8JFAVTBArOnOpSK+83vcRHKVG1xtvwm4rGlDu2Nqihsp/xGpvbNdBB7
	 cHnC3zlIs2GxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACB4C36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174438959362.19982.1566588527709067982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a8c04580d0c380e68a654cd108ba4df1b84e7e0e8414f719c9ba03fa4a1ea60
Date: Fri, 11 Apr 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744389593
