Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED0E16DEB0
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 00:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764894774; cv=none; b=J+Koiku77q5rKtstdHkh6Plg023+ZXnBElSi6lft19tJsbgeYrCMpUKbXl8TCEFA2JCDr93EXqcdBKgJQqBS2jvLlfJnk0CMc/DHd5Vh4WCHVAI+aDQPCNrIxCmYOUAn2IEBi36fgGEgFGF9VV+iXlyx0J9MBlDgW5DrpUL1Sb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764894774; c=relaxed/simple;
	bh=LGgOSg0H9KJ8bX2wTC6kMfTP2rsg2FjQ8/PdHEk7Hro=;
	h=To:Subject:From:Message-Id:Date; b=hkwRQcukJC/U2d5x1QTEyb+mVnugrUS+gJahPI7xfMkv0LxgtYgEFBeoDEJY3Gf5frIDhbRJLvvZaf2afy0lk+PnFTy3C9oEebaNiKsLvP50sGZFeQIS3aWYq6UbPqUHZbfxI/W01eJdOWhdZp+ZIIj/49HG/WeCvwK+E4dhung=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGXxdZdY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGXxdZdY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACF1C116C6
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 00:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764894773;
	bh=LGgOSg0H9KJ8bX2wTC6kMfTP2rsg2FjQ8/PdHEk7Hro=;
	h=To:Subject:From:Date:From;
	b=NGXxdZdYtlyp8hjynldHHdAE74KCwEqu0BGNgUXuWWOUEQrowJxblyfwe4wD8PgEk
	 TOh4Nu//KFu1SYcSc+LiMB9awsuhZXcKKRiVZOzgzq//j06XF/OkzNE6db774G3Csm
	 yTsi4tM3qZzN4zhkNhI42uAHRjwNcV6uk+R2UOn0DAyHCxihhOAmo+kWiVAVD6+sQt
	 1ivmRrnDes1lrFAP5rPOTnNxtB3C8ZGATubRZ0sptle3fUOwR5zVLaRQoW27uMqYY6
	 W6Ff+2/cLB91R3d7pFpcTB5exo+sdYPyzTk5FCEmNOTxTAXJZ8+hNNVS6nAhX7EVEX
	 /KHuwReJ0Te0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B06D2CDF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 00:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176489477358.29344.5176720058920003856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 892e869d78d050ecd54490a84cbf4fe8eeca163a3fa7389a0cb830d83d8d6dc4
Date: Fri, 05 Dec 2025 00:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764894773
