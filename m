Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8C1E48F854
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792053634; cv=none; b=EFxe7PcWofeuRhcARg0dbhtWH3Iw+Iw/2E3bkBtlFzhV4FIjZQak8efbQVMQj0t99hIpr4AtLHFYRaIYEc7EBCNbJUcW80YZ0JYdnoJjKSXihuOkxuiSGze5jaXTnxtiaeAt31jWs9Ci06o2Aml9yqtBLKUeR/EcQh5sAcgh9jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792053634; c=relaxed/simple;
	bh=6JCIHKOgRTvhBCAx49XQWXYeEEfpUj5/Qk/fYIT3Zxo=;
	h=To:Subject:From:Message-Id:Date; b=RRn76SuYJ6E3gIhi7pmUaO3A3XtH/irYFax2c6OnJETFTK6Hk/lEL/41KbjqhOroKWHH+oJ3DohDPn7iePYF7hiA9LRa2GYppTF6BkbHbtQeoc3eQoW6kpMAnKRDkvPVF3lIBqcDRSkjLxiA1AuYmZz3IZZTh1b6OQQsjQyJRa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=huiLYY36; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="huiLYY36"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD258C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792053633;
	bh=6JCIHKOgRTvhBCAx49XQWXYeEEfpUj5/Qk/fYIT3Zxo=;
	h=To:Subject:From:Date:From;
	b=huiLYY36dm5nmiW+dTyz9IFHJeF11nY+RjlLISi1nOeeLZlMsq5yiae+k6Vr3hgQK
	 phdjN63UNTgodHL5KQtzvdxyvZWRCyxp6Yl1bpHGdLwVHjjKY+D/pLfob4+POUa7mg
	 5XJgVzKmLmNZx2H8uahChhWAIsh9Zl0ONpzgvYKpBaQghPoMtSbIkBY5EIPaHyEJ9c
	 0v8+L41CqoM49sLpTJ/o6k5lmSqWKEdx8VecP7wbSeHpz24MzdHSd6fMgSu0ZMgsrW
	 fxLwr9LgOSZ2typmcgnJcbbDdfUgwgd//v32IdvQapMQF8inhmXIUA3ukCWsrkNSaz
	 voyQEAsg878BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC4DCC6B2F
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179205363368.22686.14987000558805808120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7af6f34c9ee92f81b6c289d82d07bcb962352017a78603847776d10bc3f86ee7
Date: Thu, 15 Oct 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792053633
