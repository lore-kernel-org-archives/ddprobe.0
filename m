Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6561A4F21
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744816194; cv=none; b=lueVy2sPsBDsJI6KTDSkpqWxo05dbv3oCLvol66hth3Q9oyJ/8RUkfqhtw9OVdDO+pMa7WpKjaJ05kZJCZTlwRNft2u93dyGKNCCS7gwnyPMfdkTnrQx3eN+m4S0gbtj5R1AAvmddN7sOmxOJ1JwbaF5B/M+mhz2k1zBLeYM9ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744816194; c=relaxed/simple;
	bh=Nhqz+czRMZmj7PyxFrlJ0Z8XJR1USeF+yJwasKywkBM=;
	h=To:Subject:From:Message-Id:Date; b=iA6sRzeBUwGaVsuA8Z3nWt+yVFpIZhMt78CGqtcTlRIC99osjuQK1R6vM8KXVRENRmkY7wUZxn0qKfctsndz0OXMKr/mBs07af+ea9MUYyR2qaK5fMtno2IWN3ofLQH4J3BtmXHKH+bvPe4ImIZO8ihXXZd1ARn7K+6U6SyxEOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lXz5rBpi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lXz5rBpi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B36C2C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744816193;
	bh=Nhqz+czRMZmj7PyxFrlJ0Z8XJR1USeF+yJwasKywkBM=;
	h=To:Subject:From:Date:From;
	b=lXz5rBpiRLAx6axFZBbOyE2CYqV2uGygPjQDlSOLOeYFbV9WgoobHIS1SMb+/QsKQ
	 +jlQCZho8qVnHMZmUpFPq7um7zKGnWZCRUxYlMO6hCXx+f8S8A8Eq1KRWki1W4gVEX
	 DK2elVktF9gj2nWXcpIAOnos/WazQtvMXbIQHm6x3gRXCXNv/Nb4DQ3zD3JWdRc6rw
	 g0R4cQFOffbU1mOSYyoslJm2hDi50gUVM/pfJPgLfYKG82kXxcBnGil/56tG8poG9C
	 nMH3EOqCUbn2d0fS1VDt/pFkBJcWFmYpQxEby8sO+hGwDkwkdoDhi8DifVgBOuvA0M
	 2SN0hwgqhKdnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0ECC369C2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174481619362.29961.4337390855163700208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9801332697f3775c2a8a8c6b2935acc32b2b9dc66e5a9863adac6318c6d36956
Date: Wed, 16 Apr 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744816193
