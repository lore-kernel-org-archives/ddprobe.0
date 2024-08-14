Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B40E13D510
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723622754; cv=none; b=tfz3vLfnl6sJAQ5SAUucXd/1wpZHGgpuOxxi0O2ElMWze+fstR/Gimonz0qE62KPn4TFKHae4UGjZV8GyYSnIy0xxbfv7PYtA/1nBqofljGHU0ZN5gZ1+NnZWbMItvSp2K19qbcBfyk7vTlgh/xaANQcQD6Hm6DeoC8UNRHLxak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723622754; c=relaxed/simple;
	bh=E+H+gIqRCwOw6BVMZQDS3OC4+bn8gi4FDiBPQ4jvIiQ=;
	h=To:Subject:From:Message-Id:Date; b=i86tr09ZDIBlOPO8JIdtdtxS9InAB2eb4h2+us5UMR6SHfYd3yswSIqkI3+pLW4yi+asPAVpaXWtv/UVhLWlziXgicku4rEVzl1wlv37zvO7jEYny0Gf39aX7ZdFoIVsC7VIutNPcr4p0nPFV3giC6xYSVRGPwq8RP7+WAieR/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rw4EwJbQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rw4EwJbQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4008C4AF0D
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723622753;
	bh=E+H+gIqRCwOw6BVMZQDS3OC4+bn8gi4FDiBPQ4jvIiQ=;
	h=To:Subject:From:Date:From;
	b=Rw4EwJbQwdJzxRAuT6od9Ze8fKMBO0wQX1ZIb5QWZ4U1bBqRC3JSrEsiErBKUFT2F
	 50xNNtDVHcQIUsgb4sBgo6pR6AKjZSrGnRaJXRtI4Ryu48LuDjUZtPeepEkqGN0Zke
	 g0pi/TpVoTfsx8VyZKxStfZ6dKaaXm2YaN+ePupIrkU0nQpKM94cRqWu5CfwPKLail
	 aOuk0sEEDIw5awe0bNZQ2RgNNWScGg2dMqmomP8NgcARcojxg3PVTSmuOsOfXo1w59
	 7EsRt2oKVqV7mrxN5VHEXbLGjlO3A5RxQGpS4wOgQyFJj3pRqTS+1SRkA/Sh1S3R09
	 MXc+NrHPQXi+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9047EC3DA4A
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172362275358.6845.3503627330473846636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1b1a45a5c8c153ca021d9445f72aa85c79dcbf1850b5763fd9b848dac5cef23
Date: Wed, 14 Aug 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723622753
