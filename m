Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEAD1A83F7
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757888994; cv=none; b=AUOugvVqRXFV0xqE2YR3HMGHXb7WlwOYMWj60myYF1ZMZ0NijDwou5UKr3bLkAdrL4A0LZPWvWMvhLrgokyko9BO9nxmj1SPdWEHZ53VELxfELVVwpOyGiP2pIeVII4D6Rj7A+szikB6J80zCZbwJ+o37uCfL4Xy+G47RF/5ZFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757888994; c=relaxed/simple;
	bh=tvJdUdHyzMxV3q+gj6KYGfssJX7TBRDAxx7mA57VtUA=;
	h=To:Subject:From:Message-Id:Date; b=PO2aGWU0ZgJPsj6GpjF9jrS3mvWqUuqoVSsI7aORIUUGag+uaxH/UWfMtuM9/RPULsrwHjoKvhEACaek2VdJJB/GyYFab8g1V3mdlebWAoPDBk8J6BIGXSxlk4rHpQEQEXDt5+57CKyLuLNDpRFs2QgH5YfgWx3vmNqFyRMkd2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmThjz9D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmThjz9D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A090EC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757888993;
	bh=tvJdUdHyzMxV3q+gj6KYGfssJX7TBRDAxx7mA57VtUA=;
	h=To:Subject:From:Date:From;
	b=tmThjz9DPP6OUQrqfK/x7HA0guLNT00wiiu19EoCfVQpHRsh4CsNFlMAMW4ccpC/S
	 pfKxd9OenELvGIxihVSpbAYU+g1Bf7AUOn82EBPkmSC3SVERREeubYytZvEe39vunl
	 Qv8MKxrFVOxucCPWzGptZ6mNczhojs/AzKXTHzrrGtOE4r3DZH0qF4B2VRkdAV8M42
	 ETQxmifphi+uMgYpMr2W0yEXazrAXQHTGyFJyHF9Eks/bc+A/AoHRRYMd6DKBY3mdy
	 l88fAXGOdhAC0f2+iH0c/Z+iqpUUYX1mmDk9AUnaqaXhXXb6EQh5aDARUlY2yDl14Z
	 SAaDZa1l0l/6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED10CA0EE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175788899357.28250.15677581013806460364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 276ad7e37595740542d25b3735183f8532e7bae08b7bd056d97557550c349a7d
Date: Sun, 14 Sep 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757888993
