Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9B87A13A
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745692195; cv=none; b=Xtzla/NOgG7Ue9TbuU9kvu4C6k/swy7NYMzsFuH9cKTAEoCLpfJ6CdQPw0hgqCsTOkdwRoQ4mI2NbPl1c3jgog68OmsiRcWm50iN65/7MMubxixBtUtwIIA+DjWToFgc+cb/T1JWrZLfaCVt0bFSeOmv9g5Ro6Hh78Od7yh/j14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745692195; c=relaxed/simple;
	bh=2Al05T2hjurW528zl+6KuIlvxW6dsfDwKU/E5pgWlaQ=;
	h=To:Subject:From:Message-Id:Date; b=ILgDn4QFIuYAUljKSvwQt0r/lkoG0WmkEhbEMElQ6NOq+SmC+AsbI20fmWUjtidgtkOUnj72Y02vklHKiID98e+t1NkcpeVtwPBqr1gVikiUmvUXM81p4gIstKxdgRARW+uFLLe2L6shXt2AwsC7jM2pYAMQe+jHbyrHdXAazt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCc7PCgz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCc7PCgz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDDDC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745692193;
	bh=2Al05T2hjurW528zl+6KuIlvxW6dsfDwKU/E5pgWlaQ=;
	h=To:Subject:From:Date:From;
	b=DCc7PCgzHuAZ16kLQz4JnPR9OuYMHT4HxAmrQJ23cG8k1rPEPpbwhqajkznF5+tQe
	 j7bNZjw+XEhaOKlc57p+wv5VbbiaABCn9Iw2Y+olO+cFZktl7eIoaq4x7B4GM+sZHQ
	 embm6cpOWyQ5ng8sfVqSWSDkQ7BYkhdN5jkXOHedCyO03mrbdbx92J2/lHNGjUginE
	 Wh73Qp5rbDgT/hMwpwukP8t6Fhri4e0lEYGvyeGRP/l+el8IbNj5fvkqbNCGx3Speu
	 TTb7Sz/9PB4zj5woaVg/YlnMrZxErBf3CeeIxh8piFxEfoVymXaXNcCVmIp+lnmh+B
	 VOYJ/QR+CIhgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB95C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174569219358.15895.12246604022736742127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a5f46c89a582437ca07aef8d8f2ccd3f03088652c56efe470274b8ef669196c
Date: Sat, 26 Apr 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745692193
