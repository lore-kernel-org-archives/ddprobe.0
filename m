Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16FA7161
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726023354; cv=none; b=dOwsq3Ns/1GED+H7hrFT7DCb6FP92VfZUARTKCs19m6YyfW+3wKzCMxoWCLIFxGuFsXrtW2OL8xQ7tZOVy4ffYBjB9C5KpchcCO0oBcb0CzRAanSkbuD/Tjzq/yXGRRhNGnsKAPaCoy20u3T192YB47B+vfyBpIbVsWWOPV6JH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726023354; c=relaxed/simple;
	bh=6tvyGGreoQDAUthhkZe/DA3aGAlojsauIMmEGKwbpFI=;
	h=To:Subject:From:Message-Id:Date; b=LbQV0Kpt8cTu+UuKSAB90jOWHSQBu6d0w7Q3jllls08dEO/Mo75yAd2zXxWCXbHl+j9hWBD8a60B6bNLZiOupzaGLt6MnAPWeIY5cf5EVxCVwB+FII1f4t7fajCGElwRQhT3Q8Ka6JnLoLrfRKgBbdkc0HcW0+d3kz7cHLI2ji8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYPA5vPz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYPA5vPz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5925C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726023353;
	bh=6tvyGGreoQDAUthhkZe/DA3aGAlojsauIMmEGKwbpFI=;
	h=To:Subject:From:Date:From;
	b=qYPA5vPznGuQjlADZLyRc9RsVj325jz2lN05IXDM/coKHh7XuwRFN80swVK3hV/81
	 N5EQKtT1OQCP7lcGbHbN8kjEjtwcdLKN8Rcjs9bfH9J5C0Wwjit/SEbXoYdArcK3Dy
	 GhWO28l4Kn+Z1aNY2i6aaPdWjVvY4KP7fo7n1tphgVVmXLGIc8Ny5dkoa8r3iQynIi
	 bLxhgpKVCN0yMz4g9kUAJlC/VRtRnWt1EFMHtRYtM8FHUtrquwMpM0U56TajoA1EES
	 /sB1doSfpcWtwr6/KlWd/RRx0ZPFN7Smxl5PahXML5Uaax4/JtkdRfM0WxPGg+FmJ+
	 YznFaOlPxyk6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953DFEE01FE
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172602335360.3655.9718441516845000456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbc9caf815af9e64c7c32cd47eef081ea7ce691de9da023e46949c37b3ea882f
Date: Wed, 11 Sep 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726023353
