Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440421BDD3
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 20:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720987823; cv=none; b=FRcRyrTyvGU5RbTPMjcBZ1avSMuYLTbNw3mDuvHt+d+dk9YUJDfRjUqAFct+BGEcbhLzzLsLQnYIlct5FwwFWQsLExr/xyCxeVf/rNCYdg7OSzxP0BuVT45a+6jAv40azgAKTZLwwaPyXuKfDWMUna8SmeL2umGt8KiGziS0/S0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720987823; c=relaxed/simple;
	bh=Dtssj+62tLJaPPo0yQdRn31ZxFo8kOMuHl9YIMd0Sb4=;
	h=To:Subject:From:Message-Id:Date; b=j/glcEjjY+1bLsn07kzfUyaD48ivhIeCKM6B17yqabY02TEjyX/M9GPb8kQzshVY88swGfW4JKy/0a9kfcFzXljbSRk+XvmTqX61ej6pIDkh1M6xHZgRnpZt0tFfDNmdmwrPV2zqyjrTMz5UGn1o9weml0zF0vbbnT3LdSjYVLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s4z2EbEX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s4z2EbEX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6E8EC116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 20:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720987822;
	bh=Dtssj+62tLJaPPo0yQdRn31ZxFo8kOMuHl9YIMd0Sb4=;
	h=To:Subject:From:Date:From;
	b=s4z2EbEX8uww4HvJH5raljYJ0LArh4PWP94ypsGxSm2bDUlU2k6mSfDfYhUsZ6JFo
	 gJtUTzG6h4/QKyGf6WByM6fLRoV4ksp8ZbvXE4wcsizxT1An2VUs1oqawRhH2YLWVR
	 m30tYH+YrMK8UzwY/k9QxjDzQRBvCC10B4SFjY4kXYga/3cdKFO2x5Yv9t31QKykKH
	 Lg4Q2DL7Z6frjm0eyJ3FLxa5yDH/3eBNN867Az21enCfJUVfgEc46pNJ6kMtqKvEf1
	 tTyQykmOUaGneoFY+S4+HWmXRxxxSvEsj8zzPQHg36+CmUkaiVwprSGLrAO7GP7JaC
	 3tehm5dsVkS6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD50DC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 20:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172098782281.12499.9392631325959463742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e684dacc46902f3dc9a9550dc37b1c3e6c9b861ac0d52d8ff1bb9bfb428f7471
Date: Sun, 14 Jul 2024 20:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720987822
