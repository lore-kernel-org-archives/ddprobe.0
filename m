Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FE7B5F48D
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707602897; cv=none; b=XGI3O1cxSZkApB499bjO1zMMPdiIAC4sk/xK0Djmt0Y+4Tk63TAfQDyJDfSIL4jS0x4RU4No/MQEoOStf8cj7Frv3clzF1N2UpPSlEIyGP5CEmhcfmNrdfsmrboKpQMPz7WPA0sjtedBrqKgihymePGZuDQaFMQBfvKrsJKUX5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707602897; c=relaxed/simple;
	bh=Kn6xTjYYYAikwwXl/Esx7Upgz9pknSp5wUQHCUiXRL0=;
	h=To:Subject:From:Message-Id:Date; b=mHv0S2ITxzmRfsjAbJm50CsuPvZi/6sF1TjIH6tUEMtdFp2vX2iiQcbTIy/zfwU1HEUdog7/H3P2Cb+lGtJcaDoX/OA1LnamZGbQSXuwxsxxUhBETngp9e6HLouBqzzGPruo9CBH8nWnAD/iXo2FjkDEqyE5GdEdgVGC98Ahax8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PrtNPnX4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PrtNPnX4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E98EC433C7
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707602896;
	bh=Kn6xTjYYYAikwwXl/Esx7Upgz9pknSp5wUQHCUiXRL0=;
	h=To:Subject:From:Date:From;
	b=PrtNPnX4H7EvnbsQD86vah8XMqlbBZR8OfuJSUgAF80rxzOvf+Do4R0t0L3ah9DsX
	 90CJ9pOY4QKvKGYrGtTrZP4B+nRifNT1LB+GnIUV/TSKOLhlYTN3ZazFhYL4ijoS4C
	 cvhLHQs+JL5uZrAy/RT0ND6fh/HZy7eLOO0U+mte+lE5L2hmU3Sqdffa09RBdLveVe
	 3PE0+q+eDQcmK64BYxBnMmFh7rlHNaQQ0IYQNkgMjj+BWck1vv7RVpVLrowqJE9w9z
	 E6xdQDERLg4JJqacZiBYD20jZ0EDKZObMS5rbjjij1z7omW+RtGZ03mvlLGUtg3w33
	 gzlGK63es6Nrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 615B1C48260
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170760289637.14711.17499427883109563754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83d496c42c9fa98ceec3d7ce33e81950649d3ebacc427a8af69d6b3695823768
Date: Sat, 10 Feb 2024 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707602896
