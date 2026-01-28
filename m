Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FBD11A3029
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769571834; cv=none; b=IiEDUshMJ4whcMzD0QKnUz8m08f1KsmG3G3PllvvsB/cjBGVsuBD8CS/JfleB2qTgHDdqixskCGyeLF47vE7ElHkRSox/Nf3UFOrhKuXEq1w4oTj0ymwrwv+mLlj9rIMsNbcF1JPuVR2+worGeFHs4cvrPPwbtNra5qKKbQUPoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769571834; c=relaxed/simple;
	bh=uuP5WCgSMiGSFKL9+sxCJ1DZOtlLzfs61geJ+hjBzPM=;
	h=To:Subject:From:Message-Id:Date; b=NmPWVlyA21YurXs8CfF0iTBClLCu60CPzwM6VnXHVE+RK1h3LPiMESYtelL3IbgezvJA71JGqSBE+OAVMUx3Nwi7egCbUlPNz2HtfpObtBh5a5KT5wFlWhlwo86+QeTDyGJI49ydclszAPQnx9yBVTXexrdNsPtHotIryXtsXEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O9K6yBZK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O9K6yBZK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1BC0C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769571833;
	bh=uuP5WCgSMiGSFKL9+sxCJ1DZOtlLzfs61geJ+hjBzPM=;
	h=To:Subject:From:Date:From;
	b=O9K6yBZKZnr/KDZSWvG6esMhxttuiV0JSKiEABsKwpDUn8DCZQyeUst4rI+Ad1oC6
	 yZcHrVpEvCe0JD9OSBWkFAJ1G3nqH09twdnAEUUvSQa1VGcK0vvrsnluAMCve0VMe2
	 Mh4dCCqYnkqdvQ40SBOSkdX1z4/r2gUc+RirVcVHL7aVEqJk3jVgRpZGlu3se7o2FU
	 swyjiLKtiFv5LsomG9z2dMAGCo0zhxoIgeC52sFN7PAC9nx/1+/M58CuvLPKLztrza
	 emHi4ALGim1wBv50cbyK+5KxrnsowcZzKIkAbMR0Kuu08wcshe8CiB+pjLeuDBJ6RF
	 LshP4SZMosQJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF5DD35669
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176957183367.23125.484665262943787708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fe4c4abc32e48d487a5630798d22c9613c046b59ded778e512c028a4d5669ff
Date: Wed, 28 Jan 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769571833
