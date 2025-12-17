Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 084E330F546
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766011434; cv=none; b=NagG+VJRklCmiiMUTNgHuO9+cy5zv6149UkkVWWLitU3njmSaXqqhYey3VbJFvyPRpyCb7FWHGePVeQfNpddFuu2rHKHQjPbUm1mcgquDtNQD5Vg9JDfBw2VTLDM8asDJzDdCHV2mg1cz62nJqAapjaM41Txqp5q11tK/qpr4E8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766011434; c=relaxed/simple;
	bh=SddeYrUvDpJs57AFHVbGNolbQ2fCL5xSLoRmnfVmcPQ=;
	h=To:Subject:From:Message-Id:Date; b=CcF0rUlSgdBju93pvI7IsmXGVRubx8O6l8HwexBSbmICFHEjhdg8kBGlHaIATl2Jiqy2ytfoARrHawqI4/n8VULgo2npaNHmMoYsnzAgHSMornKk3R5+rq9FrVZjvUVDpVLPvCNZ6sIMjI2K9swHsgnertUL6WMesZvGompqlXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hxd0rm7H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hxd0rm7H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0400C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766011433;
	bh=SddeYrUvDpJs57AFHVbGNolbQ2fCL5xSLoRmnfVmcPQ=;
	h=To:Subject:From:Date:From;
	b=hxd0rm7Hku+bi9UbYQB0+RuUk6GZ6TXljpmKTl9z/F14/s/ag86w8UNL8qFMMqCyx
	 HYz7fqxRqVYNszPPWp8iRrsojmLt/CGi2ugM2J0DJLyHoKVP69JHP27Y9QbeUCXBGZ
	 D0ntL9wT+MPmbt3yIXjH12B6caQmMQcfvkV0IBUT45bBi5HWvpKEt0nFWO96EVF7i5
	 Df7xn4L6h5pas9mloMCbZGlHfL6dxTUtxSH+++JZYS+uFQ8O4mCMgbzvJN6V5iJUgo
	 PRz5PANvGCbT/i7lh0+txbQKDaaMH9d3Ov8UBnF7Bv23G4PQm0+cg7nFz/j3qQeqbx
	 yOoBXGdBv+lbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91434D65C63
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176601143358.23494.14256280142522931206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a192dfd34c89a082b68d6a08351d5188c983c5a4f7912d1cb8b36d49e0f86b0
Date: Wed, 17 Dec 2025 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766011433
