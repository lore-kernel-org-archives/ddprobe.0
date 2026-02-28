Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6E61E9919
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772241294; cv=none; b=DWIeXjp1fuxKYZ6iSgPFfKoO9oHWKY1cb7yzKRSutUs8uoEAdUDeA+F5+mTTLAPz1tRaedDlFuOdwb4blpXPnYkBV0ory0vLPnZpdUh4Q1vKhJvg5s9AFNbhCPiPCDsRPyAQv/v746iWXo8qfC5alBlstThFWG8LrDegeEFDHAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772241294; c=relaxed/simple;
	bh=2bkQJNgJIMyPMyKckQbyaGR2TVSeajwfgeAsZxVKjcs=;
	h=To:Subject:From:Message-Id:Date; b=FQwg5zV4ZfQWU3Wgol8IEyRIHMo8oUswk2rAr4NzUG0su+JcJVs5TJ5H9M26V8zo6USwZiPVuZ3prW7huN9Xjv5EjKg3+fX3ZZhOrtFXZi7i8gXkLnJkT6wflt4+Nr14aX3NHCMLpjBFze9aScz1+Gkay3nEdMkE9wrJCbYKru0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mn3L/vSc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mn3L/vSc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DD6C116C6
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772241293;
	bh=2bkQJNgJIMyPMyKckQbyaGR2TVSeajwfgeAsZxVKjcs=;
	h=To:Subject:From:Date:From;
	b=Mn3L/vScBPAzis32crrXDkng8arDh0LqoeqqMuDafYqRGxU7AfNdN2gUXW7XzAmcm
	 rxNGFHRObVfTR98U47OgaLh15w58HBD+bOUBgdNPYfBs2F6PwCIktqxHh1r0ns5vjV
	 K7MM8MkvbZGAWL1d7zfzmLtfTb1svMyALKFW7icm78buK2g7bS/Tbb+9L0p3zAVvdo
	 EO6rMb1dxNxF/BfzxuJTDoOC/zRgdSQCr3K9e4F8ueR/yw31Ie+wuJ4VfMw0NF+LGz
	 wzExHrBGvIkrmfkeZR06T4DAss7TEcjigAj3GqWVejsbH0WKTxzv5eFKeW9sC9b2tm
	 mKs64QeaU6MiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994551048924
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177224129362.3922.2409110716934049964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 794390e1169ff8e9bbfc035618b0f8b1efe38080a9a75dfbf8bcd260964e5353
Date: Sat, 28 Feb 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772241293
