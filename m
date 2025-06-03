Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B27B223DEF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748983794; cv=none; b=aCRrfwHiEYE9nlIRTP5H7Ivjii/f8I0CRSCsJwbII5/aiu4Atqnz5UIOf2ZF4+ZLCXvbkXQmGgrRcnzE0CMEeuVw6zXfXrwkaVWoKx9QkYIgJKQg98gpgqaxvc6JP52rtvRuP8qXW4oBjOSJRfTlG05VR9rfn0zWkkdEgVY5ONk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748983794; c=relaxed/simple;
	bh=w3xIA2mbSZ4lOUZtDsq7T+NYvEY+HyuPsgj4KVt5yO0=;
	h=To:Subject:From:Message-Id:Date; b=SDgJobzwP9s9yJWVgqvxe4dTqLwSwxRBuC5DDcTct7eFhp3yBvIf7T4n8kaKDzHOJ5GS9N/c238vxKVQXLoEpRr8KjrUfNlAFY5NS7eQm86allj+VBhz5we01PsN2FXxMNfm9HnSsEAOxhPrWbIMX7Sy5tT8qFH40H4C2BHqth4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=itBH8UPX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="itBH8UPX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EFEC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748983793;
	bh=w3xIA2mbSZ4lOUZtDsq7T+NYvEY+HyuPsgj4KVt5yO0=;
	h=To:Subject:From:Date:From;
	b=itBH8UPXCKIv8LOx5xY06Eup7CznDHhVqckOGrWERDUHXB3kTmiVvZONs8MhcbFkD
	 7wNNeq0NagmgA8/bpD46OkSqzFN11zgwj8rX/r/w+z6Ohm8Smh5HVI/2kRsAdaNCl2
	 i1c46YSdiHYCAck6dy2ALZxvAL4Q6Fy7oJbjB1mkZnxPXlCpE+PiZyuplsMVbfK3Ed
	 MKRZ5SfJHwlP3YXnehHvgm+ezHA4aoMpht7+T8SjyRAupUvBBaUmEGrul41DnDl91K
	 uEzuM1yADpT98mOZq+7ozXo/os9fi+/WuZ+a7Q/zzTMqd2bHVYEKMWoXNn2+w6TkAr
	 6yROWkOzMGxKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBD7C5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174898379357.17932.10134223502359241787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0294b85deaa24f2b1e92e3461ba8699111e0d191f0d0378f8c2d6651ff29db11
Date: Tue, 03 Jun 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748983793
