Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 046E7371CEC
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774945494; cv=none; b=DuE+r91yeyjllgg6ZXlrhMpIkLLM8CQG6w9c9ut1/vGhQiULn1rDvh1Kcz7A9+CsRDEbtveIndQk1+9r3agW45CyJoRiAIOSRouNHnGNkN/P65J/J36u4TGwjsE1jLxeB3MIpVa85m3Imi3Gga2YXuzKkelHGobzcSQnCG2AQeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774945494; c=relaxed/simple;
	bh=Zp/oKr2+88XHT72v28F0gzFFWoBMXf+3QOVeFSkLKTU=;
	h=To:Subject:From:Message-Id:Date; b=IYC8mx+slevnEvrgy9/Q9aohc8EAw2WjMUZWnCuhq+xrCaNBVcFh4TD6QoMEDzvd7iEcjJic38fbKlRt/F+d46qBJoFn+SDWF7wJ94w6mjUOQunxRj9I3fiOYvbcP6is/xhQRLUE7k180RF9XNSDc0u7qr56Obono6wARQ4OmZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ATCwV6O0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ATCwV6O0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23C5C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774945493;
	bh=Zp/oKr2+88XHT72v28F0gzFFWoBMXf+3QOVeFSkLKTU=;
	h=To:Subject:From:Date:From;
	b=ATCwV6O0OVk9fp6Bbj3FauzGtF5NcHWHMS2qSZOGeYuu61M9RKpjca3CNZBlxZVtt
	 7UiQLAKH7ENBiGWvlvaYrIQQOd8Ogkc5brmsmcoV5esY/lqv2ITrPwoxrIMoSx1Cm3
	 ugAxE0sQW/EpKDjhSBPw5IbI3msBXrgMIxL8ayUSCRk3xEGzvj1lUjqRt9rCJ06wRX
	 0sCCo6v+jFRu5xwodg1GymJtM1ZGFG3EV2eY/T6+MrOPhMCQ375x79IWBsFsPdJ4G7
	 69+EII5NZHD0XhnrowOrt8bZn9+ZAtxQHNky21NpGD0M/ZyO/bnWPBjSdyCJuk3HvO
	 Ful1Yc/rc9cjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902F9FF60E7
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177494549358.6632.5303383811445648814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a980635d543546da0705e0549e4e874cf618bc7d59ea9b4199edf7e3e4d29cbb
Date: Tue, 31 Mar 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774945493
