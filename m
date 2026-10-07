Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2587835C6BB
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791349834; cv=none; b=iNNRdMoummIFM6guBwypMXfIaacuqCin9j2lM2cRHxnL1xxvhDFLJj7exDFYLCMIsPdjjdL0ICC6WNZwrE0SDEZN3zP2UdrJgzVdMpAAYr7IB6msXUaLpH02rAdO82oH9mooouyDrNoUJ2+kvJT/fP8h33TK28/IrFHvOn/HvH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791349834; c=relaxed/simple;
	bh=TeTyYuk3YC3p6MUI24MjPvEeQDVIvWTllg6DbuADkTI=;
	h=To:Subject:From:Message-Id:Date; b=ADbbxtxv5lZoZFPZftMrZKGhNUUVxsmYMLZoZx2Kbx1OmN2elJo3K/KsjJ/Snm3pfo5jnJBY3Pa1d/MNGylfkGhU1MTd0n/uJStgXawFd5Z97LuX/7DHcJCydLgWgesnnTx1PWbPcoxzPP0I+15HBMOgLF7hJHEr/nqTGZsvV8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UwbU/gQd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UwbU/gQd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4F26C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791349833;
	bh=TeTyYuk3YC3p6MUI24MjPvEeQDVIvWTllg6DbuADkTI=;
	h=To:Subject:From:Date:From;
	b=UwbU/gQdyqkaAHVJu6+9vodQOfwQMQtcmPvWTHkbjjmX4aNROjCt/LKHvPaxzqXdq
	 vSYwpasTrvbfmvhKNOKmkvDJLSTRHiDWZJDPe4cS0x68yFHWAeslXJjsWp+EQtnxNj
	 xZGOV+CrfUzXN6JNc1z3f3izwhBA9R01bn00aiOpuekLH2h5TqBzF4az23og3Sd+fR
	 pye19FQUyXfgzcy4DX8QBJlH0q1+qroJZbLE2on3AkP8zrvThbRTDPfkuTiYVO4yZq
	 U98AMaASQDEy2Ldw10YNRAOvSdQgoc6RKwxnzCByzx4ZPLyBFoGfnsBf/xr58nE7Yo
	 xrOEW+8LUazaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC975CA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179134983368.19449.17619038646941167222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b6fa536dffbb1e2ed6f9d738d7624488cd9c03f83399a567d875a52c33003dd
Date: Wed, 07 Oct 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791349833
