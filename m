Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3959328466A
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744709394; cv=none; b=D42Ka7cIjg/u8ogI2nrKwFdW1l6+99jz0J7jAVlgLOEydlHslKKex+xjTS/39oYB7KpAKN0MN00OOiiZ4Vi1Javbe3yw6Y8f3iXrB4+k2hzK5KztBvdXTjYnK6tZ8sDYCrxaXTQFrbXawMD+fQrEKHnfCjHnZzR8sYMx+hTAmwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744709394; c=relaxed/simple;
	bh=Tov7z0W+4FeN5TVQ0f+Ol3DQSRKgr85aKt+TGaP6uvY=;
	h=To:Subject:From:Message-Id:Date; b=WHHQG3SCI0qG/RjPdwmT6HA7/Phn2B/9QF0cLFqYeCdmTOHivN0JlI53XnWnyzHxi3isuivdqk+ffsnU16dre2Js5fqbj4Dv+G9j24qVe61ZZ66H8MKqXgCZE+LLNg0u4s03pEPbTcEJZdkFcEuLXC5mpwEhaJkYnpyHdY5MShE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYtQvXup; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYtQvXup"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7C2C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744709393;
	bh=Tov7z0W+4FeN5TVQ0f+Ol3DQSRKgr85aKt+TGaP6uvY=;
	h=To:Subject:From:Date:From;
	b=AYtQvXupu3aTPJ/L8JrUku7uyUIhkHVWlOo6d9gJfUhLCK+Pu9VV5UPNg1wkIirUG
	 /E819h3MGjKU9DKvguKY964km0KieX4+0gmXgK97YyJ1mxO4z9RR7grxOz+ugSD+RE
	 S+Qf+r9O7q0eyZWbO7BR1YyQdZXQ3fNgbW7Ah6IvTY7rlDgHUFb9iEHB6SaqjPmmTe
	 O+f/6wflmSA7m30BNEr349BI2vlSGeZBXYRhtFzmSQQj75tMVyy5N0/lEwGFspYnrS
	 Qc3BVBjb3+7dloxV+oSC7yev34tZrm5gN2y9hoRym8AKh4avieYZL8505JsTAJnMoj
	 48pwda8T1tyBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904E0C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174470939358.5743.16477681971791575735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f879c8a81a3bef380ecd172557189747b8c7bd652098352e2ebc71cc7db7e2f2
Date: Tue, 15 Apr 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744709393
