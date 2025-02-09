Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9360514B08A
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 23:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739144154; cv=none; b=oFl7wkNfpCiaK56DyIMj6vfwTQJBAlCLMGBf1hKSy0ww2T86imyeJsONGNUjmJzY9wPillPMAC9E8WACY0Qvnt322Ipen6MqzQGrn0pZVljWaFXgl7ucqCnegbwbkYuYg66niitliWtKAEe4ISoDMdBeCaBKwd609iq5nPyvR8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739144154; c=relaxed/simple;
	bh=Tx1fPRDsubgKjWwpAMrEgsrNlQY0712Y3NDIWjh9194=;
	h=To:Subject:From:Message-Id:Date; b=jDHv+F5tevG6UWJh+kH28SmqmT1hK4XKyHD+8h2vYDDIPg/VM9jqWbc4lTe+sllDwMdT5lHgCJmYmodFUdWt14oOs56JxoqUvdYTGTAkVJZ3q555G3RW7EEW9BmC9ZkZVrm2JEPuhrPdr6Q7mYFDJOfpTE3RbwAEYdvHhIeGtl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u0oKyydX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u0oKyydX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0FCB9C4CEE2
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 23:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739144154;
	bh=Tx1fPRDsubgKjWwpAMrEgsrNlQY0712Y3NDIWjh9194=;
	h=To:Subject:From:Date:From;
	b=u0oKyydXQArINmiH3DK7EGLtqsJQKm2OmP2yqJ8276hXZRSyjh5l9fQ3TBeVmEaw9
	 4PRtyMnDHyi6iWKc9Dbu9hkc3lAH9Vej51a5iiAlKscLKRZX0zz3BP6xlVvRrnL73K
	 FXfvJnwFCoQhYX/OjuKVHGcpoTs5ANq7K/PgS+bz9lsXMfjF7FgJQH+u+/zhBDaIls
	 6JVt5CHYqeSiaotQTnRfUSqDQLuLhmKpEH0pv6vFWQGPUEPQDws1U3gDSw4ytHQ/3Q
	 vHudPpEUN8pryOtenBKoZqS+61CNaABmLtEP2vyEDHTIfVukXAg9T97fOftYx4QeWa
	 Fk2k5fMX+zkfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBFA5C0219D
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173914415384.20265.895643759083489119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99cea4f14dfb0661c5a2eb70ecd889292e3c22e74701d04b346b43de241d05d6
Date: Sun, 09 Feb 2025 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739144153
