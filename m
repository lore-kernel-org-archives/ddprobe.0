Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6B7DF49
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749681594; cv=none; b=A+UKKtwEex7vGchD6X98C82GyMTFdpeoNcbEMbioUwB85mFyVEZhbgmBHkUYwn5eIy2dLf5mnesVIM4KYO90twDcKLcrwLatEv4xhV3UMI2kjrL4zL3RVeTTuBYCD4xEkUBXiYZRw0S9i5/mesq9N0AALXKW77lvfVXH8aTosLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749681594; c=relaxed/simple;
	bh=Il6ZD6sumhau1lOr/yM7wZ1vuDXxXdOCetrOFbJkWV8=;
	h=To:Subject:From:Message-Id:Date; b=ML2hDiDXSOZbJbW+RFXtgeum5iC9kQDIDW8zZ2ghWs11EPvWEFW2A3SO1ExLed9g8fkKrsY957oAmMQ7FbqwEqykP+bSWsuedtVhM8fYf63eJHhDnqOcFi+U8fHrsNwAZ5H99JYPUjtVhUv+AvvWjFmb5h/Y2xJibEoU+9p5KWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a98Fjgpy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a98Fjgpy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1636C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749681593;
	bh=Il6ZD6sumhau1lOr/yM7wZ1vuDXxXdOCetrOFbJkWV8=;
	h=To:Subject:From:Date:From;
	b=a98Fjgpy23X3zp6nUx0RVHZlGcA2TqkANTjDYIqZV3cCCGdGiiNn4S3uHbCueW+eQ
	 1Y/er1S4p2bWvGs/FFLXxRxNoLv9EPM2MxENGKFRn/ffGdf6gJS1+Wj4DQBtiJVKZK
	 zGR1yRSY+i7ehQ5KVgCNl9Z3M1Fvu390JR4xFwMpCWt567RFxZ/mhRZlK3txXarYP6
	 vg0+bPNk5vRyJxqtrZs4XNTMx0k7eTJ0yjCut/HpntwPnIds3WL/MhctLKIXJUp6OI
	 DEgVYZmh9qfofWRmd89drrMg1GoLJ9c32SHVDWed2igcueLpC7KhJwXUjgFY3IgGmc
	 GJfn03mAxtVgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F699C71135
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174968159357.10996.13711094711548287241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98b623dd8f038c22607ebb1e9904b793a588842b63fb48f59c9a6860a0e67f30
Date: Wed, 11 Jun 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749681593
