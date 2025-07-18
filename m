Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB0C2D94AD
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752845394; cv=none; b=ixil43OE6V5kdHsq/iAViV6XeL2a3ZXOexvim6MchVVeG6v1YHr5Aq6MSOK2lcrz/F16gKPYOG6/Fm/IctWYCddbm8crYO/a5UJGHClCsb05gdAMx0Z0QoIidAFxsdw43ED5vCS7W0YhuMMAEl+c2rb9zykTCfB811BEx5OlB7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752845394; c=relaxed/simple;
	bh=h1ezBQdgoQUtQ3Axjtb1m/X10Gq+nZFOFs3h3Y0jwP8=;
	h=To:Subject:From:Message-Id:Date; b=eW+vL69xwVE/jyjxlR+OroveLss33ok96l5xpV5EqXU66ioAZSaxhGp0LTRI79yiacHticc/GB4AtaaXSlBbA4bdCsxiuBmYiTlyfVuLV2vMOvRcKTyTrSkRUTuHJxBcyMUA3GRpFNH7A9KYicjvv4wHyAVVQJP8JFD+K9jwjwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dPj4pju8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dPj4pju8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17D6C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752845393;
	bh=h1ezBQdgoQUtQ3Axjtb1m/X10Gq+nZFOFs3h3Y0jwP8=;
	h=To:Subject:From:Date:From;
	b=dPj4pju87ecv7IjI44DUZhrZoZPjmfKdEVlOih+ozgw3VKQDNMN4nmynqKqgTbe2H
	 ym5N+7jTlHF8UyfGowIDIUSl7z1x/bPPI+d7QcmrRv7i9IOUZ9j6CnOKsi/cAKxutO
	 ny/wfELLTpPrhkgZDVvYKNwHHR3NDG8Go1v9Hz5RLEaW7xVyjjGBjgt0+pmp2yhGoz
	 phOfKfbilZzuPV0enU9OI9MnRIDkbylj5pYCf5chOwHRIGRE15c+OSwkkhMGx+dvaZ
	 STMD6w8PI3wGD6Fbp3ADJl7yma21UB0fSfwzVpgDrI+vWzO3tPkUsRtyr7Xx2LyytZ
	 O/8qyD/o02FOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9162AC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175284539358.15274.9596623611254656123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6b87b4a919179291d8157e13d8a41e88cd622eec97f576174571751a4a2e042
Date: Fri, 18 Jul 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752845393
