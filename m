Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5942D3CEB9D
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790689834; cv=none; b=nVGkDiSD+M9ILyqBwAlfosCOI2lX8XyjbbysQzf1cyKYZ2RWq3fVGQAX29ZihK5AVQg1opKcNcIQry7R+AS5IDYMJOXVmrl6AhU8kaQ5s8BKK1mkAqQtGMTWGcnVFuIg4ZCxk5ZdJ+HYJo7RHtYgu1Nhw7rIJ+vkdb6S/mHidfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790689834; c=relaxed/simple;
	bh=msMa5JTHjhNaetdux6hAvVleE/o0yG4JsUbeqPrGaRk=;
	h=To:Subject:From:Message-Id:Date; b=IXbdtNAF57Oc0jzFKPPzX7bsVA+mGgwoPCweeuu4hoPn5vdXci/2rpgKqWNE948ymCXnslH9exYU8sE0BoCkqm9SS5GHTnK5QoZ5sA22lGo/Ru4ChxogRl8abL08GmJs55dclFMOfiapnJmVs6uuNY7sVQRZoSA2jFZkLQ8VQos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZYTuJ4RA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZYTuJ4RA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D001DC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790689833;
	bh=msMa5JTHjhNaetdux6hAvVleE/o0yG4JsUbeqPrGaRk=;
	h=To:Subject:From:Date:From;
	b=ZYTuJ4RAWgfV3aAgKzjle0HKtsy/i8exVk/iST2fRytRoXV0GcO8Brr6XE2UeOhF1
	 s8snvhq4HkVdkzO3lvNVbgLskAoMER8mZS1Slcvi65JtmoVGL5YNXCxXD+C6WxYh9J
	 xO68yYnxjGjdULIhJsD+3ajLqYGobCPQGhUNlWdjFK+kbXU1HWO3jaCdVYa7jSIIG8
	 8/IBqIrXRp370Tzqx4Y0EUa8iiVzbVRYemvY1efhAncY7hEwlq2PYdV+w+AsDtd2p/
	 NuB8tAFIw6ypWsFwDTT7EnRD0i2IyJa+Qs8o1Ap95EwkXjPAhpyn0/AZdO5v4YqfKv
	 tGLBYPPkqUQ2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB866C9832A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179068983369.22487.9919915361000959604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc70f047cffe2e4da9a3bf9dc67e5c558bc8e2f77997f2434e8349f68426f2d8
Date: Tue, 29 Sep 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790689833
