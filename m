Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D390331A76
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 23:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778023054; cv=none; b=cecbsHHpIJUCYkUad/cay06icXBTG/029uQ0VmClQhjjwM/Yo7teBByuUa9sN4YQqCw66I54AFQvkhwonuKrG835hcrBTjaBSisD2cIrX00/VKhN4dh+UQ3PppAQU6dTl6sd8QIXXAaeaE0sxCWJ6T1nvm5B+R/aUKz0lVmNpjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778023054; c=relaxed/simple;
	bh=VkYtQD9tSLjs8I4+nDumScejBe/r/mVNdAmWMpEPKgw=;
	h=To:Subject:From:Message-Id:Date; b=UubhX1ro9ZaTKR7l7+O/PpHhHeEwQqQ3KDwj0gYFxoGV386Rby0N/8hal4/2F6vLAroQhWr1NqKpcLj6kCd2TfBxeNzzMFOWO5yl9jLv/m/c3X4e65EScGvdMn+iqn0tooNr8qBgTLbhLX8YHA3EJMYSdqN+0mMwAAR1LPZ8zo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sWRUGr+C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sWRUGr+C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA811C2BCC9
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 23:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778023053;
	bh=VkYtQD9tSLjs8I4+nDumScejBe/r/mVNdAmWMpEPKgw=;
	h=To:Subject:From:Date:From;
	b=sWRUGr+C1djhEbZqnpBnbBcU3ifvCHRarUPLH+TqfPS8kd27aT93kT3y8nJfP331g
	 JEju7mcQdzDvGcDMUeSMf5hPchtqLhpHyM/0VNhJ0AdkhxbBvjsdpXkXvahleX0bqp
	 CkUgouxlkmJFFUOCqBTcBRxyehi5VHCWARwY4S7ZioxrX3aErXSZ3IL+EzmkYnxZF5
	 UxW7XR5BqDpPJEkRZG/A4T5htJe0Wo07mCmLm8fnvQvyfW4peYxDzIQUMoJ13f0DCc
	 N1UqFTMQ5+TSyCAmf6RorMGMeRkNQmHockEQuJ/t+sq3hA9t4V4PekmH7zvnaX1njj
	 epWD3JtzPYg1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA60FF8855
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 23:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177802305369.16210.2534681791986874306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9b0bed852d2b83b12afbe209aa24a85b85b6a6232569298bc6da1f290b84438
Date: Tue, 05 May 2026 23:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778023053
