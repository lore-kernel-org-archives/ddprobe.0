Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1106F32826A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762879794; cv=none; b=iL0quVGs1s4KD7PTJ5V5lnMR236Rl1s8CxY/oPY7PfMOEUNyWjKiDfr1DzgbZm+HxSc/abkZczN/2b0N1EXJ2bbgIBR6ps3dYvg72hQRgT0R0gTKU7M8zsC1qdUlgGVT/0Hg/OJbCdCS3goMZi60GrukD1zWn7/EITTo5ZgfGHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762879794; c=relaxed/simple;
	bh=+BWMyl9T1o4021WbCOhlUeQBpH1+ppAnN6Sfu/7fbJI=;
	h=To:Subject:From:Message-Id:Date; b=ruXmwj/SilPAgbf+ayiU2Lk0laNrK4FVWDslt1p/nUa5R5owfavyyfMakB1jicn7iUW3VgwYViLnY/3ZHqaBFB1Nh2O9CqaJ1CC6RJJpHCe94H8tgSZE7KBvcEF5U47d3DepPN7B/I3b35TPSH81AfucT8uV0YE9fikpQeyhOr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qj1AfVVu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qj1AfVVu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BBE8C19421
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762879793;
	bh=+BWMyl9T1o4021WbCOhlUeQBpH1+ppAnN6Sfu/7fbJI=;
	h=To:Subject:From:Date:From;
	b=qj1AfVVu/zEsVOcmOgZkVRhfZoWV9BWQtejUOswhd5AK6/s7ZH/rMeC0B5awHvmZ+
	 fJaIvHqHJpF3/BOoqpm2iJMR5PNT6laUmlV3DtnqgKLJ3j8y46ZvgTtx+y2s+G0wkt
	 +Qx1ibx4BJhcKrA6mSQV9fc23ri8a8i6W3Vqm9c6ODNt2W8wAGTQqN1LATCrrmLZBD
	 n2LkPiesOe3LZBXqw+x0Z0Tx2esrbw63ctbmGkPn3W+eD0X72wQOo7h//aAoz2lGsS
	 Gu6zKLNdBy8NKXD4yoHvwouhl/V4Hq7yFWPVeAad8xUIshtMhXOFJW3C8tDzd/BDxK
	 owMXyGQ8FcZpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFEECCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176287979358.29072.4607794498447195032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c529547c44f8228d47ba083a0bda92460f35bbdb59443f86a37eef5cef90d485
Date: Tue, 11 Nov 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762879793
