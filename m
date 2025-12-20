Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A451B81CA
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766235834; cv=none; b=DN8WbczsgrPDp4qQQ2ZCd6ygXYKaTKCzKRjSX6KypBhr2TvYFH2xGz78yMoeu+tBe59npLFixl3q3ejx3/12dhPJeMOFrxKJKyUrYNCplfY6jr/yO0wdEYYqqkNkrezCfh6My0v75vTIThbTHRE2zCe6g4NSgGZRDP5zwQOcGcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766235834; c=relaxed/simple;
	bh=n/X3qGmLgwJXqfle7Fx7Q7/eg+WL6BootUErlHHAoKc=;
	h=To:Subject:From:Message-Id:Date; b=Itg/UjtbZ27pNrfB1NfrkFvizee7TEqM1P/iPueF2AATBv1FMrBLm/+a4apQjBwm1dTT7Bj6zTr3Omf22jDNnDGWBXE+6t3UwN062+R8oRnSfAO7z+x979Gve9XAs/dWKMpKC4djn6B2iEscT6z5Twu5E7zhW4LJLRTg3Z51vFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jSVQe+SR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jSVQe+SR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FA2C116B1
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766235833;
	bh=n/X3qGmLgwJXqfle7Fx7Q7/eg+WL6BootUErlHHAoKc=;
	h=To:Subject:From:Date:From;
	b=jSVQe+SRau76OC2tVI/G3IJ17QJ+9eHdRXpuZFxlcR673bdnFayT4DXFiX8XZOkpV
	 EyIszHHzd+FjDNxc5CjPPlYzXniFUH8uoVnmyV9YzNb+/aOPg43y/Bi7FZ+/37SOTn
	 ER6aDniY4q/ZbQBq+Tt94eHGVWDDWHCcSvk1WJ5t8uTiKfHgO9iIK9vSxuna4XZiWD
	 Q4MFptWkwKpjXMxbHgGkinZQcu4zmIo3U8ss6zOLkYldkKl8IBETKhwCSP7gN4veCI
	 YZJ2C2kV0cTQCm8kipuQdD71GDlbbhwUNN+felfR+ltXQ29zonk6Mz2H7d9sKf0edk
	 tFnVX0/KVZEXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DB5D78797
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176623583358.20957.7277686453848176376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fbb74eb3d9501373d0884df39b55a187d7e0095c664384fe21ef547f07cca73
Date: Sat, 20 Dec 2025 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766235833
