Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F42945A296
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784824234; cv=none; b=E1fT4K6PNHSTT5g0MpTeeh3jQz5Dk14w6Id0FoKCIY19TEthXANef5Dn3AgIN9G6G/dJmKVJFYXo5l9EO8N1Q5XU+A+q5obEGBnO+4DoTBqHI6JHUKbYGuhanBBntqOKss74gEWcoQgU4jM1VyxHcPBUrNvK7atFDl/zH+CSgI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784824234; c=relaxed/simple;
	bh=VLXu6De9QZy/b7uVIn+8CydtANmKF7btNPvoYmLCXfk=;
	h=To:Subject:From:Message-Id:Date; b=k0no9BDGkonQsNI2YvCg6hl5QHJqbhw8oL3B3YJV16qm2YSWnXUkAxvxyTHoSDFL4/+w376W08HrKeuVxwkyNvrZxHuPDWYXyyvVc1ilDNis4xnVqrRLSGjhFMeUvwcogtXjEryIfmT6uYHTlqQhW/6dIi8hUtuxBPS3FMAe6i0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DB7Ou7bi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DB7Ou7bi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE850C2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784824233;
	bh=VLXu6De9QZy/b7uVIn+8CydtANmKF7btNPvoYmLCXfk=;
	h=To:Subject:From:Date:From;
	b=DB7Ou7bimOOlX4qVdEZvSkz3ViSfOjJz9G0+T6fgb94owhkFASHMGtfNwHLPb5Cad
	 b9kLa38j2A8vxZyS585j+nDPmnupHp3Eu+30biMX54i6oo/k+RZysZlujDO2Dlvn9z
	 OWY0G1fy1hGbQ1VcAFnkuMGM9DH3hr4tle+cMBrhSYyhEijejU5YWsgGW85I+2O29r
	 U70mmd9ZgvpkbShVPSYrTAXrA06KnZBdqCRvWkqiXOy8poideWgNMoKoGcnrx8Yao/
	 tiwAyqnbJwcGS2ykVmeFp1nkU+wg9mBYUWRz9kwguKaZ0IoDXcAooUWmVTOxfe/Oma
	 dbsI5pguyl4jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB569C531F7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178482423369.5537.2006292439669491264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aa72636c30fb86cde2422f8747e923f1d4d7c43a2509d94b20e3bf28e84be0c
Date: Thu, 23 Jul 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784824233
