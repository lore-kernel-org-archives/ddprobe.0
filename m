Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F627140E5F
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728328554; cv=none; b=uuFz0tXbsVEIUVFVf3oxk0Wh2/ZeDByUe+ksR+hv1jYOWurjcAPNqNzXgHEai4Y0VXXAe7pwlcFnN9zFqG4dyXQjubylm9yK9ZoDJk37nQTJMw8apErFQU6R3VAy3rI8QACR9XRM858eu7T0xFr2GTOrBAAwmIiQI80PJkAzQ5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728328554; c=relaxed/simple;
	bh=45lEb1fqnh/yiut9gMlEHmKEUoemjtBXGwNQ+Ruhjj8=;
	h=To:Subject:From:Message-Id:Date; b=uyj3IRM2Ov+d5kl7y223tzPRRN1eI675sbELrymj6h3kv96VZ8jEuMmMCiczwOw9aXDA9tc8F6aOmIVlZOpR/kBA4LhSDZEbI5XANKnHb4gGWhLLxyBk+2/tfxsRx0rNtypY20y9+iuGAGKtO+KzyUdoD4QlDJaeZ7bjNg6vs5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j6CSjlpN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j6CSjlpN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA596C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728328553;
	bh=45lEb1fqnh/yiut9gMlEHmKEUoemjtBXGwNQ+Ruhjj8=;
	h=To:Subject:From:Date:From;
	b=j6CSjlpNcrVHKG3BfXnsu9Z06tNUsyMgOnhNYET5XBYuIMwK6gQxLvo6O9yXC5rJI
	 LO4tdR4aRaOXi1U6uN7Ny7MeAylp0nq5dTyOWi3WUBPWS14W0fckxthaF+Y4MIlegf
	 mJWkLg95/EHITxq8HTUMzwJV3pfgsJIrcuAD5PTFDi6u3X86M0mQFdY8gpuGo84yEY
	 zUl0gmEAXdA5yAcNetHcEbweuCGM9u33fv2uf71URsR16S9gbLfbdJ95p273gztMMN
	 SzhWWgAH+vpbm1VBXYFh1cMVOEeJQSEdmZIoXz4fOuQuUtu85QejJ0QGtHWyoZwdOf
	 N7OtPjAXAMNbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EC8CFB455
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172832855359.20099.5105592424010837072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d772a9d07db1ed43a6e69310973d0620629afe149e29b4fae9a2c564285dd08a
Date: Mon, 07 Oct 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728328553
