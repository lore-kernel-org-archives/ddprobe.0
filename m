Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198B6242D80
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754219994; cv=none; b=k3d9wKboZzUYlN+7J2UQwifpHvqOd0U/cKiSbOaIoAegmIby4uOfr9su1uyZiwlfslH+6nsPNvSv7Juo3iwMRAIpILEf6bfp6sJTFKm7abWLldvzCDJZOr1RwyDWVx6A78pYzbMTpU8QjSafIFeuG6TJsaFhl2sfLljr0LTPMKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754219994; c=relaxed/simple;
	bh=suIJQZtyhWKmDpy5mPFTQAgKwEwGasRHndwl0imNQm4=;
	h=To:Subject:From:Message-Id:Date; b=qQIZVFfzok5PCbU9pZqrc3F9235ZW49uvRZiPMx7LJmrevXXi1ddR4O2oITHk2zkJpvzctOqLq7t/69QqQ019YUlg8UDAVMxllQRHQq9pj0tlVVzhWj6Ad1JpeFGYlHlHu+jctLoj2uMR3kiomTaVgoNmH3NSMUjFB2I0Ge4ZYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fG8mvTbs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fG8mvTbs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51C0C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754219993;
	bh=suIJQZtyhWKmDpy5mPFTQAgKwEwGasRHndwl0imNQm4=;
	h=To:Subject:From:Date:From;
	b=fG8mvTbsp2Gliysfp5uW4MRolPyZ9pGYRc7ZcEoh9O8LhV3S0dB4QJ56kkLgf4ScZ
	 8zU82npo1dRpYabf7LrjdFptM3hrvYYVMB8HdD1K7sVi0NhdXOcElxaUsHKHqd/6oM
	 D8Wks8sh2N04d6tTFbft5lRCoyDOwL86S3CaG60jxUZo/oQtPpf3601PSFNr9ECd3R
	 Ps6ixI5dqeCf2zqWVIcBqEu628wYBmPnZLMGBaKCj5CrTUVu1NjUOtNYWI2pyMU3CG
	 r/kE6pywGBl546RH49I++UbC3qWVV3rgGKLIlo6oxSqWJmluzSwngwDkx6kPitKFVc
	 2vWHOtKDPXrLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EA4C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175421999357.2501.8780586086221799011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 405cf4304e96aec40af1f8ae10f190637933d137f9b34ea82355b9b307c6bcf5
Date: Sun, 03 Aug 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754219993
