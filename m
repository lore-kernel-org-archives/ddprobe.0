Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FBDE522F
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 02:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744511994; cv=none; b=HzTJRb5HFvtgxN+xXvtB0Hk7iPrhCQ/OLFRzVaEx5keXMutisSCVlnNs8sxSwoAt1UQVG9NSAjP/eRIo6zU7xHRcfpuFLsfS0Ry+4O1XHsVO0W4VXJXWnOivKKQQTWOOunPVLsYsxuu0fPBedm4chrffiGFHKobDlxDv7jvzfVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744511994; c=relaxed/simple;
	bh=XL5nueZvnIfq0kuwnPpZ3zT5kgbCEzyI7MMJNrZRKgA=;
	h=To:Subject:From:Message-Id:Date; b=EyC4TFK4gEMBcf/4E33MwWRNt05/u2l6+LvjPXTmtM0zCzepbiTNTFrZwbeQFS0RSCblcVNiiFBSdGFwhsMiRm8qSzfd22eAPJjccw35Msihix1cx1ilEUInt1eApI779yuXsA2kewIjRw8FEunMdnyENgQ9+AyD4xni0Y5M8CI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3UFKfDY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3UFKfDY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADB9C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744511993;
	bh=XL5nueZvnIfq0kuwnPpZ3zT5kgbCEzyI7MMJNrZRKgA=;
	h=To:Subject:From:Date:From;
	b=Z3UFKfDYbD6xS/+bEaPrngsZQ+JAyvzuSG2IwBaChqnanUEbv2c0fDaN0OqhR6b/3
	 3f6z7jw/N6Cntua51X9bj8T2XcOpJ7MSRGKF9NUjiblq6tIEP6BzMkeoooH2ltuo3h
	 VyW4h8AoaLSBrSD71OV+3hCdl4Ne1pQjEflvUxbEerQV6LR0LqH/4vGJ07bqYgAEDo
	 KjUGEmSc0xoG0qxM2Eykr+uN3KJJDe6X0kXg1a6sZd4yCHAb57WKX41QXRaSd7fnu3
	 bwPqmaagpBXqcNrSfUTbpugrWykxKv2rShGA4rfml97xwSgqTdF0Q9QtteB6dWqQ5t
	 K1AEuYKBQaYKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB162C369AB
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174451199367.16045.10511576705185708390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc08919dae1b6f116e71f764d57a1f600929dab5f2cd11ff0d691b5a1f97701c
Date: Sun, 13 Apr 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744511993
