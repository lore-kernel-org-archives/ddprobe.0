Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 077103126B4
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774487694; cv=none; b=ILiSdXUuCJyDj42XNHW8leB6EVQk42Gpj7pfZtqu5emsQsJ6rObH17Pavhw4/SoQJXaIU1G6cRuTwSSt463t6HFHnhDEVEpGNzDr7NVKePtwwaH87Qo8nPGYqkS7Wids4R/IZrNI72VmdTfwMhjFsFC9WJelhKha5os9T08Ne4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774487694; c=relaxed/simple;
	bh=m2g7rAoVTA2UWo4tSa13e3WLGcvDYF7Xi34MlJZ0cmg=;
	h=To:Subject:From:Message-Id:Date; b=helkyRyk1krmGoO/lshr/AZ/X/38ZjiKM3Qih7hEcvhuL6YpHvZmNW9cG2pebLDoEXSqFF7JooSgzamibUSPksX+Y5aAVPRg2biqhRecFFZvJfTi1od0HJQfkOe9/ov8mkAXjt+havKD47KOLgHaHy5SY8Lvp1Cg82TaEAMjzIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RMeH5YIj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RMeH5YIj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9C2C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774487693;
	bh=m2g7rAoVTA2UWo4tSa13e3WLGcvDYF7Xi34MlJZ0cmg=;
	h=To:Subject:From:Date:From;
	b=RMeH5YIjlFFLZNy6C3xKN5nBasvUg5rxLzn6tjSsP6EIuzKQ+N12O5Vhs8JS8sqI5
	 XKURYbbb30MvhBQlfd/AUpEurG/r/ewL2iETMs4cvmGobrbpA5dYvu5z1Nuuj6X1Lh
	 e+aNbL7kNb16COsq27STpO0RMc50qBoG4b4+NrN8cRfl8kinR3ptK4numHDvxnQ+9d
	 7rc4+Y+O8cN+acLqNbF4AD5hQ5vfpnqhihjLFhZU1QKklgAJ403us6GRpxvMxaBHmB
	 Ymsrh527wxKdtkvTqOOXokwqhSy0dH4IRbM9YvPNdvTtu9DoLPvtkkmO16LK8bYreQ
	 OJnRvDFPDwYQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955E5109E52B
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177448769358.29155.2406041391969675107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc329831e18bab855f0659f74b6b03b50032ab55fbffd68bc35d4a963ffe46ec
Date: Thu, 26 Mar 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774487693
